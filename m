Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300293A4F58
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770285834; cv=none; b=AZAvhzVffBAA/cRKxcLQhPWD5cQ7BTeQEXoh/7AspLvnCXA3uh8g9RUrGBieQSeGmJZsAOh1+/k5X4s6eivbWtdqaW2vD+zyqob/pn/IzSD7cC+C/raC5s/53PXXFZIUzvVYh13H7WcVHqRGWRmnCB/ZW/8/sf+KGRvlC2nwdL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770285834; c=relaxed/simple;
	bh=qxhlFm5a9B4JF1757E10q4DIuF45Mhm0mycSNx+6q4Q=;
	h=To:Subject:From:Message-Id:Date; b=RLFaurhYhoZ9pjYZTKGPfkWYbnoAcNxOpIJWJZSnxU0dJjRve+3fiLYljbn4MWbAz09MvLuBBSSpTmgjg3FVNt9AjjwgCtXwHn187SiUDPPNttE1tehRlNp8esmtbuYsOWBTvdeC3md2fmnqT8lJXuDR+9P4qjD4uB2JFoVpm9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slxA/LVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slxA/LVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9CEC19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770285833;
	bh=qxhlFm5a9B4JF1757E10q4DIuF45Mhm0mycSNx+6q4Q=;
	h=To:Subject:From:Date:From;
	b=slxA/LVvnzooZAsKJhtQg1DhhHhISFxVhtlRDOaSrR5SmXP19Oh4CGPmTDvcgjpG0
	 u0sNL3RyJZmqT5ko///OZ3ilzcxA/zu+zH5caqZspcZiGmvxFpxA6INKuzBTvONn7E
	 HaqZBpNKq+U9iIjpPW4FaewbZ7zNtASuZcKz41ES4I+70KfCnp1We6QWcQOO/XXj9y
	 oJ2jAUzX3TKaOiEoqQR3tJfWAM3bw60s0l8TiddVjoRiGwhyrhgcATpkVKbK9YrmDr
	 F7f3/vvyOsd6mvHKpCLSLecZIPsLZoHaawDPItMRQvjI15XavjQCUfywgDnmiV3dtQ
	 dYTRgHmGcUfmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99518EC1E89
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177028583360.27262.5558100600669274209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30fdaf1be3773be041337d75ff89a5bade9459b8fe261d0890ab7cd0f08674ae
Date: Thu, 05 Feb 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770285833
