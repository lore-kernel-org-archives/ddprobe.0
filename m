Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6011FD4
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770509034; cv=none; b=FcS3fLcU0tnt9E6OefvQI7hQyH12I2pcV10aoq7pvbxwvPYcfqAJNQSE2S+fQAd3yw873WzIVLCBxPnW6l1JQoxH5ti9Y5/KrcLsg1hYXYnqm/mEpP25enFUBv5KTX9IzLUpu6r7dSGMA+/Nzv87EUWekuod/cfNhGUnetFIplk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770509034; c=relaxed/simple;
	bh=YatIMQvQrWxaYR08SRdXeGq0YXrLxJiCs/DARp/n7Uw=;
	h=To:Subject:From:Message-Id:Date; b=FiWxhkwE36UeDiNeLs+ZQ5Pr7guQKcItOPGMx80zwm7sTQrXwc0eRpPpbmZPQ2El2uymDFKnznEmKXdNpnXxz5a640elENZi3cV5jdpV45o/W9R+RtChtvR/0+JU4isexCQ92D/x4gPJpddH16vyBanuduIrZc/mGStTrlGulcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIOr63wf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIOr63wf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBD4C116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770509033;
	bh=YatIMQvQrWxaYR08SRdXeGq0YXrLxJiCs/DARp/n7Uw=;
	h=To:Subject:From:Date:From;
	b=QIOr63wfwPnULQI7KZmdClCSD131Rxl3kgj7LOmHEus3Gz7UnXlAGOr+sKkNqynsl
	 ASN6r/teT/8m3UV74kzg9t14yN1ra5G6AkC1Z0m46Qxu7xlYkYV1UYsSvw5z61lD+K
	 1pKw+XcGLNIdGr8SSIqBtp1Pop+12UDkMfitpWwzEvBU8eVNmrd/+cGagXyN2Of2X7
	 BEMrJNrEuu6jZ6O3LDf63F2uw+tu3n2jJPgGjUG512DRwjHvvyaqGaMAzQnoO6wl61
	 rAXowaoil6PId67aWSjanLJR4HYgrce05/rZmqmCf7xz2sGhx4MXUobLeTZ3zwDFmx
	 mw0fDoSjED4PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95429EE0AE8
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050903358.10993.15900683209701579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 057b99581bbdffc02ce5e64c0cdf587f214ab4878c0fddb9bb53a51d04fa080a
Date: Sun, 08 Feb 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770509033
