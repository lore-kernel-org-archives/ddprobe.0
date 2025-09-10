Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC8B30F54C
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757493594; cv=none; b=HQQmQ9RXjnApTLuNxBw7spSJuXg1pnEoSlE4Y+oQ/mBvc+QtAzdGKNE+qVYIM7CDncMVTjkShHWujGi3Lsj47q8GvfQvvoNmPCKWG0+Zreq3UbBllXxGcdkErMmfztxvt+lv2/0B3jRtZXSr/3CyEhg6tpjX+lkgnl3ux8zB5ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757493594; c=relaxed/simple;
	bh=3wAmCK+hbx9Mhy96OWo+x2QlK/5aNbeGG1GxWJE9u94=;
	h=To:Subject:From:Message-Id:Date; b=LckbNee+hh8J60BuTTWw3a/hI1uVo/7haX+er8Zthb0gBDE0GX6ZHoKogFS241KZLN/H0l/SHrEsygxl8RgABVOhZB1DRe1BSPNGMmt1Z4UnQ8jsgvSjCRU+C5wmEqjgX4dkBxnRz43jJMtz1bTEcMgmH7MH9dAWve/caPlalVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNPvJjMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNPvJjMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C51C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757493593;
	bh=3wAmCK+hbx9Mhy96OWo+x2QlK/5aNbeGG1GxWJE9u94=;
	h=To:Subject:From:Date:From;
	b=pNPvJjMbdPJCZmNj9SK7Aj7eXgSxvyesGkMGa+F8gJYFouDa5tsgbYTCodaKvDrAe
	 y6LESweJrNaY+t2aiC82MGPeO2nd3rDeSgIACnc+zSlRXK6KC90dx9bG+zpkGlBGTB
	 lhVOqSHhRq8F9KtBWIXBOeVHLeINvUgiFQnVJl/I3+wg7kGhNkHeWTP96ALpS3XsMr
	 di8BHL+QmB7Z3n5D4/o9det7t9xJ2RC04HWgIpHj/1tZXQ21v+fRdbYKFAGqc79o0G
	 F4h25PjxnmRd8RzQnSGorgJwpIFR6FvNREeG9NwNjlIxpkZX4LPMrY4qLahOwoUgjX
	 vHc0ZmXgzjESQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95209CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175749359360.22022.9197827232220988637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f66f7ef9a9f5e60e0c247e6cda673ce8ff620177ad1ceafae2d977e0c6231a
Date: Wed, 10 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757493593
