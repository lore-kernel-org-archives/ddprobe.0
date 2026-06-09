Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5B72FD1B3
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780968274; cv=none; b=m/fqEtkBZnlvww/y0lUS2IoqwZNm+x69wOxdqRDNVAbXpPsaeHg3aChg7SQD9OpD6D2PbC82AshXbVD4U83TXRypsfiwIOG+VsboQu0aBEhOqnsYbVatJqYck1NenyrmXc14zIKJSqEKjurOcaELDCCLs+ktC5bY+ZJg6VffA4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780968274; c=relaxed/simple;
	bh=JAguFto6ewVd0z/eyp9JIhGjUZT7DF1/qEApwOqLwvc=;
	h=To:Subject:From:Message-Id:Date; b=hfuETm6Sckx2VN+6ZgMZzy6hP653rJ30U70HUXVom6W3mHQJXX1c3iNWIdRLRAG4zUtl2xuprJkYCEix0SfyC3JdL2M7QI37FqIQTrsvOzR9cFvaJmuiqY0/pu9/XkiiS1/a5jlCOOSleZs+7NSBlRZnIhEMHwL2FqA4o4xLGCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSbm+tyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSbm+tyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE197C2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780968273;
	bh=JAguFto6ewVd0z/eyp9JIhGjUZT7DF1/qEApwOqLwvc=;
	h=To:Subject:From:Date:From;
	b=kSbm+tyIKs3hPJGz6tc02CZbsDOGaviK+kzqkDFw0JJqwqzZAW0lUOgX8L0cM+mQl
	 /slNenvQv3t6LAQbys7Q8DdtUbiOtmI/OVp3zeS86AXMBX9iV2nfSUf1cM38S0j9kX
	 WJ8P/zqogO8sYHQXdkj6voITJljj3WnzaNhFaIRlT/BZJS9i77TbLX6IfRk4FcojK6
	 jDle+Lor8E/tBPmHC0WHM8a72enhjfnyLudlyYXNjaIPxA8M2L4V3ORnfuKNHwTn1n
	 9CDzoz/Zhehm6rVgBRPdZApGf3ALcpo6uXOn8GvynXtXrFiilMTSikWbu/xPSqzGhj
	 e3CFujFUjegCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDC0CD6E79
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178096827370.8656.18032064321424455058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a334f9126728e91ed2324dc831f2f24030ee327294f9874d1d539d3f07ff71
Date: Tue, 09 Jun 2026 01:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780968273
