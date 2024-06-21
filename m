Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2A5EBE
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 04:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718944943; cv=none; b=acxFg7mGJF0hwwe+GMrYG5NXdTLfclq64Sry9suHJ79QoufF5wlt3gXMK/sphyfs9QrUkIn0YH+G4cPqCPq2r1jjTnwgqsniGPfMm33GK68uFPLgTAbyykFTnCKiBh4h9Hz7sY334N/r6+KYp1urGuepn8NTdyKQ3hjZrLbDMJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718944943; c=relaxed/simple;
	bh=x4BYV6t6C10lLflzcPZHwVAd1x7GG1TFjGcgV1F4RVY=;
	h=To:Subject:From:Message-Id:Date; b=tljf4EsSyG6oTXndVrVy0QrBfGXmFKrHxF93WHa/lSwAM47sFPHN7Dr1nsFNTrLZ6JJB41w3l2mTU/kklYmdjl5aWIM8MloHlgPq8X0nzLgbvn0gFp+0ALc6b1b2mYOrM/J29khK/vFaJt2SzHj80QXF7Ja4EqN8ADZwtDTbDoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzqA+n8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzqA+n8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BB2C3277B
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718944942;
	bh=x4BYV6t6C10lLflzcPZHwVAd1x7GG1TFjGcgV1F4RVY=;
	h=To:Subject:From:Date:From;
	b=XzqA+n8vwMuAyoQHRcxIwfy6B06SBHI3CW9a+e98/nZKzJpxBBfHZk6HfMw/kqsgT
	 KVy1qLKixmNw+jx0hBzvExHR2Qnr6VlMq8eGPvq8GyT4tVlojviJpPyE07MRnQV+L2
	 vcIK5D9fLGpx4Q97NzQIV/DNQP5GQm2jFUOi5Xr3IYLVWR7zJe6LaOc/P/WPjL3Tnz
	 Af4KS4qsHsBLJ98ho9wOc2rPhh6aR4fC0iagIwiKXR/neoI8VkoWr723SgxUJrm5Bp
	 lYtwWdTePuKOC411eLgU1FtW5KiY1fI5ZJ2GFzXQyv+2L5P6ILUbHcIhe8/WmG9Jbp
	 o+4sEj5QNuSfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB8BC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 04:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171894494277.27259.14735721945407510129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bbdd4b89498c4769089cc4f78515744ab1d59109a58fd3f3920e34bc73bd1b
Date: Fri, 21 Jun 2024 04:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718944942
