Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF1B3C8C7F
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779867154; cv=none; b=N5JNdaJ981kbnYFmf+3IvdPFry0nGM7U9EsZyp9d77SK7ZGtzE3pwuM5ah3DqjKBUwv8RasjpGz3oyz3HauQ2ojscXIF9Nd0aky6U7sk8bxzwOwNrEGJXF2++65dLddfpzY4O5/4lF8dOMhSj5/Hm+2z1HPBZBeFNN8VPNC99+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779867154; c=relaxed/simple;
	bh=tyaIqmAQdHXzjwneXU0GAWRt/HpvkYkIJ1BqOIjQ0xA=;
	h=To:Subject:From:Message-Id:Date; b=GhD5wyRteFEXjjEF2eN/A6sxRTRjhR9P2cb3UU+qD+Ffog8gdiJ1Qwc+n0E9lzeW5O2mIkzwV6RAXcgvs9C6Gp1b1wnTmjV5/ws0U5+Iwgj7tLFZIn9YbztVpiwOi5f7S2ETDqC6+kjzix4ops0NMDTR+dmzuj6o5p3ytQOxABU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cK4I5vuc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cK4I5vuc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB0CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779867153;
	bh=tyaIqmAQdHXzjwneXU0GAWRt/HpvkYkIJ1BqOIjQ0xA=;
	h=To:Subject:From:Date:From;
	b=cK4I5vuc1zAp79Yf4rsRIH3Kz3clRkFW8uxI3XNdKptmeAcBMd2T8olEHqCKejUBh
	 RUS8776zmOzCbBNEKcseVira5+tv+BBxW7NRCLu47BxzA2MgCgfgetvKV+K6752PNm
	 yQwC/DSNXHO7xCBwoc6ZanY8QVtGnf4+yVVylGMCnMlspLBG7wca19zIYyHDmQyqyf
	 c/kvNYCUtphMmLP5heGtjeoyICmF/hBVtQCAQzTdClPNX/y+1X9rZPV6NapWIRpl+R
	 ot175jChLM9utWBPLMhWQamSnQloKf+NI/61X3GIYNuAqrD0SmRtQlfNu6H4p8TU7r
	 9tAuEHb74DcZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CA3CD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177986715368.25189.2450910832257200394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f1a6613531ffd7d2e56b0a7242289fdf6e68d3fe485cdccf178f5626ea801f
Date: Wed, 27 May 2026 07:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779867153
