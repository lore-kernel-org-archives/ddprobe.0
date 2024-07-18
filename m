Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66908282EE
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 06:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721283323; cv=none; b=fi9o6H+/ye9tmRfdtJklaJHVz8nmrp0NEQMh/3k7RvbDOGo8I1u6aECzd1YjS+O8c/21AeVAdIbbbQjuafR/Ea06DnulnyrsTWwp8nUEFmf2nKWvZ350X28TqpnKB/RYtHwMOaNL8wyhuHAzGU2lQ52/RhLOFIxn5FR2X347Ep4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721283323; c=relaxed/simple;
	bh=21zWp7QeJarCzfthjPIQAnPeVwzM3oaCpntVi/CkpCA=;
	h=To:Subject:From:Message-Id:Date; b=JY0cAB+G78eggYkbebp2v9TnzA+MLylsoYV+gBdPO/8g5JnM4B2GfNlh5xSiPdalkZGiQXm41CG8c+nEYApzo04WOLsJxB3f/37HypvyNc4E/DmLoJT1M1YiTGZx4YghDfeIxd5d+hq2C1mDSum3TirlyAU+s4+Gz4/28rDbd/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFFS68T3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFFS68T3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A9EC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 06:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721283322;
	bh=21zWp7QeJarCzfthjPIQAnPeVwzM3oaCpntVi/CkpCA=;
	h=To:Subject:From:Date:From;
	b=ZFFS68T3DxutIdrp4S91/ZfVofYfUvKjVK/TUHnTkKZ8emawpUPV01SyRHXF+YzJd
	 JF58zqnqpqW3w74fGSv0JcEV3t2FFWEabbjRbaqdtMA5Bfkct1JBADFGJ/HMmHp+7e
	 tU0kCgdYSZc8s1xQ52sqMffvRAnJSRz/bHHIon+llN4B6PCrL+alKj26QZ0uEKuZvO
	 swVYno9LMV6OFagQX5B+yq+wuREmVFhAEw9eHlb6412bdBwgAJseGFWyp2Yi5YG6T8
	 ENlvEOwdHhy2FaZ1F40nb+ynDPGlOOMN6++j+sw/VN4f9yOUGe/A74BUl6u0sh4A8f
	 A8pIV19Y5KTDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E88C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 06:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172128332276.22247.10444576984171246648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f6ae314e5a0f9a6683d0994148a7858f80c5b574401c37baba991bacb3f965
Date: Thu, 18 Jul 2024 06:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721283322
