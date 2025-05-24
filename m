Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314A2279335
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748115594; cv=none; b=IWgdiDPS8R/w6lLf4Q0OpPYL72rSueuCCIoUr5KNRPtixbr3bVCVqf0YdkR+cNEhShUmavGcyN/9XTi4tjLShWcjn7FR+uya1V1UezROTnmt/QSllh4ZgXLoFM2z32iRpbS0s48YEWX5jI89wrME25ktun6SIpxsb9E22q+D6W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748115594; c=relaxed/simple;
	bh=VhlFVw1R7IpvBD3bk9x6zsKInXNFo/sYY45C9b2EZrc=;
	h=To:Subject:From:Message-Id:Date; b=fml2kVeHZSbes9scGKueipVG45aRr4JeUhhVcLxjTdCJIcSczKZgeGthNHLVX0ZN4qL5+2tENd6PaqMmGhkIrxxTujPes1WtRhoq+WxXVT2XEgZ4JFxQtlyxHCXZfNoIZ2A8rMokPey7L1OzN1D79NpDE8VmOwX7aeHVrAF2PFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjiaEYVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjiaEYVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92FEC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748115593;
	bh=VhlFVw1R7IpvBD3bk9x6zsKInXNFo/sYY45C9b2EZrc=;
	h=To:Subject:From:Date:From;
	b=HjiaEYVUGO3qdsTvhaB18uqsVLa41eqt7IrfYjVTkgb+TobaiwOBBDnxQ1dFPQqIF
	 yYorpYXWzG4P9An1snB+yISAMNu6QfL3K5RJH/DeBDwgfwsouwND6BY0LwtGNI60aE
	 YVJq8n8F8sUpPUDtgR7/Am+yEp+Vx8coqYIfM/yXA7GJZuOLcrHFDdbgKFU5LMpHom
	 G1DcdRQ11fOwwUp+JdPRSjDQWX/pzIFJKeEyyeP3keBsrfZqeXlteObFHUSrrOBtZ8
	 soq/oUpB3YRElUJTFtsITDD/Wt9x3HEwhWi/j0E0N96UzwkLgKBoMVVhpFzrs4edDZ
	 P47Mqw1uSMW5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95029C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174811559357.7000.15652327229418442042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 510fbb14174273aa55d9cb412e9b5486e45aea442a6844ed59f53f3ba825931a
Date: Sat, 24 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748115593
