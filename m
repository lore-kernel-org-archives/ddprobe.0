Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BF6426D33
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780476274; cv=none; b=HWN54zgYhZtfnjoLBYq+Q9hJeiiKdjpVq/UY8wRjJFeSKinHK2TerkD/KdYkPPH5lcPCW432bsSVCPrgN7DgBzzgHTa0CIcqwcQtXmWqv8WaCv09/3kNyPAdsktdU5Opgam+yOal2eeG+4PVA2Yys3FaL4AMy5X9lnbXbvCdPNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780476274; c=relaxed/simple;
	bh=GN3FVJwtSc9VfRtTiW4X2weNoGulx9pxfQfL5O2vTLk=;
	h=To:Subject:From:Message-Id:Date; b=vBZ/KfYSlYX4w16WWVyh9PBDedMU7ExGhlEjrEROMgfliYRNBDwiyysUfidWlri75WPdsWoN1caqZ5r7ItajsaD0uBsU5MB7ZNuSqmNxlFRmNEEF4j78YMj6se9LBn2F7fSxbKa6yayGgks7/Ij0LK2zGVPcMfeaub/IPUwk6WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYc3pGzT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYc3pGzT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06F4C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780476273;
	bh=GN3FVJwtSc9VfRtTiW4X2weNoGulx9pxfQfL5O2vTLk=;
	h=To:Subject:From:Date:From;
	b=qYc3pGzThCS4z485mE/valSsnr9gIoS1gG1WNUehO0qixwcedLqo1ubeeBgdgufPm
	 u0wMRSr0Pv4QbUwHTvupzVsD+Uqm+3iOXxmLT8pxCHxbB9cUOzVZhJYRZmx+7HmlY0
	 5nefyHkJcOqIEPNYUvslkjQLdIMLsXpp6Bmv4sUqRJuMY7N0TsLFNRAHKyeFJseMOW
	 79l9rLKutTLaTZ5aEiansOz2MNwk0c5i7+ObDCnWFDise491uuYUulxBl12w79O/T0
	 vYKIB+QwyQrK9PCtPXP95WVD6CF0DQWfZ5ptL43np7LIiOr3mea26Mbt6ke7Ogzk1O
	 pymwBcczYPQng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E46CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047627368.27845.888662320158966713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caaea1609d8a4ee8f1d9895af3ffb14f5071b1e395efdd0d069b387ec2dd4315
Date: Wed, 03 Jun 2026 08:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780476273
