Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580B9403E80
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784613514; cv=none; b=Og/hXsHJp/5emZeXqWSubs0U8CBRPj4lrY/rgPEosPDTlizh+NKGIAKOxOBwXzshzuvl/4GJ+QoXzDUinywqwBh+e8q+xDl2gabySE4BdDO9Z0EBnKlKiB9oovAGL8eFQy/+CYHJheO2/t/QivNksY6EpdGO6HyiGEfPtmEjO68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784613514; c=relaxed/simple;
	bh=s3k9LfXa2Gfe09pJ7O1dDgubSHBzcm31G148CiyttmI=;
	h=To:Subject:From:Message-Id:Date; b=Od9E5xAQzvnLv26AIv8APOxgCw12atozBdnhAL2nDRJ9BFMOwS0HrKrlLVRHtcMOs6f9+k9rvvmF/cfsPb2qpY6YBrW5OyV7RrrBGpjknhoRF5iPkKzDQuJ0G46/+vcyfUxH+xXyQeL2Or0zMNONwaMm/VgmSw7am4oy3yaRF6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9qfLR13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9qfLR13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BA9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784613513;
	bh=s3k9LfXa2Gfe09pJ7O1dDgubSHBzcm31G148CiyttmI=;
	h=To:Subject:From:Date:From;
	b=G9qfLR13z6wYc0QZ8OfPcJel+PM3dEvJQREEYsfsKTflPTRv7VzNF7GTNmFb9LjPb
	 LWcJKlYYLhvSbC4MTnFeNBDow1rYhTe/rolo8o1wJ8qULy+OCjZ9P69Zv1zuNuTQec
	 34y8NSVeRbxD8bw2NEHv4VltMpDVHHzS3OvXeoRK78WIMS5Lqd7iUgaAW8Wh2Q9LFt
	 xIp2tlt4oO0aOEyBaJOQwN3KdIphSsPwQY4QSJzBBXLQV0GNt/kRIBl3hSYI5o5NZY
	 IIdhvPSuV+LRatv/JBEx99bw4r2AUrca1hhJeF13MXcRAGyLN107wRDUSV/aw8XgBR
	 UVHd/qwKZdJDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1EAC44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178461351369.3212.15199698160860066733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3b2076a46a88592069eadc912bfb4d8d2af4642872238dcc943fdf5c1b275d
Date: Tue, 21 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784613513
