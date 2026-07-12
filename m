Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433A4248896
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783869514; cv=none; b=pxss/9p0qhZi2zKhGlAH/TvOcJ7PQ9FCJXJJiG/urMamipdcUx4Xcmsig1nEedvsfJxr+QgFo99beR9pj7B38SY7p+s02Cby6d53RmDoTTpV/bouFgjmCKgHrs7XAaHV/uA7CTKxRlFH5X9mffUh0HxOVR3In32ik0tIwjF+c3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783869514; c=relaxed/simple;
	bh=bkWF47xOmKD8t/tsQzLRkpfUbNSvCdmM2FQ61/uTP3A=;
	h=To:Subject:From:Message-Id:Date; b=UT5BVqP/IZRn5pRZ0F67X632wCAiFBehz4li/2r4CSa81m7GpWxpv55sVsp6Oe8rVS0oT/U0tWkEDQYXTfPo6RYyV37+04g2/Y/shbltNiqWW6qSW5AzxG0w8ZlBGw2sl05aLxO6ZMzLx6M3suHqStYjWfYb2h8sjnAc86rezgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIZlEPy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIZlEPy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB594C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783869513;
	bh=bkWF47xOmKD8t/tsQzLRkpfUbNSvCdmM2FQ61/uTP3A=;
	h=To:Subject:From:Date:From;
	b=SIZlEPy3rw072rrdHHmBuZotKOqXpdg9iJ7SHWZvQ7emkFqw483R3Ztb8aMQG/rMZ
	 +SbMgis0PzeQeJKg7gKU5OItMWFG6twXl4Ej/HUgEu7cY3znPGbOWE1UgLqcQ/1ozE
	 jWxHjrMM4Ok98LaBdTd+uVGqlLJksvO+e1h08V95WpCc7aLfUSNQcX7mMRFcXX6YGB
	 E8jpXV6pqEdKy9kZGIxXDxK3SMGysAeakKAj8VUefOKF1ztPf3l/eSgoET3t09m1qB
	 5H5KoLa35dmqSV0elJ4zRl5OjZ7rQuJQ5Y/tWFJGOTEQG6VC+8dUSvcbn/Fad0zZDa
	 cCsnYnQELkZxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8798C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178386951368.4130.270291393644961153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc3caaa762e14b040b0c7c2e51c921d5288072ac576fccc06d916e9981ded9f1
Date: Sun, 12 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783869513
