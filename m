Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66DA5195964
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 19:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718392703; cv=none; b=q8tCM6NkHl0j4qcenlAP0TA86TvkDZ0jz924fAKffCngJvDqBS1TUgJbbisGNGX1P4dgWW9XXaET80TIdAEncxNNXEM3ZLCKo6bVxEZTsrLw265tQGge6gBrf5qxv8Hyt1FLTk0icY9RZKGlknFKP74jPWgUFy144+TTDaEzWjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718392703; c=relaxed/simple;
	bh=wlqdBGELStrBGjY9fs9RgAbro0TTqX7UpEOxRMXtg7Y=;
	h=To:Subject:From:Message-Id:Date; b=UpU/VjM5oa79VRvvAz3gBYHYe/VL0oJBYqiVl6JKgKmq36UZkJSZPf52hKts9g3WFG4DiuQaNuPt/H49ig+rOHlNgQX2WmfBIssO3hcQlx7MxLY4QZc3XoObVCqEg2lbLwMVD6eyKXDYhDrsBD+co8oCQ/fo+EFbFeiZS1cM4NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilSBtsgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilSBtsgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F2BC4AF1C
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 19:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718392702;
	bh=wlqdBGELStrBGjY9fs9RgAbro0TTqX7UpEOxRMXtg7Y=;
	h=To:Subject:From:Date:From;
	b=ilSBtsgF0NAcvcLICmx4EEXul4Aqp+aaNCeyfLWDfNB6+vVLdxPK7P7pvnCGfVfbm
	 4WXbC2OxxZ2BTAeYT+pa/GcIXysfsNpNMsABrkIHr1/mTZk26WkrDkQjAU1R4MYaQT
	 MUp7Hd2zSyb0/VfZGnlDYPP9hwFZjDa+WSaK1DmrOjHIesGSqCMo+jEBnn1vH6y1ty
	 HPSAYUEZ+FWYmmaFpLZbUo9a8P6QJCm8nzzpfP/+lhmORyu8E4N/gftyVK7AfvryJV
	 fCwEetLrw4xAot4RSxDvQQ3YmViHFy/33nAyFC1Ce94AwlW6kqe1lJESHb0yZ9u0LW
	 wllfeCqRHEVRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8384C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 19:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171839270279.2450.1889876452666671703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf3a3dfa6ab1851f289df3fde253598438eb78991c60660f5db8e120a82dc8a
Date: Fri, 14 Jun 2024 19:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718392702
