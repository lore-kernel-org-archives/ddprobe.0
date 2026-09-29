Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F2A304BB2
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790707234; cv=none; b=tIRMiUWu7HyVMueNUsQ1ZQ8aR730F9tALBNQhr/+RnrI6czxjf42XuY8/7ej4Iu674MmV4fAtA2qYUSpYSHKnSi0eUH79W6bT+ssfc3gs2C1kK7DWHpJeqRAIDaBwQEfmnz6pxFA+gwtXblYGNVM7smd+SFp70dl56BVCtJLwZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790707234; c=relaxed/simple;
	bh=b9dlnozRGlw6hGxb6J/eo9xyIKerwG3QvX/VXCGmNoU=;
	h=To:Subject:From:Message-Id:Date; b=gKxet/CnTnccpcG41LAgP3x9+Kt557cJpZSeN+e/tUUl4quwJfIJanNmKqoAYYm/PbMGIIbN6YCR2LIOw0f6AdKi+C8kYJ3kCNhNChYySwRk07TUmUCprG0X4EJiNgLRXSRoduAt1lWddFTwC4+T4io8Ir72sezxw/NO5na3RQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMUmh+kN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMUmh+kN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6B7C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790707233;
	bh=b9dlnozRGlw6hGxb6J/eo9xyIKerwG3QvX/VXCGmNoU=;
	h=To:Subject:From:Date:From;
	b=jMUmh+kNX6JfbSqe9HcnBJA/1YNlCatYi6+lyHd0igRU7Eb/eZAPTJ4ANhzT9uxJ+
	 6LPKzF/mjpP5UIOcf9lKqiVszsaXIUdSPjWZkJtTSfYNIhJlGNHWRg7kApCkwB21u7
	 WQpfnHP7o7EYtwhoEeRMmZTVo3mX+fQf1FO4MX079bCTqEC/i5Q62iOG7MS4eULr4r
	 OutNh7pjRRspXEM0VZDtFpZA098omAj7datskOpSswBLxUiFz0UDpHc+Ew2wh6bLa+
	 ApwsgZA599gcDkWlXJqLkzjOlJ8SM8X6DO0TX+MFxOxOFoLaWMoY2pvXFXT/BT1J/w
	 iJYkMawSlIgYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD67CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070723369.26316.4766508533291639168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95b91c47a101077b9bd65d1d005424248f0fd1bb14f0ecb902aa84345680ec8
Date: Tue, 29 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790707233
