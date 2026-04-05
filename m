Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2538D76025
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775377534; cv=none; b=a2bwLj/2Jcs1n71yLRJjYbJ5RyjDnPu6rH14gohgeYAr7MMhw6H7uvN/T3siXVoDBsjkJzPOEjKDZ4gr3a1dmrA8ujKjYn+Sk/mY8u6eikP15wGCvWLj8/HA0t7ag1xh0IESOb3lTKAUvSRk1/3P0OF1bS4x5B6+DKHsPOF0joE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775377534; c=relaxed/simple;
	bh=70LiOHauAg5Yj5QWddtfLtMOETU9C4pedp+3SGH5F8Q=;
	h=To:Subject:From:Message-Id:Date; b=Dtd3HWzhCOOnUHRW3z1MholDjEbyacZZczbrGWdQRMLnMOr9cQmznngMPafoFAY5+omQcpaMAA6mRjScVX4i/FvUdyYZfSqeG4r3A9z14MrBVx5GhLsfhsWUDcR/iDII9ut3680hpExsbKNnBpUY7XKw+dUY41fk1W3MCS7d0oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2jt7QHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2jt7QHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2A8C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775377533;
	bh=70LiOHauAg5Yj5QWddtfLtMOETU9C4pedp+3SGH5F8Q=;
	h=To:Subject:From:Date:From;
	b=b2jt7QHrmSYxrjObfhi585EMOC5DBpO09JPEqpiAb7Uk/RFHrbI0iUtdurs26Do4D
	 qgDLdpRNvwMGbz2G5VciUv0FBGfcFHbXSWmwyo7YVsx+iQzz/ntfrCPUo2I7vRghcS
	 nu73/Miqv0jrK2N51ugwfju5h6J7h6ZJxnxexCWCV6Pkpa3NcsP8Tvvcysja4ZrfzG
	 a/gtSncFgujIbHzi9wWGlONyCZC559ZO3JDDLvnXFt4UwtogZ7ydqx+ssFxnf2D4hR
	 bJ4owa2IP+uQ4ocdXWjm2VL5FXMZRqcF/iwU7EFdJ6PBZ4XBrpi9h2WdvK+jZE8YCe
	 N7MMQxEC+FmTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C76E64002
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537753370.27297.494119411688144888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1b6156315022b3d105451a95ff41991550e7221127d67aa6d2ba69defc87e2
Date: Sun, 05 Apr 2026 08:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775377533
