Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E034163
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724554554; cv=none; b=Z0hvyTvJ6eC+FfDWwEjAx0I7RkSm8ed+xKUeq0R/MmZNh4T1Rx76Bj3DUq3XkmMN7yHgrDp5P06actZ4JsOXHW1r/fuL7lddF3ju+65j7SxsTFVdM464xVMQ5jLuWVCppqP8C2cwkgU6sVsFEi0NTDjkg0n51CFvvsXnSUsyFqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724554554; c=relaxed/simple;
	bh=XlkeViPBjNpjljoaLKQTCM/Bn3Oyxt+i90s2S3STQqw=;
	h=To:Subject:From:Message-Id:Date; b=NbmDzCHRMsNs/gyqS9A0altpP4goBHiR9Y5TjjYm19ImuN7eaoJLFjPE2TwEaMryo+h9Fql5jSYqqOSRHiSuXfYTp8Q0Nt4I/yMJsEJ0Qeg1tmL9VqJ55vuyKsODU2kPH0UxPCHCmrqSQ2wV2JvrYZxDuXA1+eZXcSn1gUcTGxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkXJKXzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkXJKXzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFE2C32781
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724554553;
	bh=XlkeViPBjNpjljoaLKQTCM/Bn3Oyxt+i90s2S3STQqw=;
	h=To:Subject:From:Date:From;
	b=rkXJKXzLZ0COVcanEnMowlJ8VBH4WqxEEhBIv84v01KUMIwXog84xrCgJx+jSKfhw
	 3PVafyKubXCqcXgUNpk0eVxsCkTbOQ2e9qSVIr/y+fmYy/7uNZuVxY8XCuWr1JQHE6
	 ELJPnYgWEmdg1kOezFhRNDM1rHfArQ59to6icfEnjCwJaIvUXLRj37YsJKb7L6CRgj
	 kd+BIy/DAmciqS+LtQgHw9RmnStzPWAr/Rr3JKFb6YnvTbkfduJBHu08RpvrAc5QP9
	 7Td1zSSEhw3WkzhQ0e8fWzrFNmktj+9XqLHFvwpu8lIbA2mDGmvPJyARe8tFM5t3pT
	 2sGmZoRnhtmVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B41C52D6F
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172455455360.13251.11603284003268216540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e6c0c77c3d26ab998c7d1852bbc1267ddaafd20152580a73d4cda0b1bcaf47
Date: Sun, 25 Aug 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724554553
