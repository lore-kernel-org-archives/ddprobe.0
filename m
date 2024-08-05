Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B9C482FA
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722866154; cv=none; b=qik0vgT/wxQXLOzvgO3Hd06k3G13rYWmAfPbC3DjQdxc6f7uT41tiuv2oo9lBBag0wuyqOEDHGHV8gUo+6Zw8kfPcS1eLjqVwqTLYi3mZjcntuUV0imuhuwvjbnN1Gi90Ajz6FOCw/DTfE/hAzE/DUBv4BNDIJysMIbkiEZdhFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722866154; c=relaxed/simple;
	bh=o0r8rrZ0JwQHnaYgjJGPavy0DhBn+Hs+kmM9iHTkW78=;
	h=To:Subject:From:Message-Id:Date; b=WCrVR5Ke+aiVL5MeJOq4KLmqim+NWm3dYVmepMzZlrJXejTr+Nb+FRY73a0zSUih3bswns06c93sBWDL8oa8s2cqxAFin4+TKww7cDc1B4MyFIERlCh+LsJzFV8RFYKk62V3skLZyjop1mELiLnNskEk5QFkrYabY4LDNlJdODo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s71YTU9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s71YTU9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41EEC4AF0C
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722866153;
	bh=o0r8rrZ0JwQHnaYgjJGPavy0DhBn+Hs+kmM9iHTkW78=;
	h=To:Subject:From:Date:From;
	b=s71YTU9vSojsVtpe2nWkNrW2DRnt2ynRoa7WbGhQ4NgWhl0c+0iDbKnEEfpFITvcB
	 qyWVGTRs9WdXreRHTj+xY7PXGPJm67sWkteZto2gWN3e7LhpIIpIGOkfSOZv1S0kk/
	 joEZp3SmhNeAxBOcFMw5UsbW2GXiIBqGMMPMaWRjDd42Src+Q3HwE5TlTM5heym0Vd
	 fQOGzP63GQeEOCiz7ufiBP6YPXXXQn6+vFtCQnTO7fXfhH1iJi6+MD/AYRBqoUYzxL
	 omACP2LKNmw1luE0mKYJPB0K0CLVKltM/kxFu37UqFTrxyBpqVLppRyj+P55eqGYWa
	 xilgy3a3aQ0Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8CEC3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172286615359.13594.14405954560412334404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9ac15697f4b89d7a1ed391a88301e6663278e3209bbffdac538e4edf842620b
Date: Mon, 05 Aug 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722866153
