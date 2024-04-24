Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A39C29429
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 02:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713926423; cv=none; b=UsOw3X40Y+/23tnyunk2sOBl7KHf7sLyuvbAdP+lwY/e9nkjKAy2KsqdjZrr5FtZCkkJxA7TSxOKZz1yl/xPCPlkmEWXVNr2i2UA6Qaku4bOWKOJ47YK7r5H9DCFesUuyjhr5IF1mq/kVKry/7mdbmxjwQZ5l5PXoHftbN8Z+vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713926423; c=relaxed/simple;
	bh=7S+LWI8tza4sg/ijGUvGX4QthMC19WWTtVhtVsWvMoo=;
	h=To:Subject:From:Message-Id:Date; b=Dp9H8aw0NPWDNVGVWJB8Rrl9f0OEde9FYSjkNV/F+GCruYg95QMQGBoB/RL7xJVE705sS4b9WSksEHvl0eK5NgBWd9M7CNXBsrRyrsLTkYTw9Tshqphl++YLtZ+PRGf1kXSeiGoDo+QEEF/ERexKXfTsont9iMaLEdPVoW37i+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fY87LOSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fY87LOSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9022C116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 02:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713926422;
	bh=7S+LWI8tza4sg/ijGUvGX4QthMC19WWTtVhtVsWvMoo=;
	h=To:Subject:From:Date:From;
	b=fY87LOSGHurzWDqT32hn6QLzAk1NbmPpATDGoptIzPvj5f5ASa2G9XYr2BrjPqHfI
	 OthtUAZxklhK5jyeANy5IgAf/Bhi9u45e0hqAcLSH1XZ1SuFEomHEZ8e+DJgJx9zCJ
	 PSp4I6wd29KNLRIPCd6M86sHYYdples2ajNpdP7i4DdVLWY2pkk9dqoFr09FNnZTMr
	 Tjp2BIS4qQEUyZL+DBAfsHXMMhl3MW1WYcqioOxv0yXz4e59J8Cr4VRFCnD8u0iAAR
	 SSDHy8UwImB2TfEAKsSZhY2ZuHHofAgL/zInsY8C43SCuYe2ZK/XozSvmxYT8Y/kG+
	 4kojAPkd3tP3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF32CC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 02:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171392642281.9614.5419082837247873382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347a91c5f6028ec20d011996dc987aae05ae3e77537d966e7382db7741e8d9e9
Date: Wed, 24 Apr 2024 02:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713926422
