Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545611EF0A1
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744061394; cv=none; b=EsnsqZhYO414Nyoo/xOi97eJkVbaPU6Oyon3q4flOEJcD0nLcZKUHQ+CIxIRMP0ia4UiumMyKhxHUZ7fB2uuhXoR78R3d+CD7xexLqV52VuO43FSr8KPfljK3Pzd2hRhhJMkjAzeydxs1jA+tCoR6JeZlOWAUUDMEsGzZdA3QWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744061394; c=relaxed/simple;
	bh=XD15Q8JcN+W3Mb0SX/8eG7hr73J4ePaGqLaegm3buow=;
	h=To:Subject:From:Message-Id:Date; b=Eur6MqrSJILSsO+hjBv0Ba20VGH+ZnG+afAUC/UPy/s/cxU9lDhjnZenlWQ7N33i1f/KrQqSkxswwOdjEIHhctvZFbTHKCJuMiYrjHzBmZl2bISKT7xebwSOrE7qctpJySQtvs/uA9yXTXUZwFZsdRPXb7s9sJeX36j8dJJ0DjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKfHtqOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKfHtqOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15DDC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744061393;
	bh=XD15Q8JcN+W3Mb0SX/8eG7hr73J4ePaGqLaegm3buow=;
	h=To:Subject:From:Date:From;
	b=hKfHtqOlLXPn437JwJZuBzt4TutCjFfss7I/l9e4oZyroRPYn5EmR/C9QLNItZOSC
	 m7+eg1ILXtm55fnaDmJybpUYra9JSrRmYKoHf/TNySiGdC4iDC4UADzrJCMS4WCIp6
	 yovlzuntevheuHY4vL3U6BuNEBXZ2u6FuElKEnxaZu07eUqFKm/oJcq03gzqFgzxjJ
	 DAAJ/OO4Pwg2ey2dtT5slrk6DRmTY0zJ2At5lG3fErM8wfVTP8ZFwIKfwUQduNtNzR
	 T3E1YnH27iDvRqpbuFaX2sjSwzVPSM8cntdrrhDWjwk/5NmP7QC6DnaVW+0NLNHHP8
	 zLN3mOHEObctQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F64BC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174406139363.9142.13015034449826955007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9a602af53b1e8487ecec1f58e30ed2151558807103092bea3517877ea4541f
Date: Mon, 07 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744061393
