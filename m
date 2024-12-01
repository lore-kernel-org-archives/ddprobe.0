Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEC12B9BC
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733073354; cv=none; b=FQWzPfzoWlJtEOad1Dr+vRqdwo+rriTsG9pD4TMIjVeRpT19tOlTnlyvR6rbYjZnxUxC8tKID9L0Jz7iBA1y+OLq8QXTeZLzSldoqLcwT+ug1kpzB6FwvrLy3VJGlbjF09YDejqO9GXs8o7l8PiVPyiJuZ8QSGlI3naDC/6x7DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733073354; c=relaxed/simple;
	bh=zmFrRDtoOsouQna5hFBYC6idjAB7qCO9JiUOhRAGYvY=;
	h=To:Subject:From:Message-Id:Date; b=CY7n5WKdNfHoztE7u8NkRZcgVt9mHALm8d9BB8xYGiXVTEbe+COmhfXWNdTRVRaclCmIFdUbYZlvm82qhaSXZ5lkfvJBXUjDJnJnjvw6WxiyTuQh3OMXNtiVgqdM8YUAdxmLbrALQstp5ILXR01KUy9FVPPm873M0DFGEKshH8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kgo73trI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kgo73trI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD08FC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733073353;
	bh=zmFrRDtoOsouQna5hFBYC6idjAB7qCO9JiUOhRAGYvY=;
	h=To:Subject:From:Date:From;
	b=Kgo73trI7xrGnNYPCEWAeXXlOz8xwsLwyrhZtLxqbYM3kAEMBMaWvJAg7eOzKFOvM
	 FqiIHlQ/PJSWjWgzZT0DcdRLya/pr0gJwIwaE8amZipUwYg3sS2SDqlWsvP+DWSMMn
	 ivXm2qxMjWUhuKgP989h5zhnycImWput8NG4Upot6uB00L3aoJnYZ2px2OHbYxog+l
	 /JFhN/4Z7GLpm+goM+2Z03v+1THGSa5aB5qBHwc3h5GVVYtN4H0WeycQ4HL6NffAJM
	 YIbQ5byYhAIJV1fsRPXDZ2og1hjfuB24PznXw0VyFhiaTu29QM41/RPD7lLvSPlcUp
	 12oqRQfT9yZ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D59D49779
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173307335359.5292.16847414212183461899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2b298026fed411222b70a887390b70bea4c77390456b3e79b936e41a7e1358
Date: Sun, 01 Dec 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733073353
