Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B92202963
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779594754; cv=none; b=g/6c4nBMyEwATvesCweJq5h22ipAJNJoImIRNFVH0dlidQT3fjCTfx2i+OwbM1GlBMHy68tCEXJSyHsYQ0UKQxHw/QdesseS8TfXj7u/W6sS1GD/9zUOUoM/xaZU1JfiJyI4mqXEGFl/XSJFID21t24+IeBfjgIG67xD7Jr+I+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779594754; c=relaxed/simple;
	bh=oLDRD4PFqonm9rhM6msORUUyS0yjr5qPeShcpwhv+Vg=;
	h=To:Subject:From:Message-Id:Date; b=sTz69c46RytLmY6QwqmcUyewlw5AaxVCWSUHrAyIZ+YsYHBzEq//wHwiPrPF7iA8v9um0fe029104XNiywyIkGkn1mjbs/Cfv1kKO00NBKX4CAvthgBZZCe2eWZ08HBpwoaSMm7XpB1AIK8rmfO+7vs34iVO85CvBWrYVbp5Bpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCE6IuLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCE6IuLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4044C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779594753;
	bh=oLDRD4PFqonm9rhM6msORUUyS0yjr5qPeShcpwhv+Vg=;
	h=To:Subject:From:Date:From;
	b=rCE6IuLEPQ9yN4/EFJrmQw8J27MermpS7yye3ORr5OzQgr9a+EKsiJYiUrVMwrMuv
	 SIUQxY3CpVAw/GXgAcKyG7Eid/9zvWPss0C/ta5VWMesBGIFabhRPOl8lF2L54ESUw
	 VtN4cavielD6vh9LjJtKoyMHdm1BU+mY8xm0UGuKMKsWXFnSGw7VMLaWSKL3RNETVB
	 oXayTYDfN7F48JenzmTmGL6i8QxEU5mNXvcG4N8NLLzGMcls4WArVJ8eg7s6nQmEQt
	 LpOvo3hkDrUS4+Qpb6GJBEAsh1QPxhx5f0K8PSihOnFkI3Ou5g4NDtksa/a8Yn5EkL
	 ywbR7ASs4brMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD04DCD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177959475367.25625.6255837601587589827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b98c1b8e10b327d1e9ba6de251fc9dffbe451066826429ae00a24d10709b2819
Date: Sun, 24 May 2026 03:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779594753
