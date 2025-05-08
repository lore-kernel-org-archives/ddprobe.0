Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287674B1E7A
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746731394; cv=none; b=ZCzMD6QqVa2TiFL40lj25SwrH7kqcRLXQulG9vgAKrqOZlzkJPJ+rhqYOgw8K6qj9EccQXM/6NhryctKF7pXnhqNO6O9c9MA3g5C/ZxL6OB/yQZrWbqXlWA3t7Iq+LJL8OELWBoKG0DDvMSciBzZt7kKeTAq3bFsIc6/Q2NnkS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746731394; c=relaxed/simple;
	bh=az4bdK7n3nwXcAoiflGfO7B6zfWqEwVBsGCT5sGwRD8=;
	h=To:Subject:From:Message-Id:Date; b=gLR+GKMZIunzfbZu0fWuavlu16YRmEFyMvmx/nxr1MnrD/Tkc+g/ZcxUHVfgBRihvzAADFtHxEl0ntkG3pbIbFC792TqSz0dwArBGcyebYRJJ37G/xZZ1OCXuNN3PK50ltwyp7ajgVAKbkqNEeRZaDJR3Y2xrcLDpcSSoDm5YSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCB7ALp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCB7ALp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01BBC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746731393;
	bh=az4bdK7n3nwXcAoiflGfO7B6zfWqEwVBsGCT5sGwRD8=;
	h=To:Subject:From:Date:From;
	b=XCB7ALp4e9GtZfsbwph+eYGsQ4PBTX9eVEz8vY4uoUEctkHY6r/58d/h0RvIjdUqq
	 5Y6uaxxuj5oFpdefeV6FIfR3lD/6hcjSqZ89HTHcdPR4La0yCzJu+sAmlgU+4rlPL0
	 bO0vLaNYM3Dga3nlYEPAQxgjX9Ifj9A/SeVEVY2/vNlL3j7q/8/bfv/fCO58HaPQEB
	 zVg5F5MSoyQThn+ENpdouqBEVaFb5USqJiS7nMf3lQgDsU7uUoz4vkJBwU3E6BIsnK
	 DrCSISsfxK6eFHc/GDJPYJAt6SmRDiJrBIdqG3W1UgMYhxNIKftX/fuxQeEVyG8986
	 BZ685XOUHQVAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90933C3ABC6
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673139358.4755.11380660963158429889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b4bdcee069da8eaa8cbc7047c3659583c9f8cbf5e3a81528fb7b27db805a280
Date: Thu, 08 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746731393
