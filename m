Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB7084039
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763655713; cv=none; b=O+2M2vwl4efjVqEliZx0d+DhNee8ojaVIzb2HsZhkiRy+Y6qaCfIzvgpMOnBl2VzUIvCrTsAUqzDY1DP9Osr8caxNpOYbLW0wCenHy4NF8KnxlMtYCxVzSgTSQfdjfQigmfMjuUhQ/wQgNkQH4DNOSpGI+OdlpEwi6zTVMqf10E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763655713; c=relaxed/simple;
	bh=Zhe06E0nGicd34ElYQ18L9KNYSDVAWX4UKimJ+jNotE=;
	h=To:Subject:From:Message-Id:Date; b=DeABs3D0xoC95Kaly+U3h87V5+Uxxe7HxuxS9gZizs5OoUdPr9Tqcz2Iu74JBnFVYCH3/ImfSJno70rMzlxVHXmThZUXNQpZDs+NwSq+PDHNUq0g3gGehik3fDUKuB2sX7aUi1HhYOJfWemE5wyxtsnfR2PntVC5utW666WpZHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpE5ufk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpE5ufk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0671C116C6
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763655713;
	bh=Zhe06E0nGicd34ElYQ18L9KNYSDVAWX4UKimJ+jNotE=;
	h=To:Subject:From:Date:From;
	b=dpE5ufk3OxgE24mg3F/R1STkK/E7YxzUrbezXtrKjBcewk0xBIlTFH0ztxjU21w6i
	 QAl05lPowaPh8KhpBupG70X/ODBVHWyeadrhC8BeCRLCifvJohY+RE8egvVpYsqkUF
	 AwE0yyDDEFs9qx/SZvzXNrKCl6w35iLi6lnWUuonXUWvdsCW4VGvUwnPngEfcO6GTY
	 KYOkDstY+eTI/ShyeUSXxQRH62df8O0q7x8wP7ZCZAmifdI2R9mxOw52rH+It7w0wf
	 hGYIglIDVTDUvmOj6Vd36qSyxjqMMMJ69rhe+jjmvpFCnX5c1zvKhXy08/1+RXB4Ye
	 Td7P4K0Qq496Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91371CF9C40
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365571358.28320.15237961006990727079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5704a39ce3a7812042e19caa665371e4ac8edb4fdd2533755acd8723075ae1
Date: Thu, 20 Nov 2025 16:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763655713
