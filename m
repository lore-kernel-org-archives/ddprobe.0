Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B9425761
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738332954; cv=none; b=elH6zsIWWDsv6Fo0vgN1nC5chFRXxQCGg4GkXe6XoZUcO5rWT+p64ChTgM8sobhsOTrrdN/hZ428V0ZOlvEm619pZS6YicOc+IpJMKBuThNQ4e2eCBUOv09kqqQ4RgD8jZoq3dWvmzV2zWm1m88o7WVUz3JGVyGAq/ShEB7qoeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738332954; c=relaxed/simple;
	bh=Sp5GXUqejVnMPpR70Hvn1aHYQdyNumi4NvIkU5Cd1Sk=;
	h=To:Subject:From:Message-Id:Date; b=c/63ZxdQvZhd+R5xxeywGWuEvv6dPa4FPZqu7qNF7JT5xezqf+zZnndiRiy2VzBgP8FC6hC/Z3ZKakm2uu+V6bIhEpYDT/Xc8Va0VVLTGtmOX9qKh6InVIHNqdPsumRIRMSQYFd+k02REL/bZ5MfKc4WC/WEqlPTW4NX1WiziN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dkmw6Cnc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dkmw6Cnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A24C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738332953;
	bh=Sp5GXUqejVnMPpR70Hvn1aHYQdyNumi4NvIkU5Cd1Sk=;
	h=To:Subject:From:Date:From;
	b=Dkmw6CncnqaQJ2QFGv6Sb3FgVmv6bG2yf3e+wtxyH3HqueEFECa5F5l3qSXlt51nh
	 jpdOHZWCwM9hS1ae6hjUdVuxtegty4DiWHap+EtFax47MgXk40Ztrph1DzcyhDiwho
	 oKrZmfcsD90qxpDC8uj+bHaajWDlJe7819/VilNgbg/y8UgBjc2p2YrdVebdwKXDNG
	 QDTC7oODlE57mTIUqB5CiCcwhZFNb+Q9wdk4502TBdpMBq7cH0W7lDG1gd5a8tsPmR
	 fCOb9XBOHwpQ2ilh4UxkKIJqCVuU8E1gPHps6+nRGdji0vo8hJhuCo3LLVnbTN9y0+
	 hIQFM5sCDn1Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9227AC02194
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173833295359.20838.7422157788039292256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708f733bcade8e76774c76d3f0c426a12f8c25661dad73f655f78fdcec1f004c
Date: Fri, 31 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738332953
