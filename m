Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51580EED6
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745292594; cv=none; b=YG0xeG4mp6kdkD9T68YEoVPu7TKiYvFzAe1UtgdVAsnn3k5JhMz+YwhrGtb/lnFW2Ba5nmxf0i/R4GdpvYkBubneckjrib3ek+48h/hZL7E+t7nqjXDF5XhRbvK3nf0G42Or40jO+KN9AP0+GvcvgxzSOSntAjkEWLV7e7Jy6KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745292594; c=relaxed/simple;
	bh=CJaZcbSPA7kVPKeGXZ7ofGh0nMUybMD2HmLBikq58Y8=;
	h=To:Subject:From:Message-Id:Date; b=MU4Q+vv5uhuT4xA1NhjKH9QlINtxFyZpSidm0hYRJ441/Q3psDCgquO4nAnMdlsLOL9IZzTu2CNPC84OoUi08JlM0e4ioVUsMvXkIFZRqva2/SfcORL7WdS1xEL1pgrVKFi8DiWGg4fVQvrNwG593gyC3Y/QsBEClGpA5E/R2uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4Me7Zj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4Me7Zj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE1DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745292593;
	bh=CJaZcbSPA7kVPKeGXZ7ofGh0nMUybMD2HmLBikq58Y8=;
	h=To:Subject:From:Date:From;
	b=Y4Me7Zj3tgRUanD74WpyW8vvkeUybYI+XNzzywJGe8SRbfUo6b6c3S/zdeP24nc+d
	 NicF0+LiGFqDKAxUV02gv4xrC56pO7tHDVpvX5HEhPg4kvJkcV4WBpYNWmBk5ZYJvg
	 9a43Nqql3kh2yGNAtiKNKIqXrrbX2whYUEnls0GzCSl7J11ouQNOVL2Y8bzPwEVYY5
	 MIrGwTw9ZXhoFv6LwXoEF8yM2Mixle0QM9LfE40mnj0vkHao4NvQHdalPNFHa2mtit
	 YkaN5h4yjHl+gbggkbe+G9rxHb2gqMc8jZhOWiuoM4nTdHvwibwwYESOrTX5tJq95n
	 HmOiraSW3GqBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A79DC369CB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174529259359.10180.11554133469941251628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4326b54321de76221a0375da6a1a7dc43cfb37b3d71f6cf3775354a0bcbe4a30
Date: Tue, 22 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745292593
