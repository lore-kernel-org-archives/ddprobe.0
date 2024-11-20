Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC6AA939
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732067154; cv=none; b=Zf+fmFdVXrR53sTUKIGrm9Coky7Qw33JK47ptLHiM3BQgP/8t9ZQVzeRZUTIi6k3oYp+5joHEygsZLsCuTdWqkykXfsMnRzcmjHP3d92RiW6CFI0eX81CAij7vCWGkvjuj5eQeGkAJegMcO85hKBmiF87an5L57+kbZ6ylvPcWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732067154; c=relaxed/simple;
	bh=MXiq/K6+bjIaH07LLi6hsDfFAHhrvFiuaXvzC4AYkkQ=;
	h=To:Subject:From:Message-Id:Date; b=kvJWBk4f1ZpvqsPaWDv5fnj0k3Ys1pQvf109+6WEGKyFq9yc9443GAPN4H3G4XLltD+D6erZhQ72zVwXh2ndqWisxhfAEvwS4raCWUjL3apD10LrIJTUuABBvvsqOWxhRylnQX+yZh2CRP24Nqz8kihIplURmhoJfcBiroS2bLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQ15kGd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQ15kGd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CB5C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732067153;
	bh=MXiq/K6+bjIaH07LLi6hsDfFAHhrvFiuaXvzC4AYkkQ=;
	h=To:Subject:From:Date:From;
	b=uQ15kGd5C7OfZgEAgxEfeS5JMgpy2RHbqVYXHuzKRs4R+5EInHuDJOTRjnuMviW0X
	 zVJg6URS6JqPc04Yw8YKwLiTEkJLajtX2zWudE23bYhCtR1BM25HISRkEMYx2EowtQ
	 EOsEf+mdTH3blyHQpGHdG5dxGDYsXvmZVcgrLLtwXc4u3M1rAjBH+YpxRqTFg1gisb
	 sTTlywvXuxPidNMDTDNHjnVqLDHKl2kThKhGm244jgRWTSCxBlVxEY+t//6A/sTC2j
	 7YfOl5jcOrrrjr+qsR0ukA8X6xSwGGg3PBGs+5oHFM9V9xqJl/k1mPmmtx9W0rvmYm
	 +tpoY9IvYU0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BE8D6C2BC
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173206715361.5806.810358254396077667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6c141327d17ae641ced2bd45388dd94216f23e719b36809199ea42a06de6de
Date: Wed, 20 Nov 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732067153
