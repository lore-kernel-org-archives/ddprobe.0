Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5908C24111B
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739038554; cv=none; b=ULK4oTf/IBtSu0CgGT76oTWmzEwYAE7VI5/Kw+s+ZXCx7R/NlynOPU17F9N4GhQu8ZGKiwEXc4DrF6DBiStNNxddZPHLK6R02qMwijihhxbCiqR2NFEtggVI7CL6FO0YqWxe/rukbjQ1QGOPIdqrlBRrV3myMClCvgPXcLhkHJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739038554; c=relaxed/simple;
	bh=vxicI2nD40N0Qt8/yWye0m7RcyukNrJpdJSv2XTQ97k=;
	h=To:Subject:From:Message-Id:Date; b=Amwl7QGiDjUo92bp7PPw9kBbAapSKJ8hRYDDP5/ctN/zX2b3PIJulDqKz6criwJVd7zSOmed2RK7ircvoPEDRLqY/WodYR8HP9cCPcyd36X5jD2vjo0ocJf+Lnav2Q7u/9guGGYpqwzQo1dfQ1puXDMDusLoxVkJd33m1zIn2qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnE7rppp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnE7rppp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED5BC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739038553;
	bh=vxicI2nD40N0Qt8/yWye0m7RcyukNrJpdJSv2XTQ97k=;
	h=To:Subject:From:Date:From;
	b=mnE7rpppDPSak1lmftQB4BzUlZkfZgoePgBUUinlHYVrdztR6HH1Qe1t8+NJVsVT0
	 UhFv9ezrPmJDg5bfoBTRyQbLF7M5lrsFk09EmB4NqfS4KRJ5KxLNJf6/z3V4gFbz+U
	 j+Crw3fAkva4DTifrgeEl5aWf/zyiST1RNuBTc6q9B5X+9r0HVtn7HxOE3FD2NWM/0
	 sCWbtwvY4BX5wpIBrpepnFqzSM2D/r+5QPGXO4tyszZO8VrtDl3r65GS1cGKXWUX4n
	 Uad13qG6mv3To/xKioM7dfYKnYv0bv0nNRBlDONwx/DrKpM8e/Xv+hezQUUyYZ9RCi
	 5cAr2Nkzs2NiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEE7C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173903855363.27702.7180655769957980953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0272d8fde2abca33dea6d3bf68e31e70570b053f212a6f0035b7aa3695e5b72a
Date: Sat, 08 Feb 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739038553
