Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7C68615A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736866554; cv=none; b=jfGYwgtU7cAsFZdZ3WpHZol5QL8aqkHxQqEEOZcgt7VCgkInU6BSEomYphSNRi/r4KG+tuVqpJr9MBSIh0LS3HOliGQtlYCNUgZCf9EIMb2snq1Tb+htLCGNnuzHr9XEnUJHfPqXGPD/YiTCPnjjUF5ot9iFFpijaJG2CBgJADY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736866554; c=relaxed/simple;
	bh=cv8lMVAuzrAWkWCjaI2is/Bbja5c5Q/VBKT//Ctns/0=;
	h=To:Subject:From:Message-Id:Date; b=EEhCzt5LA91DFmOqN13NMfv1gZ9ypPldHDUHe7Pkoe4v9rhuBNn/c0hSaOVRRCVgGpDAgT5WkUc69lfKNkccFFULQt5JNrBkpPESeRQ0tTFG1GsjGrKosgb1dXHBnPXfWrIuqQ0jES1qVAv5sc/sleEJdeq1aFg2txXKrKRGhCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ed6+GsqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ed6+GsqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC1BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736866553;
	bh=cv8lMVAuzrAWkWCjaI2is/Bbja5c5Q/VBKT//Ctns/0=;
	h=To:Subject:From:Date:From;
	b=Ed6+GsqToDE5tRHD/Gb2gDZbVQWe6a8n6pD72/b6DELBz2cAFOCh0an5dxp8nPJS9
	 XbGiVHAqkAiQcmx9zSIfbAdPf/6Uh1VXx478kB2MmalF9Dy37+COnjsCP6n6ZEICz1
	 iqe6Mv90qIXq48dRXYN7QZtNJTMRc3V9f0f/AHYkJuOB2FSJMzlxFD0d+le1R9ZeIU
	 ApwuXy9H+IDraGI8VxPMtiZfy1lyyDr/uypX0EXqh+a5S/aOUVTlVYCeW9R+HNc0+X
	 OjwJTTUQMBzeGgtoiSV2ErZvdcTV+rPv+8FuCYFFvrI4aCiqAORn853PWYoe49fCEd
	 kNuCPOLGUwnHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E84E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173686655359.2125.8047560913832200120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e2bdc6a46e2b7dfb0db1c8fb5dc14bf55ab3d28eac0b32b2f95bc905facabd
Date: Tue, 14 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736866553
