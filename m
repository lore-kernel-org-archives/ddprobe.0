Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551C5156C6F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718702963; cv=none; b=DyfpQPbETN/eHqdCe+Upy29hy81eYsUY8YSULol+A8OnIDyORRfpDGDzTQAnsMWTpdc98Q3HShY6+ryrDYUGqaeBGxBFSQyDvAQeDZA6UWUjBQ0nc04WYfT17KUUCVQBae04MTMMpVZqch1PJcTXEMxBAety/S2MQ1Lb8BSHnh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718702963; c=relaxed/simple;
	bh=nbbn7td9WPNHUpl6D4OzxlBMot+YrZqScaiGgjWS4nI=;
	h=To:Subject:From:Message-Id:Date; b=Je/OOQrdhfOT/ncO1CLiEocEZphV14q1cWAaASO+9JKmiWusUs2cxBz5IDVLqXXcobTTdNd3eRlzFeOpZPG/gZSnT2H07jrUzyYSI/eKfh98Nj5XmSRNWJBi32CbRuS/O0SVzakcJE000CcJ6rAWFQyhtmh8bo1kQzWo0fFckrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nx71X1Id; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nx71X1Id"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5838C4AF1A
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718702962;
	bh=nbbn7td9WPNHUpl6D4OzxlBMot+YrZqScaiGgjWS4nI=;
	h=To:Subject:From:Date:From;
	b=nx71X1IdDecfZwFliRAlAUyT2KIttoazFViDnGOz1+e8dnXy8Fv178Urnvexitbf2
	 aHKuT3c7S3CtKgJ4dj4wGNA3gYuf8R01SnVd/ZqP9//80C00ZFD+69wqKnRppqjvpk
	 is/lyb1bDNRXL8wOHv4c2C+9SyyihEmA9TlEc+696ExLNZQQojiJMOlY+lxGaUStXK
	 KTiN6Qy7aykLN4m4mapy1Op6LhFT7htuMyY/WxLoqZrZwOhCiLFx0HxngqthaT37jr
	 plt3rNdF2FoFfKqT6NnvYJ1eihVAI73C35HxBHa6iigidaqaf2XHP48YE8bzPYgek3
	 KJ7DkN80CjBBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDE59C2BA15
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171870296282.8838.18085422282866377534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45de07219d08af505c7e084cae3939befb991cc5da2e083ee6c248977be3a21d
Date: Tue, 18 Jun 2024 09:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718702962
