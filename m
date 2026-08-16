Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD8A20125F
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786903234; cv=none; b=BykKFtoMOVTB/bdJy8b/MYfCjvlBLxSvAYY/9+3sanTpeZhZ6YrwFTKn3w/drFshQguKfjxePc7irtBtSbr+CeCbQpSRZdDIIFZRzcOeiY7OAjEqKIUyIZLmrbrPpTVe6Oe3oRFx0S+dZ182AGCLUoZeaiABONCBsLDiknrsp3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786903234; c=relaxed/simple;
	bh=zTxw0bMeawy0FdzrFmO1nxs6T84y9n0fP55+wAis394=;
	h=To:Subject:From:Message-Id:Date; b=KXf+oHGlcx4WHJ3seU2P9bfPN7lt0deh9VymdZiRH035MxhNDdjJvKDFPXyFVF1JQGt9yCNYdVGXV3ML0eD4W4w8VCklvl/dRweGriQ4c5l/7IrqtjPTo00Ma7G2P+LHVucXk+0JmXv7/T3bH7fsFGMYo3DWLNVtOWEJDhVcLCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YB0jhep4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YB0jhep4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6998C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786903233;
	bh=zTxw0bMeawy0FdzrFmO1nxs6T84y9n0fP55+wAis394=;
	h=To:Subject:From:Date:From;
	b=YB0jhep43GzjXMHX4X9TdXrO3QYQrAuKa4amL+jQz5jBwUkGyAAyFbqT66VrARj80
	 zEg+QQcqsJujfHjdxwNfsOcaigb9giBDY+v5EzxclgGeGPut4+3kdUIAMdkFnGLrQW
	 9CaCYtK+GvSee7duLmBBEvoIW0Y4IJctwkWvohrj6i/dfjW/xtMLr16LGknUibj2wd
	 jIYHOJmp7ltHv27p7dMOSkaNP2GnXOGQ3+5CBpRiqDCeqKRGaKNTcdmrA02ui4bZhT
	 nffNTK+Ak4etWA03pK76viCs2qI6rwTT9JSU3oxU6VFBIf1B4BglmaABWsIkdX+KwX
	 HzmS4YcR6sh3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1051C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690323368.7227.14699401101328567205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7e0f8030bdc4169dcdfe2c7380ce21ebe1b7e4b380fd3743aee05e04204a36
Date: Sun, 16 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786903233
