Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08DF2737EE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767961436; cv=none; b=fOlZBinsgioNT2uS0AUu0BL9YnNZFf5HlEAR56JjL1XUnkb2Yv2xKJJS4uPIMhE1RRXNfpV6+uglyq84FkW15XvTjFFddBoMSQGJsENZTOfV9xtDcIXlqZdS2pt76O3XX22fAB0aien38rAXmn9KjxSeK6H47EHzujo0p9td3Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767961436; c=relaxed/simple;
	bh=Tjg47A0hQeDEqYynn39XNhOirshEJ47Pe0hP1/+0dqs=;
	h=To:Subject:From:Message-Id:Date; b=AIvylsoJBhxW0K3SBtYQkj5bAPd6h8hwPt8hwP5mr5Z2VuD0ikjhxEavP0lOB0VkxhbGFqIasA+hlgWrxg7+O5Ii6w85E2EIHjc1Mmlq6DVSzHaO40033ACpHo1YZP+qbLPTaF4RPZhDEgu8m5PdOfohJrczDBhECYkXNRUtCm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyIl1ER8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyIl1ER8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEA2C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767961433;
	bh=Tjg47A0hQeDEqYynn39XNhOirshEJ47Pe0hP1/+0dqs=;
	h=To:Subject:From:Date:From;
	b=UyIl1ER82SLnioJgjUwEcFs8gd6upo7m7acEUPfyAknYhLeRebHvmGaebG80NCegI
	 IH55l/ec2x6gD1ZNyNPgbPSrWxSvssw8BMZoDPuvwpfZBKnlb9zVbEQtmYOIKWBfK3
	 Btl50rmFIRGR3lgMWNMDGTRWNO2fWMQ/DZNHnaE2Y4UGRI1T24XASQRFHJJSaDJo3f
	 kJlOo+X/OuT8X3ppm9jiaCa8ZBvXZo9caZ+sKEGEfW4Nq5djSEcnQ8iAP4O/cobsz3
	 Re+DPaAwlLLbg3HwlRxylNXRvb9j9uQ352/sQ2d4CKMxaY3lb6PDBBGUQcq2x+SKvI
	 7je2jmKfeeRjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF77D1A60F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796143358.30320.15591511427657880410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76be59499610ddc9685024df82e72dd84599d2d20d14c50694590b75c37e6b1
Date: Fri, 09 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767961433
