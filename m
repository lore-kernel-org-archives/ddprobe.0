Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233843B3BE1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790791834; cv=none; b=E7UZAGqyoC+RnIT3DXFioy0QXDECiMrMG2GNOAfWw12/tKb3/ZCxnuu5oIVRtuFH4W40tPG7ClausvwnEptO/OT034jTEF5klgyWxE5/OzRbZi5jDWHXJn1DRpVWBH9HapKbOngGZf3pxVBFh0T+LVHnOlnjwgyU1vvHbDazzCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790791834; c=relaxed/simple;
	bh=ychpy32ezmUqny3q4aOmy5aenUTAxtCbGvT8jiHe7hw=;
	h=To:Subject:From:Message-Id:Date; b=iR2VeOz/bhAHz0meNfuAwZ9o6QyzYBdd7HhBKsHPhZhtXD6npPStD/M9vDdGIEZYTXXbxA5UHpCz3lBcTqHvYlBT4kr21YmPv506PYh8RKM2gwTHqZJZ36ADl28Kxn/wC8jCZjJ9q4T104KowGlQVWzko0F+yG8Yun0R3uNVivc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKc55qrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKc55qrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0914C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790791833;
	bh=ychpy32ezmUqny3q4aOmy5aenUTAxtCbGvT8jiHe7hw=;
	h=To:Subject:From:Date:From;
	b=jKc55qrVbzZKg1Lnps5mm1Ek+aKCv/9Ut+Rd9WFCzBj6SqU8GfASTtf55vPZqcJ6x
	 rGOvC61KWQ2lW0zClK/OQR6D2bgXxdPPgsQkQwpAEynLuYrmtx7lhTpGWN+Eg0s3Pg
	 c7E9Dn9gnj/28JUyzxO2vQReRigEWyuImmG3KuWQT7+BL2SFH4hiMQGekyc5/Vq0AF
	 c+Funjjci53KBN2wgVodktshHUvSv4Pj0ixXlad7tPyWkHZSyg3llCYfKJSeS55nc2
	 /xW1L2dh3WlYru2p55sCLmMXrD38rM/HGuC6U7tVMoSsyFuuBVFj78KM2JPDVo6LAK
	 Op37IGXfrFgfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8BACA5FC1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079183369.30144.873077232307504730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90ddc50d189f29791b21426afdb4605f4cc74e80c67984046e3a3f8ba0ca549
Date: Wed, 30 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790791833
