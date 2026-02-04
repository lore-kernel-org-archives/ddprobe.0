Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396D8303A1A
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770241434; cv=none; b=hMGgtVfZYdDRlFirBPgmx/y3Nj6YGxpNP8N/xhcEd+cOZabMww+NZ0hfGAJGeIn/hEyLJUmCfNhDIb//xCk5XlzA3B6Ch2Go6iBnhaWyesydFdHwopT9HU2NZquZa8HjzA52HWBDTZoBpUXGwV4+X8i5M2w3Q6HNOe6/zWwE0do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770241434; c=relaxed/simple;
	bh=dk+/wkURvz1bc8AlLMvrZ1ttOSBV4QkFRAeqA+O1GPQ=;
	h=To:Subject:From:Message-Id:Date; b=QFwHC0XYUud5D0NUTgoE3cX97kl/1qi1D53SDI7IpbZf8fEFfSPCZIX8etX86TrS6lXMhSjC4WIn/GzC+U58wD2L6olvzzAppV0CVlNk5EHzvOgRDXIs9gbKs3zAdekU+no+oqHgNjPC6fKwG5RoYfLEFOAaA4yq1+V9ecbtpF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eehbRDw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eehbRDw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1F0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770241433;
	bh=dk+/wkURvz1bc8AlLMvrZ1ttOSBV4QkFRAeqA+O1GPQ=;
	h=To:Subject:From:Date:From;
	b=eehbRDw0YVKQj+kIgMdhReiLZGCA5I22f1avVSh47ccGLw7D93G4Ybdc+q1hjE7tf
	 iqJcjHSVm+0WGxi1kr/9XUtUvtAPTIyWbdrdq1HlFbt4sboye/hy4UFBrRLkj+9NPw
	 keITCiMzjV+tvelP6hHOFeXoAImqd5AOHT+fLSMF8zO9synR1mhKAd5lSEZfuasSmq
	 SbC0MisPFq3PQGqOy5wCmYZtH02unFhIxlwt4urL/2nNglE4kp0qyBS0IqfPHx20eZ
	 eDjtJk43fYWLkEVkATxeGS631IjWPw5B/CjXAYpQ4cxHt+iRHDPLWcXiXihdnX+NyD
	 25cJmiYkiieKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAC0EA7948
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024143362.18782.2477774541558831305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b7dbc3a891f21f1bbfde3912074f05e994f8f3caf6043a57998fef262cefb7
Date: Wed, 04 Feb 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770241433
