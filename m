Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F2A363C47
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763051994; cv=none; b=irsHyWFc5gzb23OCZ5SXg/MIuv8SAek6yp6b9a20hlmc9PM7wGjRCjcmzoxmmlQXqZJF3+paQl3LQf6yixtHMxZ6JrjnhK5Dl5cXbv9KE39adQCt0WzwuMLGqszWIjoRTNE4kMuJ0eJGvdDVranw5/xy6GvhqPKYQiJb5nEt6Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763051994; c=relaxed/simple;
	bh=V+OZcj3fsQPzu0CMrZXnase7DMRdOAbuC7dAzJyODzs=;
	h=To:Subject:From:Message-Id:Date; b=P8xHIGVRVceCZ08ACvYmx2qwbtUOOpIVy1/cMzJ04ovxHRVWHe4qfSZ+4Oh08UnZaWpolOP5X4LbxlxvcyvFwl0/yrIt3upy2K6XCIiG9hFi9oMI/MS1/edtvp8sADkSD3fwOCH0+5O2cPmdmqRAOb/QEm6wuwc7JE5pVl+e+Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DW0LPNJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DW0LPNJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E37C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763051993;
	bh=V+OZcj3fsQPzu0CMrZXnase7DMRdOAbuC7dAzJyODzs=;
	h=To:Subject:From:Date:From;
	b=DW0LPNJlPDcTto4GOac94lngVORajfw0uw1PzzbKqRjxPR18byUGdvkUaU4JJOI3p
	 0czNOCrS8/8LRNW13VNV3E8GPkK1FjFNXQlDDziIG9ZKVl2JH9l1YpJ7zAgGy35sbJ
	 SjzULRQuQTA8fBVDk3lae4YHPKoULorGmXBfJF0uwbla5sV01ViTaQab2Kmi76szuU
	 wgytiODiegbmwIQs+sbhJ7wZiWy1a3QAspdve9eV4V/xjpFm0i3gz+P6RM7BcCdERQ
	 0qFcABsMi/OnqqR05KU5x1bcmGz3R6KDyHhQ9mC1FvjXtIuq+DjRnP3WmsPxLYIMdg
	 a1qeG7aP6Z0Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9692BCD8CA4
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305199360.26839.5202054168194357970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ceb5d665422bc0a0cdc9d8009c455155891d2e66555e5fc4f7a1b5d5c1e85b
Date: Thu, 13 Nov 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763051993
