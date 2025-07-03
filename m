Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167796A8D2
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751513994; cv=none; b=QG93QUkQRJpQl8ifLz96YjgPQ9+d7X61XnXuON6UNW+PYFLjUfn924uW07UCS0bHPMU0FhgpzUSNq6CpZighiiXum6BBs3C/Y1x9WPpbjACJkMJfvzMyxGTPettuzQXCfF/gNJrWd/xDrmZULtn0hfrd+Z3mtE5eYN9XD7MuUtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751513994; c=relaxed/simple;
	bh=4tL9YQJx8E81T4+nDTCddCaRffdBegbAwZzkrgW+pwU=;
	h=To:Subject:From:Message-Id:Date; b=bGxXb5Kd+Q5zbHlET1/QIdK6Sb8OLDYAGa9CuxNQQpb+M6i1PlyDchU/woUPESkPF9ckbpXSm+4bfWLIfn3vdkV1P6RTigD30BStdcfhgGZQ1c0Ww/Q/SXT/23a0fW5Mx51Vnr/f3e8s32wEVHAFU4E36ugN8yYqUXn3Cc9FYLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8Iha5aO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8Iha5aO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3116C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751513993;
	bh=4tL9YQJx8E81T4+nDTCddCaRffdBegbAwZzkrgW+pwU=;
	h=To:Subject:From:Date:From;
	b=B8Iha5aONg72jtsfQGMTK6OJ22iEDC2H3fygPakIzfHiXprfDvbd7ckR1HohuTcB9
	 FC/NNU3lSQxRIQz2h13Fjn4h/IjK3SunxWV9DyJxoVjME6+Xnfv60z5bb658mSGLW6
	 I8KX907yVtfEqJkAL3lNPbPmpN7CRFuNTHC2AOUQrrAAcrfsBaSXgJYiJ6nHf0hj48
	 IjnB8S9uRiGbyu/q7abPFlzDX22sUz0aKNYA2dwXJNPWlSVS6rEgTnTMk9kqHmISLs
	 Z7nxHCWV2U059hatLG0nTk5p8tg+KhkEyHxW1CNoQJLKobEwtpegAyo63KHicWf0sH
	 wfmj1Hv+BlJeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9111DC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151399357.2603.11714659103738450558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5a64618e19a3c70905ea1888a2a0c9069eaae85b09c39343f21a0425d555ea
Date: Thu, 03 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751513993
