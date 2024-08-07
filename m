Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7F91386A7
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723047954; cv=none; b=Co/e3/CrKF7iV9lsQv2YLomaDyd65SmdD9idTMxZZ7DU4FzDHaFo9F9kXY0nkLbzOmQUy3pz71JcqGsiDLAcptU6ywlFozATkF5uGTTxvYWxySDvl+ZVhXBuC8SpFc/aUJBxFw5u+v8joKItV4ST2anZDpNdabBO9ZyjDna3X4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723047954; c=relaxed/simple;
	bh=ajSsLwJkWQ4gjvHGOftjrUXrXdS3fJn2/InXrjn8DZI=;
	h=To:Subject:From:Message-Id:Date; b=LMzan+thw4pwmZmk3IUq0wKcwsJHU5TlCX+BGJWx+owlCbXq/rYUVCDb+uaL0+6pvjXItjNVcMynuvYS3OAaXajE72u/oSbXsyuJpJfgtBfu2CfNsvLq4/fLbBqUqBK6bRqYs+8T8PE+w86bidu0H5z/ivR1Au5AWqv0qAwa9sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AakIWgWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AakIWgWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E30C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723047953;
	bh=ajSsLwJkWQ4gjvHGOftjrUXrXdS3fJn2/InXrjn8DZI=;
	h=To:Subject:From:Date:From;
	b=AakIWgWIuYswzJlZCzq5dZypcD7ogpDmh8u+I/lsiZ5Ozd7a2p3BdQcytuNzo8GHi
	 8YaOPcuNKe69nZUCjk+WRrIu1Tl3jKwClmVcRV+7bqYCeGqiNfj0cs3bvRF+5+7MMd
	 cgZCT5Ax68N0a8ZYn7sKjgj4B9Ogg4W8F5Ytgl6SHgOEXL3sip3lJ0HtTVev8QRwLr
	 RowzuaP+y+OuYZcgBrHyQOe/Kyh2QKJtkzHUxcXrP3bKE8qZdK4Q/BZiokNd3sMPVR
	 dfo9a0P93kpSstImmYy+evhQg7u41gMW/nXyK25aqLsktr9sIvWMccamDEk27prN4c
	 VPHEF8FY7pceg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C3DC3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172304795371.10259.11570178790417353631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462e011fbfc19c580fc1bd43fc40f76563a3fb784d0d56ff2ba0e7ec643ce55b
Date: Wed, 07 Aug 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723047953
