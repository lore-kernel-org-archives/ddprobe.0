Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44ACA3DCD99
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779276634; cv=none; b=LloJRSPyJhHbWohYKZjuleLTArYtuJGELqF9XB0x0ufIIqa3Vmubent4EAtL6djuUczQa3U7AktkPol+/cZH2ZPLCYeNqgWiEoK+kq4SzAHkgmW0xOe02zkCN5YOnHz442HtLZArzz/BPM7b0fQBDe53vBPP6kbGlINbpzhk4gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779276634; c=relaxed/simple;
	bh=Bk2MhTEmkLyfTUDUi39NLBNabRaZmyf4OsFE/RFDYmc=;
	h=To:Subject:From:Message-Id:Date; b=Nc/KxGQ+NjAKpSWhHCxiMDYdB6SVpMn4rnhwTlv8ciRIrYoezWXa14tCm5vnq/40CDSlfM2V56557GFi1HMDwmaJ45Uqv558a8WrezsktTxQfMGML5L8V4juOXl5KPU8WAN0K1sHSVMmrhtQyEtVfByRmCuWKURfwPd0AT8M2mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vf0sLuZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vf0sLuZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB10FC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779276633;
	bh=Bk2MhTEmkLyfTUDUi39NLBNabRaZmyf4OsFE/RFDYmc=;
	h=To:Subject:From:Date:From;
	b=Vf0sLuZSR4+SrJvNwvHtRPArRDCGX6DYcnvb+W3YVuZmzb+VmJ0/skMKPoumZeRsd
	 INDx/lrrzgRn9A+8P73HGnFJDLV2mbYagawEAZY1volNPOqZaTfMZ6ddbTnLztFfsR
	 NfQ845prwEMqfBamH5avhjFOr3p1srRcZf/r5yBW4qapbEW3uQD0RJGkJQxR++U7rs
	 38QaDFUmQOmdqQpUxszAez6kLXbl56ovoAtOk4mJyUgLpD9YUCheu8tBTp3a3mE6kH
	 BHM5wwuz+UjXCRsN/voazx2pawLYmup3Rq0gTeQC0OgCboj0OZJahbZ6bXlp+Sdczr
	 OhiCmolXn1zXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CC0CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177927663371.25449.18053780835007989188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c5057ebbcfc7eb6d33292f784166fe6ce079488c86215722ac960bacdb698da
Date: Wed, 20 May 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779276633
