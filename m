Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C11B629
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 07:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714029083; cv=none; b=RjmWgm+IstQHlBTVinKjFbP8Or0fj4u8BXQzag1163IvTtdLIuyoF3ri0YVSUVyuZp2ArrYE7ioqO8MZx/Th1xdygCfORwSowSv30eV+laElXG0qm61bRIV7/LNAKeH+gpofvNmbeDgO8Hr5R5yzIvYSyOv3QpI0k9NGYNEFWic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714029083; c=relaxed/simple;
	bh=ijSfntzcqvKhStBDFb2uXR3YgTiRc31WuNiZdZ6SiQ8=;
	h=To:Subject:From:Message-Id:Date; b=JEE52dZdeNev0hkBC+A4qjVrBYWRD6u1QisrRYQXFhgjAPQyVWOxYXy0BHY2fB9w7KlfQ2BjEDdyef0atIk+aa5w08F6WrSp9C3QCuHJdExLfB6T2sRwVSo3wb/18B7CS/AjGO2VqIK7iyY6WMElK96R3OS2BhRP2Y9XY1oBuBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X//Q30V2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X//Q30V2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB026C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 07:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714029082;
	bh=ijSfntzcqvKhStBDFb2uXR3YgTiRc31WuNiZdZ6SiQ8=;
	h=To:Subject:From:Date:From;
	b=X//Q30V2sg0cNMrnT/GRLoteqSPPLmpxgfVS9IvdWlSPS1sInRqLaRdtWuvMzxJg/
	 1WXkZs2GtFfYZgHVGZD7n2/QymlQcC84/6GYW44JcXaLFsqg6U91ztcFQPB9FNzsB9
	 +2YJDHeqrPUlV2KFvg++4Qg5YzJp6S7PjkEdZm/BH2pFwJXWMAoWIFW4tGu/o+seYc
	 O6habVXD+ZLVgzJfXknpIj1dhuBAtTOG3/SIPNwdU7SN3WXa1+G+rdeASoBhYWAWKW
	 dU6EKMsBhpXDMXhpkx04xIRoSXCAnWcotppcpXSWyIwNlpcNJpxmmRhKx7rVR2wJli
	 jzxmckTPPXqig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A87C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 07:11:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171402908278.15733.1707490752675736634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedf18d5f5c5fc7159dfd2dee87594f21134ba92c49572c02d23d7024ce165ee
Date: Thu, 25 Apr 2024 07:11:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714029082
