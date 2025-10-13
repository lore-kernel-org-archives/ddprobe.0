Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E93221F20
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760370594; cv=none; b=dZOiw2339Edfx5RZLhYWuJAJk3y7WiMCZ+DV0FP8SSi398djUrKrMPZcXx88XWGY72+136ZdaIvmMHkXEIBBY4UX/mCZ032sybXeY9bdg+c2+/X5AOr11aq19SwZpf4Kg/ELjE0QIK0DDnp0pc6ep2T/CMzA9ffCeL3FTONq9yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760370594; c=relaxed/simple;
	bh=qzqopNseMBIFWB+Fu/ml4i2CYUAtp9RD4efqbykBmdA=;
	h=To:Subject:From:Message-Id:Date; b=b/o54QnUk5an0k1Zeum05sqm2H0hd6m+7UMtpzHZ1B97eyAjvfujO1QK3ASnW7Ixdf+dhv8vxTGFzg+AfqM1e8s/Px5PXcEgT2PKUY/vLd4OdyR99XbNbMUXk4ExptDkS04kx3JsYb387puvHmwmYQEONJjy6SfeBkPVJJ4usGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHQsweaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHQsweaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AD65C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760370593;
	bh=qzqopNseMBIFWB+Fu/ml4i2CYUAtp9RD4efqbykBmdA=;
	h=To:Subject:From:Date:From;
	b=HHQsweaQDlfMR7Sm2cXsP3zD+J+Ua46bNGeTBJTu7tHjTSPojJJ7M3rgV2zRjvlD3
	 Etf+e+0Tu4n/UDh47+/b1a8EVlkX2NHykk+p2blfX+4X6txgn536SX3Hr0nlmZ8YEL
	 80dhpd1OMuTq2iiQmDmwYIFxGB9W0EztyZcQLb+ZsHdNfGFSIOvQf9U7ULNoScB2B5
	 PPRDkk7wh8y2lzfHxHCgBkHmCIfpTZRHJU1Qs5vZWxKcmEgB974WamXql2hc6wbjgQ
	 Mbjgr0VPMQ8GrfcCgnrIj8CsmD03wCwWoS01UppLGx0JqCBPoasU4GuEJqU6uoM0i/
	 u1FseObqcxb8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90456CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176037059358.4566.4161818326688950236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ee751780eab151d35b37b057c00e086ea3d253dd07bec977af5994ec2e1c7e9
Date: Mon, 13 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760370593
