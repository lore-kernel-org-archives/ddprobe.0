Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1062C190
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764118974; cv=none; b=ccRqNxfQgTqz/C8X//JqTCJspLgRgmsGk6Oc5f18l8FPo4aiNybUGEIpb3D26WYwislicVWIqOHx9k0OBp4Q6jFMxZE0s5vJgCEGzrTJ/wCHeuQ8szDSaIvIsGMIz9OYFIq8MwzhqJaU3sQ+WwH+QUDZx1yEiITD+luN8G32z8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764118974; c=relaxed/simple;
	bh=Mow1PPMX8jMHyFZG/pA6/uOGyO/j8XA4utOccOWtbXQ=;
	h=To:Subject:From:Message-Id:Date; b=jki1N39u1jmxIJaUHyrLR2fSn8ueyhcxtTZiz3yPI7TumBDG0nafu/uvUtMPCpcRCwRIrDOIQjQiKcBFoOn+TixprQuOYxV8ql0isQnjC/tm8MWExnUXIp9ZSU5c2FpJoAoFireg4Xt0e/fhIVNsIbYy8baJ44Qg8/1wXrT70Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckvbZ3fR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckvbZ3fR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ADFC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764118973;
	bh=Mow1PPMX8jMHyFZG/pA6/uOGyO/j8XA4utOccOWtbXQ=;
	h=To:Subject:From:Date:From;
	b=ckvbZ3fR9MvgZiBDamd3me96Geb563yEseupjmYqKUvwzXrUnFmoXKdeoQn8jetCq
	 NlYXE3f5NfQAQHywmAZgE2RPV1ybrpCYHmUgd1WhssAhGxONOBxxmx4ER9PqwrBCXO
	 Nw6/vVPOAzIkeWhsz40WowF6UKvD7OEkQsOjaObyLtm8SGDk4GQJddZO6FjP9rooql
	 IYKG7BBy+653q+kbI2ofD8QGKP4C4Srcj+tAvpvVBfOoXKpjjJ2JbZbpVL7cS9A5uj
	 FSH2NBJePT9NCD8I0cx/1q0mAc8wokBuu2+sMng2hmi30hvHED1CHVg4Jgm84KLonR
	 I1GYvF7zEKmwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981D5D1036F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176411897358.24783.16035821194045870759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad074d64b708a5be8a367db1e7c5933fc34e481e805d17ba03dcbcaa5782d55
Date: Wed, 26 Nov 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764118973
