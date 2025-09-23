Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBF5A48
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758653395; cv=none; b=btab2tRcvdrViDNAzXCRos8YO6tHtTsESZ1oqnvGX1rCokNtk2cFLXmS2kiVjFg8F2VY6851yuQwGXV5bzKQToniF3h5Rvl2NFFVsuM81oEC2eQGZU/RzBdsPtz9tMJOIrDxtWUr046oOitQGINVtM3kF6TTQENseJ5U36DauFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758653395; c=relaxed/simple;
	bh=RG6pjaqPAEJschF8GIpcU2KyPrFZ+OguPh2EzGOi4QE=;
	h=To:Subject:From:Message-Id:Date; b=saYGHLjzVUkZeWIYc9iEJtZTp4TjHI0Q+qjbmgtSSiuZznuJuojvlXd2pDITlgzasYVjLDZcT1yEBM/O/M+dViVxRx0Xbk3kc3WEoTaeZQ/xj9i+HJHmfsMDd0MR/YmVgxTZu076ySNM4V7Xh5CVa6LV+zitFouD21QIhJ6SEuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAGAqjpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAGAqjpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBB4C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758653393;
	bh=RG6pjaqPAEJschF8GIpcU2KyPrFZ+OguPh2EzGOi4QE=;
	h=To:Subject:From:Date:From;
	b=FAGAqjpNI01trarX+dSm957DH7Hnop7WyTjGm2EgMV4R5A1QFsUY+dnVAoeaTmjBq
	 0hdlbNzuZL05yw3Q6FBmfEcNofEBLJqcQaxe99OdpD993tYubG399vZmvoqfmU20Y6
	 aJZhZBqy52pWohwGLHfDtat74fvqTrbaHtEKKPTHOTpi2cvwrKJmoQ+R2IcVTBZVGa
	 8WfSD8CWttkfKdr38oXnNfbcna9ckeM54iQ8eoBXrT2J0Nh25z41Bt+WFN8TYsHa5W
	 aIw4coanq+V9z/Apo9RwaVy7A1KV+dNNh09JS9DmtLmf0YGmrHBE2eCEhLIZTAGF0b
	 8YjQDmwom0jBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA9FCAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865339358.21302.5984930256396624851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355ffd12d06ef8969f11bd3b7a6c0b98e3775e8ec9c0cf793ceaab020a516840
Date: Tue, 23 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758653393
