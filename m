Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C99C14B950
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786239034; cv=none; b=JWomgrY9T/KDC9mgWbNzdU2r8G5IfTzeWKhEfFSWtkNUIl0oiuZaZgl893tblM7w9fao4ClOcU3TNhVgslfjGTmaigVrk68vQmaDflHYEG92I8H1wDz/434t4RUTAQ7d2y1OP9S5+85UX9/e/dpfbyoqLUTbpgIx+O0Z/hj64W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786239034; c=relaxed/simple;
	bh=392JroFcPqN3To9m3vsmAlVOV6ODTYMys2WrPuRZDRw=;
	h=To:Subject:From:Message-Id:Date; b=BsKc4ekq89Z1k7/ZQfTm4C+xI4kbxwFkr1TXDJCXi+1VS705tDxTu4H9J/2NnuFCMJxXEJpZ8Pr5a9mp8m+KM42lmpWqSpxxVlVYmOsscmWAyioxWIKiuP5t50IZM9K/chwp44iEdqmPLp5/5ez+XKk/ve0go79Ae+ZPG4eifWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEPoM5X+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEPoM5X+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C11C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786239033;
	bh=392JroFcPqN3To9m3vsmAlVOV6ODTYMys2WrPuRZDRw=;
	h=To:Subject:From:Date:From;
	b=CEPoM5X+r7xr4i3HR7FEBg2+PMXE4c508QUZzzs4S6adXY0CuezNHmsy801V9SRw4
	 dwn8xzCftFtplrljWyTlz5QRb9ORxVOrQt6H9B6p4oI6b1TFCiVpo6XYb8auzJ+Qn5
	 +Rz1Qy1UvjwzcQchRkZeANPMJJXoqxitHlWLwMcs2kAEjSxGJu5K5dsy4UJ23F/Zeo
	 oV9P2nGPSB/XmVTo4tF/e9GQElSyFPn+sc6RQm0qN/AZ6iLih3GLYk+v0/+HWMDQH0
	 7e3EznwcUldllDE8sYeZyEdI4RwWppu/jxJD9PJGOZx3/2v/vhfKvJ3jPFCMTIIXZL
	 gSOqtzpXQ02Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27C6C5AD2C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623903369.6518.17231588677514581624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ca83c8732bf1769d9b3df66aa673474f7db97fe60548e3545b25bfc84abfbd
Date: Sun, 09 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786239033
