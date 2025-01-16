Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B4824A7F8
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737030954; cv=none; b=OosBfRJWdOMhseE810E4SdTR6kSSVTyuL1cyrNepTaDqFxYiU86sG72sLoklG9eeP0+jwEXVEvZ+X3l+VhHA6M2fnCEHx3PxD112i01fZNSI4IA5JA75zey8KWjE2e+JCelX4BTR66Z5ai9dMDXjuYp4jsE6jYrsBHLW/oIiAPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737030954; c=relaxed/simple;
	bh=71b5qb3pF3oKVttnU/+leptd0hhapRAOcjoP5UgDgjA=;
	h=To:Subject:From:Message-Id:Date; b=A6k5txibo64L+Bqfl/w/Bj+ZmN0BH4x3l00fGI7atz7jalDJDr2FI12KmWoT/nTIJiafi88KxU949iJYHsIK2nyHdohMoqjslJAzLNjZNkksI+GoK/QUEuOUP9dVbbB4pHtk6ixjBRGrpQU2RATwHdAFIXuqIQEgk3YnnftaWK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvnnJXrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvnnJXrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5466C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737030953;
	bh=71b5qb3pF3oKVttnU/+leptd0hhapRAOcjoP5UgDgjA=;
	h=To:Subject:From:Date:From;
	b=gvnnJXrF/5523eSUjZPeB7jTmGlJA1J1GKGUAbbZkrxmzYOOG2z5D7qpiz0FpiAKj
	 v1yDawCvr03R+vf4L34PNjg8oE6nW86Htxik4/e8P9PH2gpGJHQR1f78Cbywr1Py2T
	 4HSgS9EoMLFy++OCJeQHBeJ9rzekr6jKrZNOha3uzJpY82O3MdPar063odB8Ae3ncJ
	 l12vCJPHrZRhwsyYt5MwT+PEcR0XxacZ2ODYioyIeGlFfn9/uqwBooWmYwuvZxAyRI
	 plsMbn3V1UFq+v0rkpHnDTi1eQ0+3nKBA09u/zYYx3A5T0fWtWXBLGbcVLj62eZKId
	 uIzc824VGUdrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9129EC02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173703095357.18718.12529822387429521919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddbcc0e7a0a1f40793e3a72ef288fc5d306b78e6d2c389effa87d915fb20502d
Date: Thu, 16 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737030953
