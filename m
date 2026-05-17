Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266D6405C33
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778977834; cv=none; b=SzvaBBP8GEMx+mrfu7IeiX2ZWTJ0lmDPKx9a8fy71+l6HZ7jP+am6Z1v+lBTDKT0hgOvUpEvw84sUE3YF/tRBkKNZWp7FJ1Ka6LglYbbJSDiCG8dFy1boIIyT15S74K9vN7R+exfUMIZGr008YdS61BbYeLn20yzyFxDX10rAJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778977834; c=relaxed/simple;
	bh=6hMrG4O3RK5bvd6ucsCyfH0xyhhLDvf6A2rVG99sv2M=;
	h=To:Subject:From:Message-Id:Date; b=UVtYb/e2pJ6uZ8lH+fTYrEsslFV/0Lxp0pzO2QOEGR3ofdPczIIiZrPDH4hYgj8VbZDVak0wRa3uGHbEWve/eodVhqu0cGbCuu3vK4IzbVgKgmCMnX2Fh58be8Z/OW4f88kSctvhun0sf7ynywMAfqeVxl3ruje161hJ4gzfBcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rK+SQpe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rK+SQpe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB4DC19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778977833;
	bh=6hMrG4O3RK5bvd6ucsCyfH0xyhhLDvf6A2rVG99sv2M=;
	h=To:Subject:From:Date:From;
	b=rK+SQpe3vGyirA7jXWT4BFi2s9K/ulYYyfee77n0wewQjKv7HKmeGtpCnIUEa7OZZ
	 /1YA3D8+SxrN1DbhG4nalFtUrZygb10nJnqgETuHa4I5InGbddh+nESDleyjlNsfsS
	 F/asFSehLU2Xp/yXhr/FfpvAOQSe77eYdD2Y7P8WDD1eAwAYFRsZ5QZsBnSgJE67EM
	 +L0ISg0iG/AFSUnJ7xsNJdnjZDmZ0PGsVS52IKkn45Rhrw90gvdsphmt6naw9rSKo+
	 M5SX5Mn7pQvFVvquJ/j/MRvcJFC0sdGmHXL8bE3sN5x6++XBs/US7W1QLB4IruBXmo
	 /twz/OWUpW8Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD45ECD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897783368.2855.175431629251424421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd5daedf9b6d084456225b9cd40ddb9d9e75af8d8cb7a6a602fa72ce99bae7bf
Date: Sun, 17 May 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778977833
