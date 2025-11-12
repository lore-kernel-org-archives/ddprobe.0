Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1257A23F40D
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762956594; cv=none; b=Nw3gCwOcCGTEX1l+iDRsN6GBQwcGfFN/JkyNskPo1Prf7rag7bt+bFVpeEu6dmLyHbvjkcvRWyZl2d0lgFd18Qcm+Lbsx72SIln01lruHkjTwhNkxtQ2gQHSEytYW/aHLSG4GbuMTs/gSFLV/GX5A2piikBhoroRF28OVqa0jac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762956594; c=relaxed/simple;
	bh=Q3G59rs/12iTHIQ5O0puAisQdX3LsUZwhdozqDbGylU=;
	h=To:Subject:From:Message-Id:Date; b=jTTLWwDZ4Nuyith8P7wsnTALngoP+gZ1drLxgGOMRvOg2eJN3rhwLy1Ksfm/z0N6gT+HOAA8995IVcqIAHdswA9nThwdEIPiKTfsNzfdt6D32glmPRvVrP2J8DxecB2ibZCZeqG5XHbJ6ttgmlaFnajMld5UZfE+W2uhqM+grL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZS1Ja9xp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZS1Ja9xp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C04CC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762956593;
	bh=Q3G59rs/12iTHIQ5O0puAisQdX3LsUZwhdozqDbGylU=;
	h=To:Subject:From:Date:From;
	b=ZS1Ja9xpfrfTGlc/PscnXioyzFnDiNr6yd9jdPx64bzZVNyfnDFwL12v9bgVeDozR
	 NXM7G8b811wQvmMB9VNRX1Uoj2j0tYtwb9qXovrp6MbEW7rqDwlguAMAKosnw40Aia
	 zpg4Qiw0uhMALVREkTQ8a9sElBt+edfm+xx79HQIH5C3YgbJoftO9vG9ST2hHBuZbY
	 DqBRPWqv4dEDdzf8kBWAq8G3OSVXrTKWj6Jgissrfw9IIMS4u1kFOU1JOPITPs2gAP
	 ELCKoK2We5bzl1ofgzYD2dZRF2Ffdnz4bJf9Kbmaw9i1QdspOS5Wr0MqxgHHxf8Mez
	 yxmJtGdphlBvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90126CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176295659358.8925.4799770937227269646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab6ba3f411d64bca5eb48c2fd9d685d4aca0256e1bfc038a5b5666b0ed7b040
Date: Wed, 12 Nov 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762956593
