Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19703043C4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755625194; cv=none; b=mKnKaoZKBJlqdfEZJdpEBxT9OdQoqY8AhpALaovUpdiFkK8SkAqiQwSiUCjYe1f9M5mrFTGXx72lc29zcNqrcXVoPElcOH0eTxnNBaWTMAAiS3NxT2oScTBFIbA+sqf/aAw6QrIa54zSBtLH678qJPckREHGsPjuPqs0SYDTFug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755625194; c=relaxed/simple;
	bh=18cPvDOaOr5BiR+32+ejTp4dsNQKyHrG5MgPTMXOnJA=;
	h=To:Subject:From:Message-Id:Date; b=qfrB04c/3J/wuZenlVM+3w15eudv7JKsHq71bzPFXiLR0tjJNWnjpSAkJSILI9q3ta9xKrpiUVJ0SbHb1J/gJw6cQ40MPLLugHKgBZQgEnNdgqJhmJpfM7zNsKBXZIWWvarmtnf96s/qQwUQQXyjedAUl3AJt5w8Wo3G35+5roE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNWC2UKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNWC2UKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A190EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755625193;
	bh=18cPvDOaOr5BiR+32+ejTp4dsNQKyHrG5MgPTMXOnJA=;
	h=To:Subject:From:Date:From;
	b=FNWC2UKwIHtHvogBn6PX67cYMiTKLWKw7acT5CZ1aAVe4kV9OHbd9jnOwhtx/SllP
	 4ogn+5CbsmPnKjKaMciHxNc/BOTmMCnPZw46MHuksPwunnO5SSvnoJOAYNkwlz8HvM
	 wAmx2CWFL4frqGJ05JwtFMDxvREWezAst8soBvKs57lQSI57nD9xGkYeqfqq3MPZgZ
	 GaKshrGgQve3DHvKwbwdlUrFgl6wWhwoJZtRIccZYu0SrgUmTcO78LfvHaGFGAy0CI
	 C9NLhuCDR21dDS2K9huEw++XZWrTthqeq//RWFaujIaIhZzgN5lqvdxHXYaRJuuogW
	 b4j9k5ULbEXsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DE1CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562519358.32262.6764681272588638092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3557040ddea9eba6d205882b6842d07ffbaca0b47be1cf9f7f22d1e3af5dd10
Date: Tue, 19 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755625193
