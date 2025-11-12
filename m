Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5430C72617
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762986594; cv=none; b=dv8Un7GUdzPW8Vy6SX0tmOeAluzcmYD0SIrfc30zyjSq0v7B9h3N/oWWCSiovqmGnNW6CAjT0F2+cV3aWlH5rNZGkUeJ6G/GL5Flg59OAZ0d9HMk5yjf/DzaVMY3Xi+h1vNfvtiTKPNC48c8fbg8/hrexNocLdAtdo8y1bIy8m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762986594; c=relaxed/simple;
	bh=Lhki4biTfOKyEV+M0xAISIoKbAeDz/bWSwJOCVruwF4=;
	h=To:Subject:From:Message-Id:Date; b=mmc048t+eCTaNi5u5fYzuL7yHm1d1cX0KDkpOkyqvAq8w+hiH7st0/8epT3DtAM4bew40Nb8/6ZCJ500Dk4B63epgXUEC2YTp1EoAOAgnqIi6cDkJ5RqUyv99SURTJON2qMC3lhGf8SFLdED6/x/7G14/gZ++x2N8BjjXywoPKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPZVIOX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPZVIOX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D893BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762986593;
	bh=Lhki4biTfOKyEV+M0xAISIoKbAeDz/bWSwJOCVruwF4=;
	h=To:Subject:From:Date:From;
	b=IPZVIOX1JPdARf7C56Tjhph2pYu58NSYosxdwg1w0I0gEfc0uAkwWTatDq0fGTf9E
	 H3ltMEPfxlk680SG6XB67nHmR1QBdfYraTh+Ms4db2lrxvLh6dhI2sxEitDO2EE9S8
	 SQbr2AGmrQ0Fhwk99v9LqwUTp3EZ6ucQ6UrdsanuctS0gU9J+w1UuNqY4JwNc09ElI
	 NQP3nh4rIg2Z/sArkupkpJcx8vJCISf5/R3JkjwZemZDkVyXCYXpiOsj2OQHchPUe6
	 QZxKLy3CvhHr81XjSEONf4Tnwp7LglDhOBxdFv7uJ/kXv9TqieKA2i+cWq2HKZCnEu
	 eNVhDbWO9y0gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3109CD484E
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176298659365.15056.6473174735353999688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f84971a903a2bba9fe24a0614583d0fe7520dec23b27669ea9a5c5b367a509
Date: Wed, 12 Nov 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762986593
