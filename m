Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50826225CF
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719121343; cv=none; b=XACH2zYTEApvWcsON0+amasf1OLOlgtVoy2zWg/zdmcBCukjOo8vdFTokW1fwFP8NKnDwDUla3ne9rG2hasia9MPIPWtXV/gipmLZzXKTyrAcSBFZghbDGNLcITUmxGB6Ur7POW+1gmWH86oVr+XchtX7l07HdJWrgKU3dI3Dqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719121343; c=relaxed/simple;
	bh=z50XQ8HifDJL4hjPM76ww5XRTCcbo+dP0RBWTLh19Vc=;
	h=To:Subject:From:Message-Id:Date; b=O/Z/uH0ECefNyAnNQTZl87QViVX/nAGwTV1S/4+yrmTLEJWpvrzdvR+xTH3K/mt77Qm1wp692Xx6hFQikjGQuTOiSjnFuXSf6YruGqe1ow1zo+ZkogWHotOm6Q+5AXHxY/Oy0BHmF7MlT09rSGB6JN3SVw2TzMcG4nt2GWwRiJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATVsF8sd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATVsF8sd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEB0C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719121342;
	bh=z50XQ8HifDJL4hjPM76ww5XRTCcbo+dP0RBWTLh19Vc=;
	h=To:Subject:From:Date:From;
	b=ATVsF8sd3uIjj4u+UTxQ2JrHWehxgSA6jiBfAlT2t7a8XSReuld0+adhqIz/prIDY
	 p+1kBpsiv2uVWCJSUYT9uUI6QylRpJlJjFa2sf6PJQJzjXBqWppxMAjfBUp/F3N9bv
	 VAPNDjBIBrWp534gYQkEqUlEvVT72xJ9jfIAAJsBEC8sW+kjpo6dG9HYTBqIo8VQZh
	 P5ufOwWUCIqU82Ye1N8UTyIrPMaPNOe2qtcAACHzmBJahPdxgf3v1pvc/W2JkETEfi
	 +zQR+jvYlJT9rzOcfNTOKMp4oRS0T9aWzAUri4DuGn36HqpJpmuhLx+X8lL+Vd/nBG
	 /Xy6t0ReUD5DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8312C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171912134281.6245.6824430507058655073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a45a1f4f928d058c0d0ec452df60362934ed6e6ff9ae48d81383c9ab4428730
Date: Sun, 23 Jun 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719121342
