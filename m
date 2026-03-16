Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0B0349B02
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773645894; cv=none; b=kWcoApJoGOtsHNa9lO+8wW7U5oloYg9nGij8Lt9tLIIjcn0nR9yp8zuhda7/NbIxossOsG+PcSORKBc925PwCMFS6CxThIsRR8btf7E1jxGAiw6Kqu1RE0WZ22VnSYt61gG+9s0vJEqYyio7Aea9LRDiqLZWnosG+3L5TKt+uDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773645894; c=relaxed/simple;
	bh=uT+U3RT8ctuNBwBE6T68I5/Bi/oqAyEfQw0e+aYEsjc=;
	h=To:Subject:From:Message-Id:Date; b=nqd7B91JpFJ+kZ0RJkJ/nV0NZCL646vmah6/mlfzeIrBDUD4RAAaCoYmZUnPVyL4R6F03Jjies9q0fY+s9KJkkuYljeJ96dAtzVqXr4G5j601m8N98pk1/JxEVuvPw62KBkM2+TBoiZUK/VcrxLiod2Rat55H1Lj8q/2V9QjsVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gr0Fh0if; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gr0Fh0if"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DDCC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773645893;
	bh=uT+U3RT8ctuNBwBE6T68I5/Bi/oqAyEfQw0e+aYEsjc=;
	h=To:Subject:From:Date:From;
	b=gr0Fh0ifuiDANlSWSQK5RLraZjgI0PQPiWDkcfFZGz/CqKRQvS1bKgLZo3mNJejp1
	 AYeS1g4Dq8ukuPUPD21v7Br/FQXeZ6gDt+xHiEzj5KRrk/Z4YxaPgEPshONs6KKEYy
	 Z9zpOHbe5G3pXbKKZ7Vj5STXibCAZxvmYSM11YdUwdP1iekZvuju8q9AdqaH4YfoJC
	 r0orkplmy7i8VAuEZm8z3nGBtWngKKs3Q4bwns75FI6aPE1aym9HxasNeZrS06L5er
	 ZzaMpHM3jk/Gyo+CfipER5gXNoq/zZagqGDzz3ThP62ZiiM8zAi4f1x3oXDc+bCP02
	 dyL7LQo0TVLxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966ADEFCBDD
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177364589360.12718.7419785037359994484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78b0ab5d5492809ca2a78c2c42cd0db39d47235b5be51ee7cc741a3ff7439b6
Date: Mon, 16 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773645893
