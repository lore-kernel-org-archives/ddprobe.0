Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ECEDDAB
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763888514; cv=none; b=hhetPo+LHSgrEZhuGM1+X0ON1LqVr8clEu3kiOgVA3DYOFOTDHiU2LNlNnnWkFdxOooXU91mFAOANBQ0DDur5+fhtO0LQ+GK2enHt4OoJUBQXCF40D5A+Rp3vKnX2sJWDrJ3b6hhNGXHB1ZCvsXGgU2GEMLqD2L2+smhSvfMd+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763888514; c=relaxed/simple;
	bh=x+5bwRtX80UJVkhylZECU9z4pNJp9PHZzQQxi4FsenE=;
	h=To:Subject:From:Message-Id:Date; b=LONdYRMvMEC3fewwcBvklVmLZZlcFG4Qwk++078niBMQ73KBl1jk+MDS/AgTHb7tSOQXmkl/1Q5AriQs+QLX4ANFWjmG0hjS1jUKPGam0Fx9Fw+pgWjCWB85X834QF9x2ngYgfPlbf0gthZOX6zkkyoB5HPKWjcTj3PLF+pjUk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AT8dylwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AT8dylwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57ABC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763888513;
	bh=x+5bwRtX80UJVkhylZECU9z4pNJp9PHZzQQxi4FsenE=;
	h=To:Subject:From:Date:From;
	b=AT8dylwTlALJqdICiGJzaJRE1LjFQSjmVLEtvSpwjf+YzEgOH8Fox2zuUkARhonpy
	 Nvmu0yQJXnXXqtElAJ1v+pAfB98vt9RdoZ01OR79FbPUBVFfyI85pf+v/maVR+DZ8V
	 yK2gkdWssp3SEtd5V+uxqZ/TG0H7EqwkmCUl/IkNXdaCKNdVGOvGOr41AZjD31/ZZ4
	 OPcMZBNFKWTVxLcx2vqGhqwxxCFFcvOQWy26dFZHlqrq2HAQZIECU0gHjJ5dCQcvTe
	 Ayv644SCwe4GWX+d2/tjm9SdMHqTgFWmNfwnPLYJnLC5HYTow1hkEef5+Ooxe2mTK7
	 W9Fc/ZeG6/AUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91734CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388851358.14193.10849446198207326398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f9489a40f65136557598ece54b188a011f30c2e172db8ec48a02be1e9f2263
Date: Sun, 23 Nov 2025 09:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763888513
