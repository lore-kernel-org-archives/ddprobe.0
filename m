Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D7946AF39
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772138694; cv=none; b=Z86dkSz7eQ198fWvJn1pKDHEInNnUslsRBYgABragAjtwAuB6tPVmApWb2PHUnmhx98tA3d19SAKllSde0S6qNL+a1lqRmXslfdrYOqfBarcPm6EohfX3WwnzNPjScjwF1pgkyKO+1j27IhqI7aNxr+hGhzPBLgnfABE4yHgwOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772138694; c=relaxed/simple;
	bh=RCTuSta0Y2aOT9Sd4Mg1W1BvzPNZBmKjhekrc4s4aEk=;
	h=To:Subject:From:Message-Id:Date; b=oSfLfUJGd66Hn6v5Szyps2MLWqV5DTHPZ5fv8d6+UztPJ3W0nKitXgWyJW0GN4JOA7t2+5loD4dXUAVfYeRQ4cfUpW1R8WFjO1+vXPNiT8FwQuWyAOqZhrM/f49pukTv4Lc9xaAzrteGYLe8rEBrcaHYbMGpdicKdFmlWwU3q3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDubBj+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDubBj+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FEFC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772138693;
	bh=RCTuSta0Y2aOT9Sd4Mg1W1BvzPNZBmKjhekrc4s4aEk=;
	h=To:Subject:From:Date:From;
	b=JDubBj+3UwTV8bz8Q255GjOPcgPdJLxNiibXV+/alNFicG3nWmlIREzWVoiQwqJSR
	 E/MqvHuJ3Du30awLjDmrQgm/vCVsxxLq3lIGvqslfehDdMiU7aNCVbYyy0y21xuuLr
	 XjaEMTytvZGw8T8z31aMoO7CftIdJFkMD9RFlkRSGylZS5VvLc9kuhzF23DSfzL6qy
	 YV5yS25k7FB6Lfu4S3IYxX0qmo4oHu9QhDIG3dGQykYCPEPsiB/Jw5Glxmmz+GAMiz
	 JZKmeZkQbit1MzNgTQHmYeNR849gFFw44QEgaMu6Xujn3nYqQNC03rFE+4jjXycqlb
	 ipCusQcH0h14Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91871FD9E0A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213869358.25607.15489988945616800918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 016ad88c550dc5c45fa4c7af26398a67f08c4deb70143ff824ce0f5d5c46c7c3
Date: Thu, 26 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772138693
