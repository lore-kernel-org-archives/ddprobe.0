Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B4F2F2E
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752725394; cv=none; b=ZnG2Cb+Xf/LhA4L3daXhGRNsa4oGVMcfCjXFUT1uGi+dX78w4pexa1NPyh7za/Oqu3YzW17djWZn3dDOjI67t1oLDWdJy/Bq0ZPc8VlTUeDvVWwBPg2KIaB7WVR+Cs4/sCBwVE5Xr86a6PJveR6nljRbuFrrmGIlqVPZ5aeVSyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752725394; c=relaxed/simple;
	bh=0T20VVxJsLVrU/Y1a3jl1aWubJOWt1B72uyP4qx881s=;
	h=To:Subject:From:Message-Id:Date; b=Hylhj1J1wW2HTaybVhB53XDv3mfwfzSPNkS7TPn0Tjryq2mwWt1drhAM52+laEcE7TnN0mXB/OD4FD6gmj/JuuKelXENgQQzeVqZ3D5B6KZHZOBw+W2y7WTwC/uJWRb/ms+qDYlOtMyuSJ5Zz99ZevISxODV0c0wDp4wZ5VlQvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMG6Jhms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMG6Jhms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8493C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752725393;
	bh=0T20VVxJsLVrU/Y1a3jl1aWubJOWt1B72uyP4qx881s=;
	h=To:Subject:From:Date:From;
	b=OMG6Jhms307+tgYoG8iyX2QcLhSs1OkRkjwOTprL4uH1r9UJVlQYLxp4GJKK1sFGg
	 iTnf80S32xf3d8qUz+oO7AcmkBjo1CtGa31p9LDVmk5swsV8SjIkLwr34pt4Smp03u
	 S7f4h1e5mJA8m9T1m0oMGT0RZfSKE6CLrh6avUDzvPreW7D0U1Dwtm2Zy9dzKQennR
	 lfimam49ta991Dyws1zv+Yvwu/2ByPteDg2D4wCTyWz2gKetmfDnWL4TqF/g4DXFwG
	 Di3uyW9c6Cq8azMz9X9lag++00MNZrS9/1UmWLfYM1lSszIT01f9/vVnlsgWpYzH2T
	 hWMucapg0A82w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA3C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175272539358.27117.18252835740568155858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df99a069e5ce0e0624a2965d4c28a545e5407d58feff26c46fb1a7a527e8705
Date: Thu, 17 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752725393
