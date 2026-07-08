Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFE33A8750
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783472314; cv=none; b=di+Uge84T3ypH16/9RFXbN2dOFAsWRlfLOvB6MnM5liTaNAHmKIGd/LbBYzyMxR0Mzsn6qLKqPXZHAFOfiXyFLb7rgMcn1IEqXLBNWTf6/qVmnnslRPKbi5NhcNE2hPtJWd7nsd8I02N/z/pqHdKmFFN/MCMg+qREnU7LGd7gTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783472314; c=relaxed/simple;
	bh=S3OpVNxLgqpwRLRS1+YYha6UXiLFeCgts24xuy5N8rw=;
	h=To:Subject:From:Message-Id:Date; b=LXhr4pGzPhyspVckTaRde9XQqbmtcBk9PNfhahrixeFCJNQzvQHSjVH1ZCRehJRCH2r13tzTuMokT2uGeAPsiqNZXrXxF/zY2KBak9zAzAHsjI2lupAZIsjqZWfPLKgKHkPLDsgXbI9UuONKr1Z+O0ZeQG8wPrzQQWrtZizL2no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVjaphDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVjaphDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C04C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783472313;
	bh=S3OpVNxLgqpwRLRS1+YYha6UXiLFeCgts24xuy5N8rw=;
	h=To:Subject:From:Date:From;
	b=SVjaphDIB2cT9h+hkEd05IxKaGzNvrfFEwEBHYN02vcgM2rT6s4bpYpPRddyZ7GQs
	 PbqQe7CvcPMY2VXb3LcEcOMX/ryE4jk6+K0jVPQ3fy3t7sN62UgSQyGoTuJSG8U4Cl
	 FQ0SAmnz5nlFRt88lPtMpNu2lrmDUGrfv2WTmOeSlboeq8/FtWEk/t1std2oQyBEGZ
	 kC5AQ15718TK3ph6XTzAWJtmh7WgiP0h+w8BAENpi6NbGFLuom025cAuAb4Ni0lufi
	 0lvOkPyiOFqUOKMBB3BSAoffv4JvT/MwMRrqf3p0wfEauaGA33GlGDmoU7tHwljwhX
	 7ai+oD7141Y2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E2BC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178347231368.13311.15245972665935047623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a605a6c92c3328d7ded556a369bc6d7e178188345adea4885ce1bfa17829908c
Date: Wed, 08 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783472313
