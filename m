Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379092080C1
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775125534; cv=none; b=AV+qk2W+FlyuRNIX7JvNga418qhj3DnYQOA+j8uz1UDto2Wpmjj0rQg5bZ325yyBm6QlyeaOBS4A1xPZ7YdYofLZtryCU24MZSFv/q5iz+2RLsGTBLS2Lv624HcX2OR566CR6Y9iI3rdqWHRXpqItMEqUZJnEiO2QCctI3mWatU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775125534; c=relaxed/simple;
	bh=WRGiUoQMoX5OA8i0AEKlWE1pOVhAQKRwA3cIU45aEts=;
	h=To:Subject:From:Message-Id:Date; b=LBj5CXLn4tF9Va1Il0gRpHXVQKU2IydFhYPjMLow3q9tJZxBGvhY/hUUBDs4GWOoY9yspPywHE8s7MhFVhpyBsp2bCwyNj4ml9uS86bJpNRJDYphl3u67/zo3HBVDxtAbUYWbx+3jljHE7JWqrZ0aETKECrNMncZT3/C4Vklh54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obV+ANGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obV+ANGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B901CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775125533;
	bh=WRGiUoQMoX5OA8i0AEKlWE1pOVhAQKRwA3cIU45aEts=;
	h=To:Subject:From:Date:From;
	b=obV+ANGTgMSCjnYelQLNJ79EqoVMNmduNSHUam2Laafd+JpzKGFWDoQSR53Z3Ka/S
	 JZGUP++5VJSi3Rhmg+ffLtSvCHw6uvnLaJwi/Y10l+PCyYcx6WvNHztPPZHnESU1L+
	 483oPAdX+ou0DQK5hNC6/vqNkMOWDa2sPq+5Grlfzr6Taw0DFjpHnOJMKclXnGdIAN
	 g2UI5pCZntC2mGV6r6QX5qdjgv0UhfeHhAV34LAUozK72B1AbXetsFi2Bo7cVF1iNw
	 xIbB0Qvb7ofRsc5/n3Kuanl9etIzBPOVqYqdoi2a/MU7q4JALM/2qgvVDCgNrAf9xW
	 4QSv9hsIBztGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0FCD39406
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512553368.5128.10430280170149019618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5239b8becb5a5a2c88713461af8e2cba5bda1f49173208fc760e3fe3760f942c
Date: Thu, 02 Apr 2026 10:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775125533
