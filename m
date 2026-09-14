Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F80449980
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789385434; cv=none; b=WHUEClj/RCCsyPLklvMsk5TFF/I8gQZ63mx4q++n8/TnisCygOXEMCqaW3wQ3bnpgzdO0PyLiJk4TSfb82SdEvlkyjfIv0TD3//0mpeccQkffOJayF2lPa5ded0Gqeq4G2Evy2eRTixRbJN38ilQ6lZb88o+gsAFYoZd36RneSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789385434; c=relaxed/simple;
	bh=1DxF/vGL54ifbdOlD6+Jyf1LPmT47p/Z3kaPP3kmWFg=;
	h=To:Subject:From:Message-Id:Date; b=KSed74dvYy+Q0MKXeEj7IcJHkxyWcFSDwa6ySt8GGWwfVUY+//VXGFA2m8PX4l0xA3KOZSKWHqQKKryRhOBIFYtThJwF/uiuMOO2NE/oM252+z0Qn35fuJCY3HGYLJ06DoZDst9hJ6mRAsLhY2p8u1rvGcgY/ZAdNu0ocnti2pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUBBkC8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUBBkC8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD912C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789385433;
	bh=1DxF/vGL54ifbdOlD6+Jyf1LPmT47p/Z3kaPP3kmWFg=;
	h=To:Subject:From:Date:From;
	b=jUBBkC8ZfxTbjbbibADg6G6tkFYSb8KZqZpYJOC1hZWgR60Kbh8lZ0Or3v4mh30ax
	 iif/4x0BvNGLs9oUntHQc6vZ9kTPs9XdNYm62Mjcb5h0O+tM/3cEC1SNJk7Gsw/QCE
	 EIwtC0MKWTHSLwSNDzAobkihIQxD/74kyX4WITY63SoAmkOlrXA3hG/SPMvlTSawTc
	 OFkWEbWys0Ld6jzgbzSw3/c35fPiA1mslhCJ/L3D2M7iSxc103F23c9OliTrToBJRY
	 j471O/9XTt7PrduJJqCuqaJ2dbG714hyCwibz3NDY+E+UeD8tB8YuFAzooUT454N8v
	 m2JkBm87sZ2Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4ECC88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938543369.26049.17383272205703807030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ca4a2332750ac9bd1807e9a74034b5ef9db8927651a32ec429a28fef94d087
Date: Mon, 14 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789385433
