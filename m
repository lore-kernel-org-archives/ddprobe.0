Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9020335E92F
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782702514; cv=none; b=F1lZa4IGaldOst06EFKk+NUgYKBTGxC5niV/VHZYv/q9+UccXRS8uQywYdemmgIbEMYubO1rbp/zeM6wzZgTfejOecZa/zaQbDLEHyHh4YoXNJSCm1dViG6TWUuV1AdWXanhwz44EwfRPe54rSNgCGSepgm8dyJnTgtkpf2DWO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782702514; c=relaxed/simple;
	bh=F0BEnzturZbZNQBK5vVzR7H71wYhcVeSWH2fZZ9AKHw=;
	h=To:Subject:From:Message-Id:Date; b=TYYyv5QzZDe3Kt+EQrBt6D9s6lE1cY9+MYx/7HtBnRtJF8tABD6kALMtxMxM1tsXWkExoN2F6VNquAx3YdzWQL5JrUPYx3domc2aGPLS54T8F2UjOCQtqo+6ht2mMTBHrB2DYzbctqOvCGdgoRH3vnWBQJOvJid76Lty3NJQGXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kURa4gYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kURa4gYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93C5C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782702513;
	bh=F0BEnzturZbZNQBK5vVzR7H71wYhcVeSWH2fZZ9AKHw=;
	h=To:Subject:From:Date:From;
	b=kURa4gYd0D9O2uJnz99EHIeEmopozlVPpS7yldz1rJxJC1OUdaqcdhKoKW818SM3B
	 XnOcEO+6MyVKpcBWDg05ovGuhQ3DpZdIz4FhtvZ8nitUGVRbRuOCWyIZbiQBqJocfo
	 zkMKUTQVBsSl8461H2EwY+PaMHPt1xX4TJTqYi/5QZVJEa3AlgmSbCSAvqH40qiGuC
	 Htnyv5Xgk/Pg3R5w+5hvZVOHpfnbyeGCIJfaVwBjMzK0Pjpt9pWcx8qlXo90Qipq9x
	 /CC+sbs7Np+TMnPW12L81TYu9gB2zWwIMBs66YuzTuvWAivYnYZAJZ6xIbH9kVETo1
	 8Y0gvCcLzlw3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5C4C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270251368.11576.13831033619459892563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5293894cbe96fdea0c903da17db5f48a964ceb16c8079b74e7d8c1aa5124e83
Date: Mon, 29 Jun 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782702513
