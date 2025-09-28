Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B2F1DC9B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759039794; cv=none; b=bz9Y6RqVa8Acd4ldBsf4H1IQrBKfbHcch0MuVWjLkikrNFflbapqNzD7+Pbo1qJlen2yUEkCSR8tJVloCWpwIsbwWM/Dht4+ZoN1NKT+/QiFCg6BnlSNhqnSUPMxwuiEY4Od7vv3IqAW83SYbq7+eCxhuUC8CbcqZtVlHN48+nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759039794; c=relaxed/simple;
	bh=ARcWjky/9P+3kNAPhtA390SynG+fz/QRcaLQrxySPHU=;
	h=To:Subject:From:Message-Id:Date; b=b0IKYpi33Xj/rniZ+eEXa8oHwZ491NGF3phyVz+CnHsJ+eM7RMFHEH1ChVtwFP9/Us78zlrbnR5qwI4yJeIFIxj/C6bpfPcm7KLjUkUKofuHYije4Z30vz9+Eg18YMYvb/AZIdAlrNI7LtAUqANNMO/xaZNYOfq3/MLZTXxlcfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nda9pDfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nda9pDfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26A7C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759039793;
	bh=ARcWjky/9P+3kNAPhtA390SynG+fz/QRcaLQrxySPHU=;
	h=To:Subject:From:Date:From;
	b=nda9pDfy4MmxflCFXGlUheN/RVWY9FP+MHuX8XjhWuGNFwr5Pt9Iu7Yqe0wzJVMik
	 s1CjVvu2c3mcWNiWzGmZmdzRmEEWuR6Fs5FvCgSW7XrK8E4i6EC41h2Ey4u5At1sQj
	 NiZ26Kcc8e74wD/0Yh+nRMRzml3W3nkhbBaVxymDMiA5eeoYp66tuebTWbbrhyKyQ4
	 MBMVE9sHyvPIUpk7gljaqs9tA+imNMcI2JnSX37coTm0TRwF8rPMlaNPDej7uoFn4f
	 6dYPu3HRThlG5uhsT2f+GwkGQpPHA2iRofKMgsIBWvMMtJhmV6xgyEARL7WuuMHZtj
	 vxgu64+JITCGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F580CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903979357.16452.17597534657635524928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c58a95a7e8ef842adac66390767c0e6321691331cd6f6bf11a957c2f9c0ff51
Date: Sun, 28 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759039793
