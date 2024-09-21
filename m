Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D8D44C6F
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726944354; cv=none; b=qlCvwxAF/iK32S70yICDjJNnyssBtgqMEqQvHSAzZT47r4PUsSr8+htNtBPf/D2cnQCHYjHSz96tsLJFnXD6/BPXlgayfwCgQVc1waLEzlIaRBNS5Qo40jD6bPbnu8o2MKWtkSfXne1ZeTloDf887UZBS3EJ3w5EVCtgygXXBhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726944354; c=relaxed/simple;
	bh=gx3clz9ByAjYsM6opZGa1cqKiIRI7rU/+wxdKzuOnGY=;
	h=To:Subject:From:Message-Id:Date; b=dqwMzsPZ/VWpLSyHRVWvoB759GSYW/2GRmEBedb7iayobyogNtXvqZsmWj+IzBzDReIB8HBycYgjO2JIrQmaceFtuvUCs3y3m9QL+eFPqcmrdRCrw61Be282k+D4zJy53vMcSW9tRUHItHDCrgPCKJ9zZb5sudheye1wXNHF2Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsgApjxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsgApjxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD687C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726944353;
	bh=gx3clz9ByAjYsM6opZGa1cqKiIRI7rU/+wxdKzuOnGY=;
	h=To:Subject:From:Date:From;
	b=KsgApjxugC04uO20QdSV86BI2W7lfX+UH7+QDup3t5TTfx/xuSdI6gjDdPCn1Dx72
	 FFmffBiqi13cisV6KHCeWGUbZ8r2dvD6UCI3pacgwKi53rcsnKUTkHzbiePJf0ZYJK
	 ELje9Kdn1sfOl+R1fzqXqv9r5GSK0sPUUnFXzawZ3STmav29S1gVmkRTnpg/YuL0WU
	 IP5eo1R3kdpaa2/xBBHQ2a/EO8TDYkLqKCwn5QcIvenoU+3JiyrgY3Li3HyuAXeN88
	 xLW0FqzDVEtKJo4chvUFh2ENLmWEHJS7ePyCGCD1SEBJZeAAZZiqB+imywy2uisRrC
	 J2suTDZ6FgGtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984F7CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172694435360.15682.17550989668004044778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607372e025d9ad32675b9434f02cdba0365155a0bfa1f48c14da5c8854379058
Date: Sat, 21 Sep 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726944353
