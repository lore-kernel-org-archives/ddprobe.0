Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754E113B79B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716928463; cv=none; b=nyHj6BU6UePvMt/TnjhyspqyGTcclxu7poRjp2xWAoBIJ3J0zBWJaznkDY2DJeANWViPlfZTQz/eLCA7CH5lzMJtOuj0Zg0T/FsGiXqAHDrK7kw9jeRbq/2GppRGxPeSFQEjOnessZV2Bh5w2E95Ut1wRnwDOB6OfTRUoaT3K2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716928463; c=relaxed/simple;
	bh=CGA83X16qphOX14VAxzfXKyOQMFnddHAxy6jOfAsQjw=;
	h=To:Subject:From:Message-Id:Date; b=ahmOTvbdr9v0XpVyrrEc9QSNMfGNIpJNXcNjaXQ6+pVjPC5QoiAmWTqMqpxy1F5VLqtpTIG79/mqVFa1LMMcWNFc4KlMm0XiX50RiTuX4nJVJvdcitaoM91Tc5cstgUINp1CaX8bQdmfPwS17flEln4wcInB8Q+NZ7ch0i6fZJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qv8jPNk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qv8jPNk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1212BC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716928463;
	bh=CGA83X16qphOX14VAxzfXKyOQMFnddHAxy6jOfAsQjw=;
	h=To:Subject:From:Date:From;
	b=Qv8jPNk3yKhMqI/mBDgIbPTac4A6PAwqEYSCYAqlR1IFbACduaaTWDgT1DFJGzOmI
	 Rc2zQ19HmfgxJscOrK8sonqBgt9Of/8WmKincsedoIQzQIuR0fR+V4A2IYmRf2y2Jt
	 nveJUeLRGvAnCoYq+ecW652rtYxlSQwSM+9/mUr6V4ivIyZhZRRLkbLNOiriCXjNmu
	 hZIexLWk3B42qW5iDe2F64CYl5vJUa6yuCmu+eGkELs7Z3JE93f0oni/SLcbxeMoT/
	 a7TZCtqi8n/sf5U4dHMoEgYes9E0XfjhePEt0e3//eSD1owd4xTUIZ0EG+u0huUIj7
	 DWfql5ofyWa3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D64C2C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692846282.32554.3664337233194964139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ca2a9d972356e5855f9e30aac4c184b8f2e20ce79f803f4c1f0b7f12b8cd1c
Date: Tue, 28 May 2024 20:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716928462
