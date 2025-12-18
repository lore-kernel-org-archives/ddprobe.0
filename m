Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99DB326D50
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766057633; cv=none; b=be4jwuQAZKgs8B9Aui0ZFdd3bNhaGXNEZQIrhh77ZL32HGA6/isQiMVE9grSOWW8oRquJ7/JDAACjRmxH6keSAhf9YqaDDC9pZ/LKKh7iXz8mlc/JBlqHIwfxK3hj/gfhPMzt+i4gSYOWNFOdVm5TCJAoyyX0B/MwmjR80KnODs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766057633; c=relaxed/simple;
	bh=WLoTeorS4pdt5Bm84jG3ok9zg4u7RhSrd9bHAcQ6KOY=;
	h=To:Subject:From:Message-Id:Date; b=nb+eID8kj62UntGyycPX3wBWf7wv4fROHHh92+yQOMra6ZieyHx21lsf6NTsQVeXIrPZionZTSE9Mud36VLlzgf0mPAegrwDRBCqxFbLRQr5XFLGgfp5TRQKjrK/CgQXjoj/ivUhejNkBDu2CX4xNJwHtOcMj5r0vnB7ybe2Rm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJB2y0aA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJB2y0aA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E67DC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766057633;
	bh=WLoTeorS4pdt5Bm84jG3ok9zg4u7RhSrd9bHAcQ6KOY=;
	h=To:Subject:From:Date:From;
	b=KJB2y0aAPdFloa2pUiSsNguG9GQtdmDYYboOcwPQVLb6uk41KZ3CVHnOS05Du4Qeh
	 KAn2UDeVRXi0ZNl2WeQZ+ICuXus+VWO7GqfPFdRtsrpNMypXSKmxutlKbTDrKK5y25
	 9tOyyl8DqDzmGIWqxjyXJLYd/qOC0h7Fuv3qYdNx4dX1BhJN0xsidF23kG3f3WFihU
	 3+rQnq+vjp3ja7EjXjUpABnM0oPWB+1FC93q3b8Xpi5RjRQ2EV+NV4+Gx9V+ioK0of
	 ZYw+AVqPrI04/0Sdl6GfqJBUcvnb+3Y7ALIyknCG/GkXPnPTOsaAwov20vtMl1VHV3
	 n4GBfsYIHGV7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907CDD6ACE9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176605763358.29624.16960240360202162355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70597844c7045875f2b526aadb623f1c534a7f1b8dd020c0217f69d7ca7d289f
Date: Thu, 18 Dec 2025 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766057633
