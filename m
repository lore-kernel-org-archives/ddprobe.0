Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0DD4C7F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751429394; cv=none; b=agBYf05g/suv9TGOhpTqghjPYsS4hWRZ4j2VX4E1OJcilOsmLO3jqIt7viwC1VEcm4v9Sk4AF3isoQqCDR773dJmZVOCcFOQAKzQZJOgLmyhXgpi5wqS5eCyfFp+WZASUeyFwLxh7fOSG/I7deEfiga+w8lfeAzLb8CcGEIa7Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751429394; c=relaxed/simple;
	bh=jIVIfSwqiq2eGldL08ncQ8DKyjukbudRHV/ydwuIyzo=;
	h=To:Subject:From:Message-Id:Date; b=KnoH7hYETpdqf1f4Dcm3qlsI2iKpdAiKSQTelhYjg2Oipo7U0Ktt1r4undJHBhEiG8gQxjf5sOeDF/c/yvu8w/gOdiDc9A+Qv6+tHaQ2rgrYuyMPTnr9yk0kSYuAOY9umt9YHhjp3B4MuVB38gFTQYsiAFeZlVeOh67pAf9fNBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRqXgzvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRqXgzvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D2AC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751429393;
	bh=jIVIfSwqiq2eGldL08ncQ8DKyjukbudRHV/ydwuIyzo=;
	h=To:Subject:From:Date:From;
	b=cRqXgzvXEVIuWFXp+kYdv0g+2BLwRm4IAbtViPKbbAX1riSgIVPbT0YO3AJpDBqm1
	 eEYQwLfnoQmbreQcdVK4j/PuVCAolTJGJ3f0xw6pXqmMS1d9WoEPY7umY8ZpHzkkOR
	 6jrETZtLg683ZZ52Q/7kOLsJtmnFmpBl+lQ52+v47OcNeBNwIVGLXpYQGWgM3CnQeU
	 0KWMHijBdojIr+/pZm04zekQ2y4sxpKruvPiHcRQ5gSQ76oSzNUHTA8rpleitWfRSF
	 +PM1TOzhfK7upQzPp0q//sVKECTVj3+r4nL2dS3PFte/O80sY6ckM9+riwpIdBuLJt
	 vKb4RGAlbHWeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE1C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142939358.3240.9789740463506252379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c889023e1a6fd3c12bdff05b53c33d08c7b1e43057180ca913685f3a79fb4fe8
Date: Wed, 02 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751429393
