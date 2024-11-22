Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261A015572C
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732253754; cv=none; b=CDb60vLqsXLqMXJu0uMgx1G+1h5ko1cDRW2Rw85lOissl1d1cl6nvJ1mLD59Mh0Gj67LLga/8okF2GbCiODFQXeAZCBR9/s9X0XX/ShX/noNmCJWuIdeCjhcsE9fc1Lp621QWaTWG/jk4hfajQIyDEok66NSPEBnBdyFhz+lbxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732253754; c=relaxed/simple;
	bh=rA5gC22hMOs7bQGFeI3brB3ui4U8JkDEzjQ/FMbdBlY=;
	h=To:Subject:From:Message-Id:Date; b=P6Kxme7f1d+m4/4VQYVt0Z6+KdplWeHMG4o/jPZvGhEhwK2K6FbuSEGCstGQoNiz+nULVaC5bp+N1LaaJDmoHSOOFpGV3RPCFFrEDRFAWxBbSXK1icn5Zs4rSH69TPApAVwadB0eQAJvXchEyiWgg1XseCEQWPksHI29D3Y3o9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXnrlWZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXnrlWZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17B8C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732253753;
	bh=rA5gC22hMOs7bQGFeI3brB3ui4U8JkDEzjQ/FMbdBlY=;
	h=To:Subject:From:Date:From;
	b=dXnrlWZC/OEWVCXAaTS7Zmq4xvH2gGIFsDYVQ+oERVNFzGJrm9BFgilYRxFtMZiOa
	 yzlPTAdWVJ6JRKK2z+aOf8GDtd1hPIbrKhn0dSarMpImJs5SeJHxcfs68xs0a2YoFp
	 ZDMxQzIwp/pjk+ORgxSp5my+I08zQ3MJxH9zexiHLxJwzYUjHo9XAH0Uu27NIAjKHj
	 6S05RPU8IL6+TIuwZj3nIhHbTh3p18eOF+GAd5CL67sMN/ojfFpiVtB0yO8aClgegu
	 0F7FMCxId0rmZ9lkNPSWOrP/vU2SiuScV6w9XO4EwTl430HM0c8d69YH6X+DMbavrr
	 vY3OHyYZyXgZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A70BE65D29
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173225375362.26695.4405196843130309241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec8c1f5f66cfbdb2c9b390980d654e78206dd9a27794c1f56347bebaa360d1b5
Date: Fri, 22 Nov 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732253753
