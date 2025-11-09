Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193F71D432D
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762691394; cv=none; b=HA63cImI9NM/gfms4or9IcbAwCcwp6UinA6idgOsfCboqT8tIYSdq26MjBJGsv3uQLGUj2zmsxM9Cve4X8xrq16Cx2FQNsoQRvDu/1kni2LethXZMOZmiq2fjAnupfb4bIoTK561wiTpSOLSig70xhpG79lZ3Ph9bukayQzOvQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762691394; c=relaxed/simple;
	bh=9QLkRIKuZgsr1VuttUCSYXfbusCQlEfJdD6ZuSmbJrI=;
	h=To:Subject:From:Message-Id:Date; b=rKE9aLtYQOU5HX0viMFrmqnEUmTNJEM3EmxNWJ5zG8p6nsrGQr8O6l6yxU+dO2WG7kDTvT/jA8sxhzq2EaXpCU8G/MHECRebDNcaHXdwd8qAfQsxyuNomliajnzRF3yW5+ynqU8mFyT5bp+mdKlE7X8jyPMKhhV16r1wOwkrD2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYuUjJej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYuUjJej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E184C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762691393;
	bh=9QLkRIKuZgsr1VuttUCSYXfbusCQlEfJdD6ZuSmbJrI=;
	h=To:Subject:From:Date:From;
	b=AYuUjJejJVwN+/rlvDPL6n0ESREvy+BHC2pLanIIZStFSLR+9ZwgmjRCAINuCDTnd
	 q6Nu/Uipd985IV/MGhK/7M6OiB+DqCfN8m7l1dU9DvUeqNs8qVH0BW3hrckdo4aWl8
	 3mm5ea+YucrqEScPm4VHIBgQeQZjEhN4/kGNqed5MvOcF8/h2K77LJoXGuLO060wVI
	 CNeEh8mbYHfxQH6+csEkDE4lWffpvquBuppSlue8/ioX3x237bExpI2dUbP7BRfmcs
	 Gxa6l3zv+SJqZzpEP3G52jQJtiE/M/WMCZqlvXrQfKaHkh6jZppLTVzQfzg/djHY3i
	 ud4PjkE1e9Bnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F865CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269139358.7190.14475126321576740703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22cf53c5b3c03821d3fac4025beaac1d753940063283841cb6d66ac253f98d0
Date: Sun, 09 Nov 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762691393
