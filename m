Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AC41F3FF8
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756034395; cv=none; b=hZK6rQips3U1Y9cJXvECH2Q3yRlXRO3hIuz8VKp+BYFtOMvWBaPc56fNMlUVp9cr8oybDP9Qh9cQfROIEs2AYZhytZeflarW+pri7hsxW2owBXlSM7OvJ8LAT7eg2Pwpb9GWk8IqjKE/iy0rb7fl9bhdJ9/Xp7wPiO0DOzGGSzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756034395; c=relaxed/simple;
	bh=jDZCQItJSak9a4ZCnR2EZN3uXV/rW8b4sHATw/HhWVw=;
	h=To:Subject:From:Message-Id:Date; b=eK2z8C/zr6QYzR8fXbDWYiBGPr/aeCRLdrr7tycLDm0sTB0pNkKphr36y1c2+flSIMBUHoWoAgrTwkdZWFQKa5M5Y4s90OVztugOEqA8h6lmzSjXB5kxUhALpl8owI7azR6MLryeH6bi9dBHeUM4cECVKfkkQZBn3IGzHyYgaUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+Zj48yM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+Zj48yM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35BEC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756034393;
	bh=jDZCQItJSak9a4ZCnR2EZN3uXV/rW8b4sHATw/HhWVw=;
	h=To:Subject:From:Date:From;
	b=d+Zj48yMYbRjkN46odKdx78iWTh9CgUqF7YpJ3lWmldqE8r6/StfHtWqxi0pecj6v
	 fQqsUD2AkhqnpT1y8NpuAMQjd3dGVvdHwUzzVPptKm+cFIqVzygruoRNXxK5CUovMG
	 ZJG/9ds8G/QAEYCxSZqd/Z/zZ13WRCyqCOc6EIUyhbMH8RjVlinvJDlXD7BvnTrOCy
	 j00TRFbNSyN/vTM4T+9U39U8znq+sDwiagIWVX4GjAm5H/aO7uMtJGIQ1iELa5S9Qj
	 Zn6+vdredCej2d2HILCfaonrP/rOjAlp0rPNJ07yGVya+5d7EwUP6Ant8Oj0gPOwKJ
	 IAOgCmJ4m56Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD65CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175603439357.17841.13208609948473922126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e93c44d715973307a6c99fae9c2249aaf7e37d4a8982be1753e49565c51d29
Date: Sun, 24 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756034393
