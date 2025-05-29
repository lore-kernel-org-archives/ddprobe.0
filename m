Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8F62629C
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748488194; cv=none; b=X4++Rg5ctAAsAoSRB5kghPLZ9cJiDZdUCPyj644GEYPQsLn1xvrL9DHX+r2aJZSvD9PMCQ3xosWip6rYNZFh4/z6kxvmN4jItsbN/jArTc63WF70RkIKs4oJIZGeceDGUu6/Sdt5xUgb69ZifwpJv7kvQ4nADkplyyfQHqGwTqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748488194; c=relaxed/simple;
	bh=avD95FxMm0aMQdYwwFTHh7WH/O2BKsKrtZxtl+uXXTw=;
	h=To:Subject:From:Message-Id:Date; b=rY8LnCHpy4HmnaXnxfCI/dbZfGMJ3W2Iz2dr0Gf84NvIzdEaEtq0PYOc+H0aOsIJGGxA8pYugztLnBlfVdRDl+a75FwmJHnK1PlloGHjmiIcJRbGurp6QRDv8ZzbBVLTdR1NekpKLmPGTy7V8rt8a9QRAsv0OBdRGcE0sGUAWPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0AigPls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0AigPls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A208EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748488193;
	bh=avD95FxMm0aMQdYwwFTHh7WH/O2BKsKrtZxtl+uXXTw=;
	h=To:Subject:From:Date:From;
	b=D0AigPlsOmumHq3WYEMmRmEbV9N5ePm4utuW9MXb3DDN7sjVbOgBKJDBAy/ngxwin
	 Xxa4bI30C86wSWljFrC31E32MHT/2ss6i4l5sux9Tkb/dp9r26olWiFk2ZGG0WE8Ow
	 wGbRM7b0qNPb2+0ed1PcNJH83GNkEVw/iFIRRkFaBbahw/8wk+e5bn+er/d6gY+oBR
	 orJ6bQR8spNJuTy5NND5IBgku2F5mjF96jfgHIUdXV2hmstG5JBF9zx+BHqF3j91pz
	 /WWSRGvPEj4rfDMSbEygf6WQDPjmEcQL0/v0rm+1145lzZg+iTyudZyLF9v6qK07eV
	 mzudrgJI5Vjsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BDC3ABB2
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174848819357.17066.17747673146764442845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9821fb993f57914b8d0339fdc516ae85d83120e5a9613dc7029e40d3ee7dcca4
Date: Thu, 29 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748488193
