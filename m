Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C41E20CCF5
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736885154; cv=none; b=hVPy6OFqPOnLrX8ND6qStVi3r11cF1SIz4bAF4+yTg2TcwmOOnhJ6d6mS90dRdqGb8hnetQKBECjZ9bRIhS7uynE7YKXlghDiAhmi/P6u54vBmOgEDqtzFMaWcD747wr6uCmGZ1eiJHIb6nhVWcer4ydUcSUO+YjMlsKI/rZruY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736885154; c=relaxed/simple;
	bh=BvZSpBrOG8NB7722kOTwVmY81sk3/YvZkebzsTd4YrA=;
	h=To:Subject:From:Message-Id:Date; b=WcEtVGvlP7q/4nL61B7T/DBgULnWHmhIsh5/h0cKFFqSMtILNr9CJ1ej69xhEd/hbTv4AIbvj291Rro4lfjO56EqSpBAesWMhDE493Lkn8Nl7nMK+fpQZG1cRsTfiqHrajxo1mOEKUPTB14DBvUD+qz1UEz3pqE886FhcZFiICA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkajM41U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkajM41U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5B2C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736885153;
	bh=BvZSpBrOG8NB7722kOTwVmY81sk3/YvZkebzsTd4YrA=;
	h=To:Subject:From:Date:From;
	b=FkajM41U0hFVejpWq9hKiOl0MQuENNXJNeMkshrG52DCoVd9eFUZJwHgzANA1ZzCZ
	 nrxK6p45Xgu5j+Nu16JFgNAHmrRWDztWe5pErOxDEgfPbOycnH3Ofvx1DPJtKO1Mfq
	 TQokMn40aaTYiY23gifqBRmld3eq+MYy4mgefMGJ+e2k9XZugpKKi1pkAWb7beHNcy
	 /K9UIHktJKTNvX0AYXOLrxa4S9tW6wuwTxI/UwwZG4zBGTaXPkchEOizvrZqticO8N
	 93r6qtQcl+TssFf32T9+IvAUWNfd+EAiAzNS7f7QmZbLLVpxx1HQqS5gZ5xE4ZqRdb
	 i3KjiEZ6L6qQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C06E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173688515358.30653.5245272662396594254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e3645f2a74ef2aa3e95eaf5a4a5b2bff3221b147219781d26f4f1e97421127
Date: Tue, 14 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736885153
