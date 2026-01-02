Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6B61397
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767344634; cv=none; b=s1OP5sxMavlhv0Ie61xQ8kMZpi6XoWF05IGGcWthp9oI5Wwy3Qay2vcUKIKgW359XEjtk3FMtuYGha9O0mDgHbpsBUThzpUmmNss3Q/s/6sBByfcFKgPklFmh37rZ/qgLt77AKd8Ew6spORuldi1CxbYYqyTyjMfndZiFO/WiFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767344634; c=relaxed/simple;
	bh=f0yhUd/Ii43j4hSMddh4J3/0a546NHi+iRGTwMrd9TU=;
	h=To:Subject:From:Message-Id:Date; b=ohvUU+Gco4+mVkiRL+6ZfhasmW/31sDNPMnA6qsOIVLhItZiELUFhFc8l16Q43/2mKYjGUVcTe4Md80W1+9NIHoJmzhCtPb6vFxBJZ/vnsoiIshOZcRS9g9Uy2V55Ci0a6L1i7BXmGkUBUUbOBOY3JGFwfY0HFm0fIXb+B/hCIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+fT+eqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+fT+eqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DA6C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767344633;
	bh=f0yhUd/Ii43j4hSMddh4J3/0a546NHi+iRGTwMrd9TU=;
	h=To:Subject:From:Date:From;
	b=K+fT+eqRcgC/UsnHAWT3+560kE7sn7wxjjq0+w0YE7jFZFmBB7+k8tfpagK/FI5Pa
	 wg41s2DHkxh9FNrhfRA+MECualOeYAi71xywNb6STaQeQe2jAVlKOKOCsjIvWdEssv
	 PV+r3VZQQuqoxjBLbu2xGTgEGHrnIJHVsSUVfni09zGpbVnoB1+FMfS7GvIlIbQzXq
	 dBXDy4wcGrXWwGHlPOQG2SgzXG6JupquP/XD7+yIKkK8H5jMgfEb6upGzXScSrjTgy
	 otjmF0JdtmLu/yKAAVbqCtVVS6fKWSxQxuBz9OZg0/w5fjE6RLnsH/quubfPDkR+3M
	 1zL57LgY+wnOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965A1FA3727
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176734463358.27187.8457068029894338079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f93696206d1b554de955baa65b45aec6a8f9a78bfd4991327ec2f17a0613996
Date: Fri, 02 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767344633
