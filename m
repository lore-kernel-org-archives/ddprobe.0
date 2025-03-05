Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4EA1FCCE8
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 22:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741214334; cv=none; b=beB8PYARUcPwmVzsQBAgJTvCX+J0JPQX3ZaJG6n/LzWKdsO0EQGUKVoY/hWoSIEpP4jmIZuzULhfNxuUKAANM0qKWx/1mQE90+NRNvnrS3qLbW1eu/L+zTQC/YkhqvoV7/ysRPm8LLrm/o5qw38K2VsKAYPOUyKvg4mBRGWpSJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741214334; c=relaxed/simple;
	bh=Bbfli1mV4n34+fTeKZLOFb+9ORXzmE/t98IdAUfOfaA=;
	h=To:Subject:From:Message-Id:Date; b=CqnjEDZ7SsrC9m/Z7a40WjGiMbHUSDnIOfKgTo6QV6UU/RTijsHaiqc8OvPC/gglpRO3HpGPi9pwHClzN8oTXbfgNQV+NcfuAGBJn+9hCGQLouf5jFNC+kjKmmXmv9EYBn59jjQ7IxXcIfrH0qbfQCx6lOEtraPO558vKEygqCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IS60afGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IS60afGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1497C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 22:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741214333;
	bh=Bbfli1mV4n34+fTeKZLOFb+9ORXzmE/t98IdAUfOfaA=;
	h=To:Subject:From:Date:From;
	b=IS60afGwephLezcZKSXmdfwp+v0ZIbcpm/K0N02B+S6ZNAHZ08H+bWWz4JWYoju9j
	 kZ5unLL62FPTn49bUgW4UALFVqrpeWhdUIQ82LEH9BNLzoeb3DwRdiNqETjGd40DhI
	 MQgTql+zLGbIcYducAR2ArSJpSeqnOxsrpnbrd3vmfzlpZHWyS5wp4pEg3RAOeq9Tg
	 vuqpmyqHSQxrTBG+y+/aDeq0RLyU2nhw0nTaBAwmj4MnWRDbfzM1T4LrUzcIOO4ty0
	 E/m6a3GkHGIygbjTdl+QW0XeobkSARGYWJJ/dK6daX4ek/t3S28XV4i9gIpKrhArt4
	 YQeQ57Ygfcv5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90432C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 22:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174121433358.7147.1845006032023621808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f8c7ad40d4e9d6fc8e28fbc856dc783895b77f2bc81326f4fa1cd9a71b3071
Date: Wed, 05 Mar 2025 22:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741214333
