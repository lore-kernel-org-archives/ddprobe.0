Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33764319871
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755219594; cv=none; b=gvwZV57eZPMbyGfR88gPDPPmp7t/qktXOHY3dtV9fF5yk/higSj00cqwVpiQzjAzsHmhRlptmfR6PJa4B+CGa3S8p5eUgcPNnf25+zQcHr68iZF6aDRX93EHmbZUjbN8rGxvQGuHZ7N5EQwQ+KG6a311nkegx0d9ByqbO5zAHtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755219594; c=relaxed/simple;
	bh=l4hPKP+cEUFm58ZoF8tTiwbmbkoj/vAKU35m7unvDlE=;
	h=To:Subject:From:Message-Id:Date; b=ZzA8CWbB70eFTENQza3y+RL/c3OheSjEg2jz0VHUkA9bb99fXfe+u8ToqHa/9hKZWIEA+0aQuSIgPQs3KgCbZbPcP32D+uDwvzk4KWk9f++C+kq5Rez9ZTiWyiLHn8Hden7wSfcNy8l4t1u8ieQz2KpbmuueJDJHxkieCHdssXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmzDiD/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmzDiD/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0523C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755219593;
	bh=l4hPKP+cEUFm58ZoF8tTiwbmbkoj/vAKU35m7unvDlE=;
	h=To:Subject:From:Date:From;
	b=SmzDiD/15BPHDE3eQhVkcd/0vxYeM6LLPLilBBcKKY0bTZmdJ9R4341MAHjxrbhDe
	 xOxb0zPf4NX9Rd7tRIoHRkh+wuXPk+wwmYWLOP15B3vja02Axc7ybK5Bzw7x0ng8yD
	 VEisFQvzhhOU3m6eiMKwU5g+pfRSgLYshKJSBPVeHnm/RJGxGOz3Cc80ktxhFre374
	 zQzOjM1U3S0J9GBtcOD27JVNufXz6Yo2q8/Cl5QdD8LJEH8lwkieb4c7PdMuahSJqF
	 FFWxxGI8M0M4VR0yTG31h1j1VBFTlnC/CM6U5//i1y7OqLW272ipzRMxnWLFH3tLgx
	 nkCOurjn/cuzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED21CA0EDC
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175521959357.19464.13809824533536896211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf854335738f6df867d861128425beed14395e04b0377095db369a769472667
Date: Fri, 15 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755219593
