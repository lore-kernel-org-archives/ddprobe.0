Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FACBE46
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737332154; cv=none; b=GAUwmNjvAsx1+zmtjqQE4DITxEl1oyM3SsGi8vYqPMVUnNTreVNP7/EnIGmeADanmBt7/S62aqxQ3xJyZ5cK7NstqN4PzZZphlI2COPZaubbWxGNlxXzYlesMalHfgvFpQcgONdC6XylbvcllNTw17Y4u++VaAp4X1saxYZADG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737332154; c=relaxed/simple;
	bh=nujHJu3Vfetq1I+t3EgHzAVBAW/aRZASakg1Q31sl9Y=;
	h=To:Subject:From:Message-Id:Date; b=p2DL+wNroMrBJnr5v0N+RAvVBk2N14aOF9HrhXMn4FvFTcn4fvpkjwMe8IdPaKVSjIOsb+VIfNIO2FpRND0i2jCMsmXUV7eOxuXiSq0XsJCsb7CaTUYPm0oJfTya5nXZXQQl9nA4huvvPtiGWGk4M8ZUZZYvfhxt55HrsJ+VL7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iapQojss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iapQojss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBE0C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737332153;
	bh=nujHJu3Vfetq1I+t3EgHzAVBAW/aRZASakg1Q31sl9Y=;
	h=To:Subject:From:Date:From;
	b=iapQojssb+1ODgFezcTJDt+9Opt0wgnPxZJp8/s3Y1T9kPHL2K8DAZMf0oiEjWt+h
	 PMN7ZNGqp6YKxJMTY+Dv1sqaT3aF17l1gJnMY+LrP4qikdrGLnSXb9XsTHnnn7JkIJ
	 YGj1/ARjwbcaAlOeIEfxvnm54oPkEgTRPcC/1OgPU8ND4z9idByEnTgBRtS04+Vn6Q
	 TSOIps+iEFmoIwIE5HQkfC9tOpFNoUTweln1v0sN6pm2PAPdGGI3pOJMjCkLIjUuK2
	 VXrqcz+ZcRZZFR4nlJCXyoIId0+Go+MvlF8Cgntzc8TUQygL49PNFMltIHZAQxpZ4v
	 7i6rdG5xN2r1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C50BC02187
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173733215360.17158.17395076768972940993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd9c5ea215e987cc483556e09d8e936c6e7cf512a0ee456cdbd7b25491a0b04
Date: Mon, 20 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737332153
