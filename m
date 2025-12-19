Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082C734D903
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766166234; cv=none; b=bqLESM+H3ruOeCpr1vscrPQd5Ydmu00aPYD6RcDbvG4IRk00Dlocp92PDdLe+vbr/4jT6+Fl95IwmVDS16/rAXsxXXUYLwK17si6X5M0/+R7HoJhZkoEFpNbHVWcpDB5b9UDy9pwWofhvqXRF4bw6GeREl5zq0aE7NGMAa7lAmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766166234; c=relaxed/simple;
	bh=vupmBdzRrqK9TeY4WhJQWgUJTtFBFi8gBKr9H1RTxpc=;
	h=To:Subject:From:Message-Id:Date; b=rkSGPYDS1HcVFjxaJgxV1g8MMMKCD0NVgh3NmLOI8NUB27bXhVUDGRw/qbYAByBasdpF7vMa2loDcuRsTwrpt/nk9U05A6Glotf2ihIp9bRruIK73XW3BBBZ6pZW/NB5RauNkocxG470b4hG6Avdg2mbfE8pRLwAMCw+OALfiow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmR1wlbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmR1wlbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D042C116D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766166233;
	bh=vupmBdzRrqK9TeY4WhJQWgUJTtFBFi8gBKr9H1RTxpc=;
	h=To:Subject:From:Date:From;
	b=FmR1wlbVkTNG9oCvU3oZAt50KlfkZN8ETRP6A8ZjtqkLdA0DmHGxn4mxxudIs9Pyj
	 woTuRSGrnWR68OWl38IgRFOD9DbGeErm/MNMfaqIh8CYFib+pfLweXlpY2pLEMJ5wA
	 XOPZIiQExCHxcUioxk6/ZW4vJiPXmhAG7keUhxdVVrWHk1hG/FCn3gQXE/PrEVPBHf
	 WTQ6+WEc2UhJTbiXARXi+aSU3DC8qvrYvnNf9WQwKuUtO3ogx8zwmhF+dpiIsA+5s6
	 zo3D349ttsNn5E2/V1JsdhaBBkHRuGMNYBbmCFOwBWq5kxTfsqOfMbsuwduMlVbsGN
	 5zPB/26a0h/0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90317E66882
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616623358.24145.13150531329932955576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b26b335ad98e8a77795dc2ee57c22542622e99da381909a06da6c6b246a6ea
Date: Fri, 19 Dec 2025 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766166233
