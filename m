Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140F51D31A9
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725640554; cv=none; b=VlIeZEJzQJU4gTHK8zC/57CvLuzfTFS3FGE0o5mQjCd4ii6ksljw8F3GM3tyv7wmgowwXXYvHu3xbQ1Ub3KsyXTPsZSm6ySvjLOQlb1zZesckCuSgBUJaZ1Fq+S3h5YVUAYrTABEy3yeLOT6rRMMt70chIz80QIvsKNSq26NFUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725640554; c=relaxed/simple;
	bh=5JoQHlxdoYK08IACclpv1XsXWOprQDQZ790j45drEB0=;
	h=To:Subject:From:Message-Id:Date; b=RZMQxYTfiZyJZGbG1Iq8vW/E7EwraUz/gUvGxDKxqPivvLSMoQJcH7P8218QnOAm4qdYxGjZ5renBntqSRLJp+nbjbJYaN0PcZ7oFbHYqSA6CzUb6yaasHNZpMSJPb9Z5geJSn+Ik59agTclzNARKZswC2Z7UoNoOP1EELmWA2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5a4LwKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5a4LwKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8396C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725640553;
	bh=5JoQHlxdoYK08IACclpv1XsXWOprQDQZ790j45drEB0=;
	h=To:Subject:From:Date:From;
	b=m5a4LwKQU7+etCsk628My2R1ZKlziZwvipn3/uN2OP2hh4gJOnakvt2YuftcksKw9
	 +jr2GumJJOEyAbAjL7ih37BptsrCVLfuTAizDRgad1TV4ANHl53mvhSxqYbUY6qcwj
	 cvWh+dnc0wco4hI9lsOZGjIxNwsp8RHBAWM4xFbmcbcNBPukAgLQMDs4jIGibd8Vnz
	 g2iNLPbCXpG6O0RvsEeNexiz4dh1pBe339qwNXnnxM39Dj653Do0kBZ+Q81aebCHGC
	 cKpK9A4rCIjT8oHA8L++TDBax4imttpSMBbuVHqyCp2KQ6aw81MXRcxbUJAFSxvc6N
	 iu09Z5m1P+V2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF2DCE7B0C
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172564055362.6547.6063639906241784842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3444e6eba5e7a34fe15a983a0f63a15584a7cb5646f7d2b48b454c151361a885
Date: Fri, 06 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725640553
