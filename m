Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258D23EA66
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775320534; cv=none; b=g4bzNI9IIFMe+iXA3Ol7OngVLlnMRIeznG53gcwqJfy9aOTQgazjl1z0mOMYbm939cU9cdKNNZz4wCuToy9PF020ZsQjBNbOK461JShmy3RLwgwTNGM2h2RPxIgzEcsed5VdZDxcYblqXRNY1XLjFQ2Ox70LBn0hVaxQUbIKrrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775320534; c=relaxed/simple;
	bh=NYZElQK4TyuPAX1ScHX7QFARQRXwF75pJoIjTKO4ez8=;
	h=To:Subject:From:Message-Id:Date; b=ofKIBL2+Frbgsn/1egM/UTTNl+yS57iCM+ozspBl50mBBVbipAA9C2mu/JtQGJ0S9//SlrMM2JiyGXz5jpjnLVPstoNup5NW/aQYsVtj5njqQgSfsacpBu8eG5GjDtllbTkZwi4y+L6M5Myf36RZ/E2ayE5/+aEKkdMHCBmzPYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQJBRANH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQJBRANH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC662C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775320533;
	bh=NYZElQK4TyuPAX1ScHX7QFARQRXwF75pJoIjTKO4ez8=;
	h=To:Subject:From:Date:From;
	b=iQJBRANHDjLmwVqeGS3S2mbuqz/epcEALtWAxYafc+OEmOzZXaBHFLi/yF2EEwhGS
	 dEznH8UkKGFwyLQdyVKt7yZ/kYs0c1+Wm7TNPn/mdH+2d1odxfnzAbJ70oLyRH3FJT
	 Lf3VcF10QJyqwbpscA2VlkrX/S8ZOMqKvkMAYQFCxM2tvm3cToprpk6zk6cj38mXA9
	 lNSnq2dJD+Ln/HMe+bs1AfbOEYbLgVMX2ClssGJRMJb5adGTpTznnlPF8gc0cWjvrF
	 AIbflLfjHUKQZyWoa4ALpo3C18xbJHxXf0Cm/3WtuMZuV+4U+RkUnCpxJkAh5B78xr
	 UblguIEgpaWDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6DFBE63FE0
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177532053371.12539.4116437174731614828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1009710da8053cdfaeb13eb681cb1529fddffcdaffa27d5ed9f40c5e3f08a041
Date: Sat, 04 Apr 2026 16:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775320533
