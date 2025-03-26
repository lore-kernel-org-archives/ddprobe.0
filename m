Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613F0A48
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 00:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742948394; cv=none; b=ZQAKRbEwOpNrMxmBV+HDxVgz9d1qJSegv6JQuFDjfR3nve9EKX3dRcvxgvTGdMQ0pVR9lyDKE++Pr7pEwaRFQcYvcYtFohZpdJO+grP+y82NWgM/R4/DLibNSCmOi4BvZeibRJk4Ju2e2SISHVYrSdB486f+EcyxFRDzZR8vZoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742948394; c=relaxed/simple;
	bh=Dfw0qkgmcWMnOv+rUSM/sRBh1SR+4o3DOk4x/glFOGs=;
	h=To:Subject:From:Message-Id:Date; b=HljYgZD2XUxYr9OW9fBW+Fmvau+rdfa1qh/fPs5s8fDWNeY1g3nDKzok8gaYHAAH9ZLk996Gn194WikeCuG8sTmOjjlP64DB7jo7NUEhGIGhmxjW1KJwwTzCLaNAWZ2DJZaBC7hZBvN2yimZQrVOFAxnIaEz/te06LG//8FZDOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oy89HyKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oy89HyKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD2DC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742948393;
	bh=Dfw0qkgmcWMnOv+rUSM/sRBh1SR+4o3DOk4x/glFOGs=;
	h=To:Subject:From:Date:From;
	b=Oy89HyKYBgLb37XbP60nLOcF+9kWYC4BhZcfQd83NWehEsljPRiujROxBq8g0GOoX
	 FE3oXxim2kSsP45HdqU4L+kBfNUtQBdDrCWWhWctsCqR/EH3sqkFJvphsvxBUPJUxL
	 oDW4n0X+I9IJ9tB2aNs8W0Xi/cYkN24ouZO5NgcGw0KPJMeBkA7jQfsO6HM6iVzWYQ
	 +HPwf0WhPPg/QiG4wa2xoxVK8Z/QdXFFk8LO94q9VGDeECf7F8YV7duNBob1bt41is
	 hJ9hIlXZkVxIoINEOdFQyTNlf3qR/eQ9aMYGuEJ4lXZ8sKlIE/3p9GD4CyH37EN1+G
	 brGY+pmvrTmoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A41C36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174294839376.8959.2444971961105058866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975ad255c4c1a5f7bb3093d0300514bd1a48ad370a781e183bd5d90e5bb78a5b
Date: Wed, 26 Mar 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742948393
