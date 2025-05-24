Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B3325776
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748091594; cv=none; b=i7wyImWzC9ohOwRnLeVmvW4de1/lQic/pThnIfT6jV42UJ+Fsf8S4o3S5y/YA0GSxa/RSr4DojCpd8E4bzeHUpx+QXB5i13hqcX/6SmVzBcIGRouuiXSStuX2q+IHf16B8o1pe4TRxiRctc3QX2bsGRc95b9jvCewCd7+IHMqc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748091594; c=relaxed/simple;
	bh=9R+xWPA5EjoN1tNQ8viUKkDF/Qb3FUaqPQ7DmT/RWK0=;
	h=To:Subject:From:Message-Id:Date; b=skkNBkRd/1rQ0/Leo+NU1SgX8CqLMeCp1uoG9CitoHIsCnbuQ/h2Y0RkPckaGNEtWfhfwWbLCiB4xuMBHuc9IqFlMldnOUVYJOzN+IGzVgsEP6ACB4Uv5O4X9HszZCY1FyzU43PE9Tevxx8RnUrOzxbtF6RlC+sADGXMmwHbfsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7HExrEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7HExrEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40FBC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748091593;
	bh=9R+xWPA5EjoN1tNQ8viUKkDF/Qb3FUaqPQ7DmT/RWK0=;
	h=To:Subject:From:Date:From;
	b=o7HExrEdmB28yf29q4G3v3b7BSpgibrqtfzBzGIbKc2I5CvcHYByBRZG/W29Q9rtf
	 vMhkgP6aY/M4RwIAqv3I2kwqI6iNj7Em4c28vFpIlE3Ef61D1ZvJ4JcPU+vOHPVOjG
	 tWosxo5+SUFsK/7mIx2SbgPs/J/Cyb5Xqii3O/pKSyo/4y0yzvqSdAyYGmLwTBD4uL
	 J7aX05sfW+FWCb4maSt9EPIM03tlTHvu3aG2BfwtgvUNs5dDoT1P6ORcqOAvECRSay
	 4WK/DyETRv3ogShegCADYMd2tC2HILbhffdTqhAz85vQ/5X0uaxNm4Qyj6fJbJpAfi
	 9D0fAbRrIFNMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B2C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809159357.32478.4740338125111635176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90571d2827b0bd15f84654aa8b19a057cc5ae88d16963339092124d5f7d33b46
Date: Sat, 24 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748091593
