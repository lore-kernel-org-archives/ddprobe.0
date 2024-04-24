Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 878D1159919
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 12:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713960023; cv=none; b=SS40pri35OXqx+UlXCLuPj+r330KvvU/8hVXPdkS2isv2M+9PT9m/oJyIFBBAV0N7lw/JNJaKbBk0SXPBxBvL+HwBDYzImlVvEfSJpqbrxFEXXuWncIT6VWQqdcDypRvVS+LiWP5k3aTCsYDc/agnrDtn2jS6vUothbutKjRofs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713960023; c=relaxed/simple;
	bh=hEruSFP+4oot85accA+24fIKM1aXxwH4+1wlTDyiHhU=;
	h=To:Subject:From:Message-Id:Date; b=F0C6FsTZKeMsomEaOc+TVDn6APXsZnutxK0gD5YbXggTEGPT9jgQFp5p2G2iHa4Y/SeilRm0vdsIK6+BQ5CF16mGx/5QW2O0OWPxBsGgpOgp5NJH+MtKHC32zmqqCPZfxTz500h2ug5IYiMR5L1dvZonQHRkowJncxYXnlYox6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V18YHtph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V18YHtph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3E5FC113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 12:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713960023;
	bh=hEruSFP+4oot85accA+24fIKM1aXxwH4+1wlTDyiHhU=;
	h=To:Subject:From:Date:From;
	b=V18YHtphzvV0OWBd4AXgVusbAuzi5dE9y3zpS2hBQFn6lCmEG2NYCwyRBoStwMzGF
	 QYByhHOWcWPW/hmeMQh6y2RtIm1ccX6CdXU2iyzkVMRpTqzf28GkyOihOo+2dHcfFz
	 0T+qOufhP1DUJAK68AxDqLMtd7KNwmnQhjvyW8A7kLqrn/LMVrZoPjJg8todxxDyIy
	 q1rVjjzro6DjLOWM7Nt4S9cQ2OND8bTZSy16gx5m2QcmSNiksg/9gplwckroN8PyK/
	 wT6qYv8WNaH+NDRTINX94qc7C2DCzPDYyyzyacx//PphRbTNpjDWkOnpIQJxNYhIXt
	 24HfJKdoZAKZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDA3DC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 12:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171396002287.20427.5910540734681574299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f01fee3188d73e97bb14f97ef73f07d4c2b5936f66775160675da3d7cb68bc0
Date: Wed, 24 Apr 2024 12:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713960022
