Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C2D32D0E6
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762537794; cv=none; b=bCMXDprWlbxSlgCkehdGd6NNVBrsPeXALmLT5TY6k9MXSBx/HcXudr8enOis+yvO2t21WuINIL91Ns1ZcN2bJrR2KMFpvLGrnhFBoS22tdNzho+TSjKk5Hju+/jhoSBdKiEVjgJB8rjqOgsEImRQ26XoWZHkneSMNpUyhGAWHY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762537794; c=relaxed/simple;
	bh=e5EdORvrJZ1h+P50iKTmgEqIjfnRT3124Hpgw5cCCog=;
	h=To:Subject:From:Message-Id:Date; b=gDHftaUOLUdPeLG6Ndj3qnt/ag4CO03tcW8/Yw2A7UIX4UaMKAgR+qngC1YmyYw22hPy0wdKEa0hItOqMKYLGdn7cW5XooEfMNLk4YzdAXOkNNKr2/wcfVvIzMcJiFZYYNbg+jiM9FXUeJ9/UdBVFtrRBvwJmfyHBgG4d6wG7DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKbyjtBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKbyjtBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCD1C113D0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762537793;
	bh=e5EdORvrJZ1h+P50iKTmgEqIjfnRT3124Hpgw5cCCog=;
	h=To:Subject:From:Date:From;
	b=eKbyjtBgOaEgliw6Mft5N4ctarQnjR5A97s4QOc8x9kXblQhyIuVk73dHQsfloqjq
	 Ncnu1VePIpUCxKKzTJyxvzt8IJ0jgNIHdymXbSkMzVjvIV0R34pxO1ncYX+pGf7drX
	 30obTdzMneLyLPtbaB5PnzxERJW4t/R3UkbPrfJ1gAjGa56A6d9cWxMxt5CYBNRDED
	 nQXxum54LWsltLVCmSV+3mMcQU16P3Uuv7QMDIq/XFYzgTmOeMgm6W1bav+qjXFKvX
	 zscKWPfzHTn4rLyg9gBPugeZRR2XvJ7URywgE0nVhItux1LIvcV9tOdLnd4fTncYNJ
	 +AxVC0uNRYK8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91498CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176253779358.25806.16713604256308686704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc9edb4cb875367e4bd9e7fe4e3ae2689e15d18714d896a8c8d105549714e8b3
Date: Fri, 07 Nov 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762537793
