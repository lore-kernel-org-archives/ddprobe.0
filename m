Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0515634A794
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769742834; cv=none; b=c2XrfBd4PEysDMn2Mm5sIcOLl1cLF+GAog3AhcBBd4Kwz5wPZ8rSmV1yaTS+fQwMWWG81fbNoo603u/qi+N8WgVELdgjtzaoDl2PJORdCuO8oqz1TaQPz3+gcQp5MRJAy6SY55e9GRjOyC7UQYczyilI2eDsJDuB1vJ5f+OVVg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769742834; c=relaxed/simple;
	bh=dl4EpXvCVCvzqk/oIHS2v8J9xqtsaOD9UqAm6vxqQ+I=;
	h=To:Subject:From:Message-Id:Date; b=rdlebSN+Pf5zKJCBvyfHhcy+BhJt9hAsLTHAJw3b98galygXM3RSWttkhA+UpUAEqiUX0+IVinCzYoWMU2LWEO5fOL5rtEMnfYUd057UkuyrXbT4OukfoA1RfhbYEfL/JP8Jfy4b94gOtPLXc1Fxn4Qt27AvT4LSuBcuOK9GMt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKbb5Gba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKbb5Gba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF40CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769742833;
	bh=dl4EpXvCVCvzqk/oIHS2v8J9xqtsaOD9UqAm6vxqQ+I=;
	h=To:Subject:From:Date:From;
	b=dKbb5GbaypT7kNQq+YlGAmPA9WLa/Ehvs15DHPURpSOMAsC3UNcpRhdAY9VdiKABP
	 Jz5O9TKSdXHjARoj6bChDGDJG60z1YD24tjolS+UFyjUqrpg5WTJI50oGeugP+4o8C
	 y4ormeOUwbWGw6wlseRkXkJUvBoVRI2sHUAQsOxkurT4Kx3Ju7pCZyMbIewMTdxW8i
	 V/oquBRF8beyIUN+9AGuMtQ4Ae53QCw6bHrYQKsO7oAtmj1Jg9GvD5WQg6W6Kh6HTr
	 Ko4TA59kRxYMkHDt6k7n+U6VAbIf+4fMidxQue8ybpipZasXhl9lV79rVUo43LM4K6
	 wuxHc1BHNKubA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988C5D73EB6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176974283361.15855.16082250620400464213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444a635d450968e42dced9df29131561a6a4ec7bff9e34b18d7f8328c5f1d2d5
Date: Fri, 30 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769742833
