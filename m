Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DBC2E7F2A
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755766194; cv=none; b=SfRbbGl0K+ermOAejBFCLNgGIScqbrW9jRevPsUrc11zhvJvLLDwrXlB5ysljI8VlrzdEeyvXZ2JvgoljgaHn+rhSpL6F38hpBWz6m4s7X4e9GmPYvUQGmREeJ8A2xyK+6ePUvLwdH6OLd77kX8/06wYsDUyH1uqzDDMjqoFATA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755766194; c=relaxed/simple;
	bh=FDOLCa9AkPPJK3iz3v7k4s17w0Mzd2VP+NVneF+Rvzw=;
	h=To:Subject:From:Message-Id:Date; b=lVvWbNt/2SdsuT2ctXqrMmfti++AjJr9hxYiW1gDWOkxGliG7FeDo7PKwT5RMsJfCkeXQZT7r858fw3GRN/KUjFa4kh4J3WLbIvNWfKOdNJPaaDd1yN+Fibs5fC1tE92DVn9tgVnlCCerLtIELMI0d6RFGm6qytRh19/iiahPXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M716NPJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M716NPJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFB4C116D0
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755766193;
	bh=FDOLCa9AkPPJK3iz3v7k4s17w0Mzd2VP+NVneF+Rvzw=;
	h=To:Subject:From:Date:From;
	b=M716NPJUPB+ip3qqFkgNQhrf7VaoT60evhaRCt4RevX2kwX8ifqjne5LdNiuiPhFQ
	 G0mF310hptO5XnRl6ZIh0D7I/4kpnLL9n3/Ll4lSj+vNEyUF6vp86bvEN73RHECFVF
	 I7++CnVCURAkgnuQgIcZMPMtjeItIRPzgUMQad7I2Mmffliqfzb8kfypew1KVSjU8a
	 A8cN2px1Dw0Xj8iPYUcbSTHP+xT5BwvgcixZFDz04YBC/Mddoct6nvQSLNPtKinn8c
	 xXQMTE9/waIrJvF1bFSZUFBNZujJrjQtCFm7kkTtxQGThJWOr7dzl315bR2xWt3wLR
	 leeYZV5+Re9ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF23CA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576619357.30530.8400262805570515851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322ea42eb9c18a6a0a0f26282c671083b98ec3d27ea3d689b30dd97ad74ab547
Date: Thu, 21 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755766193
