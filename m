Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B9F3B3BF0
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785895234; cv=none; b=DoPqWDW0/ea1gsjx6AH5hiPtkaiw8i6gfTJqsqi2Jf+ADl8jo8Ol7iSsIaFBa3tkOZhnUNk/X1loDs5RhiKgiQdadwwyf8RGMujseDG3Y5LTvslbtzuuyLnzjYV1r8SgfKDU0j2bEILB3AOQIhtceXZtWld+tU3KoopvVi5zrCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785895234; c=relaxed/simple;
	bh=hy+traYAsX+8ZOlJy4ddJpuNEFlCLEU0MKubEwzcFpA=;
	h=To:Subject:From:Message-Id:Date; b=qFB17b30kKuFpJ4rC+CwDbx83zgxKPBVDa2Cq99y6GsO/vQpj04mNvy2Uu5gtanenSNiKvlQ4jrkbmcqmsv7DjHsg3P89b3O53OkwJysghpbJrD5DTfyRZ7awpoo5rRy807im91Mq4YE9hVSulxG7lkp2DRxNscoDy5jkDo+c0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXIjPEss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXIjPEss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEC1C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785895233;
	bh=hy+traYAsX+8ZOlJy4ddJpuNEFlCLEU0MKubEwzcFpA=;
	h=To:Subject:From:Date:From;
	b=XXIjPEss/kcLjcsK5gYWVIR1e+sy4F3uP6qi9tXuNk1VmU/UabuecMZLcVt06PtXa
	 XKe3LSkgX/j9iocZTrl2mY/vAqowILcPQYECbATBpDS7wP4jnTtyA9ufiwgqCn6dt0
	 CwkpSGUI1lYKqjY5hwFZq1179YdgAZviERZnyv1PS2VA6ixdCGsACurMX/VO3lmPZD
	 EgHg0v+4Xwref4WM/tfA+IK7o7ns9eeRb+vzNfW/t2/7An+YRfDlYckj2LZR1FmMOc
	 l2jNr+Mn4pc+qlPTtVcx7RyJves6OwClAAOedaeiXijYeesWkTm4to2Q0vCQ78phqW
	 QI+zRVQ/drF6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5AEC55838
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178589523368.16173.14087293067252080950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46e03145513f7b6a1426c0d7af9a6b9334a7617662c477c6d226a874fab8304
Date: Wed, 05 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785895233
