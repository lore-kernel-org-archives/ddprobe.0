Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0674B3FC7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745181594; cv=none; b=IEcVihO7BU2ymzsNetXX9IuLTcrhXTF8WpNwxyb68MkAU52MfMSC8coGZIbJW6EAS2u5SELr7O5tNJ6sqR78V+3QLWluL7BCPYUiAJ2iI+SAr4AhcfPLdbJjpqJ3NIaGfZavL8WV1HxGTsW/Fp85ldln1z/OqLVda7WQRX2sBj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745181594; c=relaxed/simple;
	bh=Jn2Dvy401flDXnjMOIqOdaP9Sxzi0tUm/RxbT2Y4Rz4=;
	h=To:Subject:From:Message-Id:Date; b=Qs5LDuD8P2xheUPDyNTeytczFviH/7Ipz9y5vn+J8xoSyDoA9NTSnpGx3cB2X0gUP/wEqRITpk4pDWqaNDGf/H2sfdY7RqZ8m/l5S9ycHeQqCJkRZCWwhnuw5h46FB0f+OsS4LC1cPPVs//hRCJVOVGRLv7si3p/kvgAQEBBP6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxZuX+IQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxZuX+IQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EACC4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745181593;
	bh=Jn2Dvy401flDXnjMOIqOdaP9Sxzi0tUm/RxbT2Y4Rz4=;
	h=To:Subject:From:Date:From;
	b=XxZuX+IQxuTCcLzqZ/kjYH+1uiNyBjoM3CUeGVe1Kc2gk5DnlByGPU47KKtvUevc9
	 4WNf8P1vMnKg5ScosVM1A+Yput9H0LgGFRdHrnwwGV6xJwoyjzDGXIAkaxP5kbBWGR
	 DAqAityQiO/HByIy5qWgMNKAetr8wKjlVR6ItNgDndI6X6Zak5GAqGi3/Lbszvmd6+
	 MPxTv393RSkzpzmy449Vk7yHqENzNoiQb5SWb/j/MzXhZTdFSk5mzg7wfqwudsSmIv
	 KHxiUzkU5cpm9dn908SET6MJj5qPUcTvThg0eAcpFG9l6QAR3dv1KPcnLuWRy8dASW
	 ZeyfHteN9GDrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFE9C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174518159361.22307.6973249456623189417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e15f6985287f713f0cb57a820940087cd3fd4dd37b6262b13e4cab43885a59c
Date: Sun, 20 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745181593
