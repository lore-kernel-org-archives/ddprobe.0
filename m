Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207592D5C74
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760540394; cv=none; b=s6aG5aeIJGMz6aebNZ3DILL8P6H1TY50pMNDsSoen4+kp/sehgnYk/G3Ak/xihkA+f70WHQzCHYVv3iucC1zg/ylLRM2EiNlJ2rDssUl8DXWIrumdYMrTjRgyrtAr9e3c0f1dvXRQX50XNgaB16JhBJWP2TNpDWaZDeQZ8+XUnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760540394; c=relaxed/simple;
	bh=pIU2l663dm6zxZNxdJKzbmeRwDbBT9eMdxk1OAiA21w=;
	h=To:Subject:From:Message-Id:Date; b=bMhXiu4ZtLZAlQkE9L803nL8Odk07XBHaCD3VA3rwNtz9CvfcBGc+Q5tB65upDvq1vgcSPe5zlHgLjGEc18K92SgFz5FPp0LFIFzqfUp7TkDETDhcDoAe0UNHCMKu3sbLg9M9CHM1JvoiWmCKGOB6ZrS31AOtk6vOz+AMWj876M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uvh69ATV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uvh69ATV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5BAC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760540393;
	bh=pIU2l663dm6zxZNxdJKzbmeRwDbBT9eMdxk1OAiA21w=;
	h=To:Subject:From:Date:From;
	b=Uvh69ATVrBFePAzDW1cBcgj9SfaPI0Eb02gCiAaw9T0db/+H6WYDl4cmN77DHbGNb
	 9lyrqmHg7hCJ2P/2F9hURjpEM6S3NmzrwwXEGfjtd5XZih1+vbZa3R7vfo71ne0+8G
	 mlDPLtmDNoxiPhLFOs4o8ht2ZAhLk70FtJpAveNZ0hGeh3ft2J8NkPcDzUS+h1i3tJ
	 3Oe0q6LPJh0JgDXG9H4aS6DH2zfWn6TxHXIJYI0MYj8vGwiHOMYM7PEnb3dGMCtwSW
	 iK1bl14km4l0eYv6/9Y/+G0ufW9qQG8ocxlisIXZQKvZxkNh94ebYvo8lVw5ut57GJ
	 GmE9cIFQktBYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1F4CCD194
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054039362.12619.13723645976253250014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 326430568e44f2b950aa852c5e782bec7d2db9d03c942bb4d917f1fd8e62a45b
Date: Wed, 15 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760540393
