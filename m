Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283E34C91
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728278754; cv=none; b=E6s5pZGS3VQdHMxEILbJL6WvmLVs2yjcFnhGNxEgcjXHSi1N9x2k48Wu9GekLBxtCn763vXy2+QuWiSnb1V17sbhS+OtlrWiJhdMC9X3fSS+4bhrzLQkXC8/3cGMPKWAjgI+m9mmFRac8MNBKJGQLbn0ff/PSiPoAxtsvR8WDU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728278754; c=relaxed/simple;
	bh=UkzplH+LqbM/J854Z8MmCI5XrPCdjLN/FEB9ntiqXRk=;
	h=To:Subject:From:Message-Id:Date; b=dRAjpLJKc4oenipDs45sZkrPjbPIxHcqTX/+SpX7bpQFwGLxriKtklwqsFXeV13FBlGuXXLIrWYZ0z17z6mGRRokXBpsvNyfH+3Ek0tvaEy8kIhXjltQgP+VCQwaxsYUziUzF96y5y45zdQtCjGlsSeXhNy0Eb7jbV980udii34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8g4EwOZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8g4EwOZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A780CC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728278753;
	bh=UkzplH+LqbM/J854Z8MmCI5XrPCdjLN/FEB9ntiqXRk=;
	h=To:Subject:From:Date:From;
	b=u8g4EwOZ7C4mc10OwHdab5mKBoAbQOZqJFGBWPKL+foJGOXhikP1swLHwccCQQKP9
	 WT6Vlkgr9/yjw6FddUqYmbovXQdm3G9daXCptglxXyydCHYzpTGvHUU1Wsdt6ar5KK
	 dh8P6MBYmlnfE/XzEaoGC9g7P4lLyjQtgL5ADbYqK7IJWVO3nAfYW68rSFf/vRDy0N
	 utR9fRUhQhpDN0+ZsMI4OaorP6Tst6FpR3oF/Mj9izDnxXZ6iN6Us54ZZqd8uUL8lh
	 UHQY3yIjy/0rMvgKyd2+SDbTJO53/mxY1y+rUeSrVegm4n6Xi8KTDpeGxyWfdrvdgn
	 /2ZZFeAZLvhBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EDECFB442
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172827875361.23926.12183411013817272285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66bbd8c8a1e882e989316abb636cf0a9f6e9c40a476c430e7e623e3cbe6d350
Date: Mon, 07 Oct 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728278753
