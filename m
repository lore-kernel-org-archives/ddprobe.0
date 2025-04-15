Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4842C3746
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744757394; cv=none; b=OQx9US/DE/3ClHsUNCe8azjcwPWywAeS+QKLTdMI34o3Y474oQ1Mq9W6K3wz9rTTrcFg57aOigD2RrzIKCl9egZc9meXi88AiZ0tU+Fkk3bVeiQZqnCO3DutQ90WvCxI0myvXRtDx5H0mQ0+QvsQFT3cY8y8s3n0Hm8gyR3lh2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744757394; c=relaxed/simple;
	bh=2H8tI29LBoklV+Ap3SKg8iRmPNLFVSLSviDSuYxoDho=;
	h=To:Subject:From:Message-Id:Date; b=sFQ2vA2SwiNx7+SVN6j1jm4GVbQDRj1Kn1FbAOPXQLUEoYIJh9S1TIzltzcPELZ/7tEJXxhjOovJPIkTr+o2UztGy/RLLNsNDpLqkOUA8mrCe0Z3AGC0AmCaKGzmDQtT62hepXX4qxRt9SCqYP/UmpLLR0IYRTMZ+RAF/XvMaH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+n0Hs0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+n0Hs0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59B2C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744757393;
	bh=2H8tI29LBoklV+Ap3SKg8iRmPNLFVSLSviDSuYxoDho=;
	h=To:Subject:From:Date:From;
	b=V+n0Hs0HQCVF6OHGvaR+89U24zavxdirHXYcdBoEUhrCnTNayhOIdFew9tlX7gIHj
	 LkEHvDxlC1PlKBDNi7Z3mAL9uHfJOQ383J+zIaYNovgP+eAvLOmnlgnAjIKpuLZhoJ
	 VRiTII1G6IhOttjCpU3gvz/UGxZII2AzGfjAs/lpF9khOS+WV/Tx5lNBoJySq7qZyV
	 bvZ7bfKDx6UMjLFK4PIxsm/GffSfKK3tiaiFLtlcBgGpJpCC/96jk/fSsxUPhW0aT3
	 BqduKS5qxucVIMKEYTu23/7sxolKGVNMO6z7mH4GzwHxXyTqacUwkRhIj9LeqhvaBe
	 VH/qynpsimS1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9110FC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174475739358.4878.3780393182143136570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e643bb428a38524bc77fe4433e0b114c30840f954832d3d03a00053f6f3dbef
Date: Tue, 15 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744757393
