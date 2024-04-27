Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEDB848E
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714184543; cv=none; b=kX8KvI/2aBBkfla9Q4GQ2paICu0p+gaflV5mxlPeDIlUkpAhkJzk/aX8veuGmYswHVExIU7nyohi+ZIda10cf1OoC74xiXFnRgQaBZ4RrGecdH6bDwuTSWnWzkIcPLUOqGESvVnJIV2uJrmGnSqutLljBRmqByipAmQv+7z05n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714184543; c=relaxed/simple;
	bh=tNORCyIuWUV7cV5YQNR9Sd+WKyXLPRJdfXRn07dTlkk=;
	h=To:Subject:From:Message-Id:Date; b=m3oYZc9bWjdw1d+ZvhZAuQlpxqjVdKKP36uYko4R/st7Xm7CQe2zF3Ij0152e1cYgWCicJLZR5SIZDTnQpFlCEjV4T3eAwBh3JSVdn+0jrQXxgVpgnKYW+KEKIGmwKYoQ45b4N5dXqD3IXCOlkpbMRIwqixXPGV07Xy4ueu/Vy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuryOTk4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuryOTk4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE607C113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714184542;
	bh=tNORCyIuWUV7cV5YQNR9Sd+WKyXLPRJdfXRn07dTlkk=;
	h=To:Subject:From:Date:From;
	b=CuryOTk4MkReXamYg7MBZ7LCS91+oeWr6o3iY3eQsluPCB+/EKdRsHpkEe0j+ThMy
	 woL68T+dHENhZr8jQRxIYh2TKkxF8rBYO0YoGGAI4mw+ldUT2DCD8hw6oZQZm7GQsw
	 mAFMQwVUY21IBxcaHJs7X6XT105xtnGoP8zodp4HhHtRBazAbRBRaCcZNPGAXH5pqD
	 2Yj4Z6c5BVcPDVXmjNchzHQl92QEzmrEY4c5p2W8DmVucKyLn/THFW7uXkhw/xo3EG
	 65rnfqqBRml7SENXbAX+6Fitjr3uGXYo90jVRYYgU2VNSNWi67nRbp+50dyLIdiUPz
	 mLrjj3buqxtGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA107C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171418454275.8047.2903990699606939609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11fe69d1c6a6e8217fb6963d772aecf32927e94197c944397d3e7f1aabb521d0
Date: Sat, 27 Apr 2024 02:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714184542
