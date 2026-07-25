Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EDE24908B8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784982034; cv=none; b=pBtEHDuMo/LLSpPbgULA59KhnVeSaNMJ6mwCvMuIVmirAbTuoN9sBwNWlIJ3C+rrsRCcZC4JArYvbg0YG/n1/Ie0CcIZJ1NR/6q4iyvhIzwTk59KEy8BXtejSYCbD+z0bGfYzlPG43Tr2m2uhxcCbEw3MuJmyHAzQv5WZF9cvCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784982034; c=relaxed/simple;
	bh=cxe4o/NylEgdn+DP1wyOCDq36sPIF7+UluYHGMkg8Qs=;
	h=To:Subject:From:Message-Id:Date; b=jGn6lDKwblMh19SOCcMtd+7Ju7iovMTIgPkNk72MgrZ3E3rJxoBt43ETvvZeditm9e3ttDSOrV57KNbXosnfCkKUSFOIids98L78sjMuIpoZ4cXvnsxb3n7GTwGEkVlsEkLYf9D8HeTahBvVmsfBF59RTTvMfn0RR+F9tbCWw6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psmJd5xW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psmJd5xW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17AEC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784982033;
	bh=cxe4o/NylEgdn+DP1wyOCDq36sPIF7+UluYHGMkg8Qs=;
	h=To:Subject:From:Date:From;
	b=psmJd5xWScyO0ulRmP+aY1iTfIZ2XZn0quqYRwjgnv1//+19zuo0isS+sKmGI2cWc
	 gdYgyRCy/cXo4wqi9ZGRDggRtNVGaVyEpfILEDR6VESOBQiejCOQCRG1V819ugzTGR
	 lc6LydGE5wrqA81RKTU7SZlP02nDOed6HT/LbGxaWvdgUcq6ehVVffbzjvS9pmS4Dr
	 tGwfb5R/5XEYQYCN7y+Gnb+/1fBLGCBD2AfbfN0x4OjBfRG5i9hbhafzlanlYa4OOc
	 waB8MTNYrtHrFIM2Mh4RaS4ALVzh2nqhy+KFKNAt2wV8uk3Gsg+oFv2WwD7LiigT/2
	 xFbJFuocAcM7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB19DC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498203368.6853.11952296606239822908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aaf95ef116295c11e21b80cd075d7208a727184080ae0236d30ba6a63832944
Date: Sat, 25 Jul 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784982033
