Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DB916C451
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730580954; cv=none; b=iM6aK1lNGN0AklpAQGFu8p8FtPSr7CFrzJS+Yiwhx0g4txjey3oSOLXLvDj3mHSZzVPH8GK74D+1xAqXc4GRJMb4Fy3rnjhy2NWpOdNJen6cX7DNoBL7zyXKKWVA/JPN+9VH3LdP/u7hw9KL97MmusYWkwMFVQAICkulhravvNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730580954; c=relaxed/simple;
	bh=48ULA+JgByfFCIJ09sqqcgBkeF+Ll4Oiu6VuYBMkUVU=;
	h=To:Subject:From:Message-Id:Date; b=nu7fkXWMmjUMwywa+wT234H+3brPQk15JiXk5uDxuSoi4Chxmo9lUdVOa1WDDyRR0JMCvI5XQPnTI2CywGYi5kmh/CwVkR0OmEVVTLCylsslXCNZ5imRCwlVPKgc+VQcwZXlMpVUbf8cL2j4eGnCJKEk6weqFygyXWPcVAZ1ZZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JG4SjFZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JG4SjFZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7796C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730580953;
	bh=48ULA+JgByfFCIJ09sqqcgBkeF+Ll4Oiu6VuYBMkUVU=;
	h=To:Subject:From:Date:From;
	b=JG4SjFZBVwFni94hAQ/PzpmI37lmN3vvjWgY0T3bZ4l1LpBo43cjE5zE+Ke4OAHbh
	 eSdyqFPYlkEmNeEx+b2RHxi9gXGIUvDeaKsPl6Kfks9U3oa1m6wMQUSb3DYxtC5yUt
	 EZH7hebasb5wdhNdS56GEHrrSw2EtFEtOq5A3IL9BJkIYQayGMq0oBAMs/HgMN2hWq
	 8o67247emFg5QYLI2fyqE50W2/24a5QSn3ddHwLjIfAqLhK2nCdraxJoAmImJENjJL
	 V0QP1PMFzPNLoo/OzNzugX/BPtvjA4kaSe6TjSVCEw1F/vVHCVE2icXAJkmKHJmp0G
	 /v7cU2txYLyDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A1FE6780F
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173058095359.9804.10821350110975147186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f33225a2696a67250971dcd01ef8e06fd271d6b52e9a8f06db0e16e19d46216
Date: Sat, 02 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730580953
