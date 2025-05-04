Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4222E4438B
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746400798; cv=none; b=hd0yctvJDvnjMKyal9LdqM7pb7H6Bvzn/fH5kfwAGOmFtinkUX8PggJ7rVm9UCvWq51EOlzTTX6fCnBl9Uy/q2hCulEcn6pcLdb3IERULAWGhvoHZlYa1j+vdCDS/Rk6qQRcfR86HTTnD5lOdhGDL8VcZSTabTrF7CX1NQqnWpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746400798; c=relaxed/simple;
	bh=prrFJkwhz39FsCbSnFFSHRo86+rmOkGNDAMAzYqMP+c=;
	h=To:Subject:From:Message-Id:Date; b=Lp1vlm6HM3yU71ua5bzhbUcfhqyEGsfEp+WVxMXSUj8amNogw6FAjBPOt8IxqKab5BPWR3gNgnKLNy8n4z5NkRLY73E9zFETDGEkwCTwDydbIB9OayRRAPt6vcdWjE81MdMhoq+10sUlPXEJRhoDQgXVKXkLu98GO2GBDXfORZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEPSZ651; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEPSZ651"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57C2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746400793;
	bh=prrFJkwhz39FsCbSnFFSHRo86+rmOkGNDAMAzYqMP+c=;
	h=To:Subject:From:Date:From;
	b=MEPSZ651CAwiKaNEiCMREG44l71HoyFUez1wKz5tYShYFaoHNiOqXrZiq5AVb91YB
	 aSh7wNy6tqlOTYuma6yDb9+Qv46hxzdr/O/8xuka+KLpwe1ii3b2PAE1YfQpV4hkh2
	 OvcO8vMIiM2IRqcFzCbVeE2HgxqRKUXVer1FPTNu1xZAvKhyLXzuUeGiM5UqJRKjp3
	 olPYDpMPxsg2QsZOZJZJ1nndY94h3RfmnkJhoUQ3pZ8pfZ0sNA+sIRs5ZwhsKex6in
	 7bqY1OGpQK0l2GjcYkZaFXVoIi3lu1G4A1J5zabuFBS3DWOV9zwwiXWlU4tCVrG6Em
	 UTeiLkgnDI6Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A22C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640079357.15309.16498663225632622430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4724646670522c9fc2cac4db28fb44477322f60d54d2bdec8f686063b6154cfa
Date: Sun, 04 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746400793
