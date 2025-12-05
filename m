Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212BA2E413
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764898974; cv=none; b=QUYFj1l2M2lwX6v8OWkMWBplw2Zdg8DhT4bQft9ny8Ui1kCHq3MQnWLahK9mh5/tiXBzVS0CIcL7lmN3JYV/4u2ypdm5iNVOxraJ8OyqSCrT41hEDWzevz8aOoygih+mHHo3GrPBh91LeIiXVWXS5158QIuV6OKwl9dKOkL4f3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764898974; c=relaxed/simple;
	bh=U+sp/VgBuJInDwTqfwa09OHIMypzPCYmUvEHwUkkeTY=;
	h=To:Subject:From:Message-Id:Date; b=hylfM2w7GhZP79A8N+p1LoPGp/aNdK8R0rDs1qvvWUY5Pliv+bFXIjKvTRSv5T0SE+pcH3QyCJy/Nfct3umkjUwoKBL/g2berL9GBGPE0JBBsriZm1n3R+kf52NipOwYwFHc4XVN3nVT4290TV+zf+0PohDBftAukv9j+784bNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxWwrGbC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxWwrGbC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BC0C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764898973;
	bh=U+sp/VgBuJInDwTqfwa09OHIMypzPCYmUvEHwUkkeTY=;
	h=To:Subject:From:Date:From;
	b=OxWwrGbCCao/LPNr2gmAKLcOgmSEhGx/0w2yU6ngnc+KrFDNfp30ZBxP42D9c4pIV
	 RWC6h+pRtXSnGXT+mM5mfgDNDt8wle9br48RMVyMyIJ3ZkNqYYDH1a9Y3nqwdUW0cJ
	 x1fPp2/06d/wPQPYL/ct68/5wjSd6UU4fXixYaQChEZ2gZj8Iq9SUqdjTeQa2pQxjN
	 m4CWHXSGynErRfcuCy+JBz50hwTR1urFuOd7W6uNOURzyz4rS48fndmpJLcYOSqL2v
	 SZtOTZ4On3m2AYRSQ+4Y8s04xsK2580OmCJnjtsdB8w4DjWzJG4LmlCoEx47etbufi
	 a35cwgD1fCZFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F07D2CDFE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176489897358.14283.14682200494496291393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25fd0fe7ebfbac715cc1a88d5eaaebab3b255d4f81321720816c17cf6190a5eb
Date: Fri, 05 Dec 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764898973
