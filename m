Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1227A221FC6
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776400654; cv=none; b=OrLu2uP0hy1hGOWw56a31N+ll8tq2Vv93uBZpALRlq382yBwuAJpx8zWNE4y90qNcrRaAcVe9xYw8+8vBBywL6cskZwOfDi+9N0fXno7yapyFzAKrHEkhCb16S64gk7PPUoKLwf/qMivhuHwtR2BkpJujti1fYh5DHI4MNlfU/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776400654; c=relaxed/simple;
	bh=YFLjDVDldQRCYiPglNGh+RVK8g3+F3763FgBj6gW7wU=;
	h=To:Subject:From:Message-Id:Date; b=FohtxFigoocmzoYh3xxWWUuRb2wFNUbJUE1ns8p7GDqNC1eF9NmCoXogbV4cR5cBRlsttounIpo3pKVRhHZOa8oufLSM1xuMC6QhMU/PSvB4ZwcBJoFvhLX0S3GTy6VJIsnY4P5bK3VCYiGoGPc95unVpods244/iy/dkUFOhso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zynihab9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zynihab9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D60C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776400653;
	bh=YFLjDVDldQRCYiPglNGh+RVK8g3+F3763FgBj6gW7wU=;
	h=To:Subject:From:Date:From;
	b=Zynihab9WE8n6tJQOfzis+RL5z90LJkO6qJitf6u8i9FY9g+inOIDJUHy5O1UbVkS
	 8keL24WT+PUQ9HHcT77N0SY+lHDxDLdQpPhf3LjNqs/VY2hS8db6Ty1LpzJjC2WUxX
	 oomsqeOnp31wQ+KORmr0412TWQ3NiUbb4/IXbdjbnZV8z9h1NbdYvmAvrGNhGAbbgq
	 Zt9acV7e4XF08pMLxQ4/tEotrGjbRaDQGj7yi+0oyoxYEWL50P1eZKC/C7tD31h6US
	 XZW61kJHonDJ38R5Sz7T9L4E50Mqkbj3aMAnMtfH39JcEWONiWj/6cx3uvQRoi/SbO
	 4oTxxxiOoZ+jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F35F8E4A7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640065368.6419.371735830595036713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f0db400a1202e600436ec83ecb55d8e58d379ee26c9f36ed5af714e62ea725
Date: Fri, 17 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776400653
