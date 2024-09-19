Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBB53C2F
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726707954; cv=none; b=b/leuSHCv8j1wWI25EklJ7GGuZFoT7vWrvAN7WZzuntRg4VfHqSKNL/kJvJAapdH28bENzLQpncdcUv3fmaaWUxGWoH9E5spFNJY6rzSByfYzbpUiRfG31+UW7o5t4fqN002RQTxrAVTYbIbNnFI7TYKG4X8ercNoFmlPTA4tG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726707954; c=relaxed/simple;
	bh=Uz+3+ODbqIm+yDtxyfAUUoSmQ5bQRJFPF1LEf79EPZk=;
	h=To:Subject:From:Message-Id:Date; b=p2LvPf/b4J4dgn7OfTw4JJWp1vpWuPDTj/ItxG5IX9NL3fZkMq9OvhUCQcehJLdYyyPIHFKc6sUgD1p8wIayAXJrBc026NM1gk7AGX4RFVS6E9ctoxh5ZDxpe5b4eC1RjOVPfYRk8irBHjUf7seldUe2EsxF/N8wRDfYSMp7HX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILq7SpDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILq7SpDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38E3C4CEC2
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726707953;
	bh=Uz+3+ODbqIm+yDtxyfAUUoSmQ5bQRJFPF1LEf79EPZk=;
	h=To:Subject:From:Date:From;
	b=ILq7SpDy0F41yrNGCoqxWciyc5V8Gjo+FSqqPeZUpoS3l8CXzzEMZI5XB0eu1HiJU
	 5gRhoE+PZMagcbnbwbZJKiqEkcMpOt/LgeC+Yb/KmGytIMfUnAZfJV5j2kWilAnfyK
	 o6pLxEH1jLiUJbF5WZPTd4b6eViPUwGk/5vvooWuJKXI4Cxc7p0cfM8TzTH4Pl2DpZ
	 Z/ZVNkPk7YGHkrG6IMIhmnwV1KeMQbUeWmVVosW+sEG681f7VOZKpMmIlvU9bCSRoX
	 hQjy9H5l+6EIMs9l5mRvXfr/Cu1M16klv5mHKDC2g0Ap5nVOwTsy8GD6p7m+oebO6J
	 yoSB58xB/K9gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C963CDD566
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172670795361.1691.15086526417676802092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e4cc5cf029dba12b3df4740d8e62330fcce99cc03186eab458dbbd875f772c
Date: Thu, 19 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726707953
