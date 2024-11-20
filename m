Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3379A1F5F6
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732069554; cv=none; b=eVSJD5YUIgcaHq6bxO5DBTkkdPCyxsAs/kYWqiwsx9QiHKiAkOVS8jb1IUNR5FP6H5NYovqpGBhWM6PCI707L/plR3vPPj/4p3j3pl3wlzHW0HED8RspiNJ/7IcOZwJZqYTCf5BfPR9vzIawfbueYAXfgBIcpHaCN+/9/Wx8HQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732069554; c=relaxed/simple;
	bh=L5aV0Hp2yUTx2wlUiev1IR4wK2mvbaxzFvs9TKF3rXk=;
	h=To:Subject:From:Message-Id:Date; b=UlRaB+sAWhLVd4+DdDl8AOzF1VGFBXNbKNHK9kBnlhRuEF8swk0Pf7AfEmps3qO/7AO2/kDvkAu2XcLxOckWvKBoBue2qZkihvhiS3g89kLCaW6Ug+PNARIxKlX2K8cXKHvTLbmimpRvBHDSM3N4qZRmscX8HkDp5hhzqFSlAlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S72HMBW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S72HMBW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65F3C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732069553;
	bh=L5aV0Hp2yUTx2wlUiev1IR4wK2mvbaxzFvs9TKF3rXk=;
	h=To:Subject:From:Date:From;
	b=S72HMBW/1ocbrL8zvwPHIjj/Huod+vV/giTLunfTMuCd4vVfJswCu0tNqXBEKWwG+
	 H7bz+VcQtSG+Q3k7uVTUsMHFMgNjTLRC2cIvF/49qbNP5ulQOEVrTE6etpP2Z8hRtR
	 GyiI/314YFkGOCvRpqxk5XhpBoZ/0uLjb7r1EUg/RojNXmf/xYfnPb8dwtrsx8xWH8
	 ObWvcyXSoad3viGDXiJGboOV9zopRdvygzgXOA9yPswVX8GY8+tEiYce32mZsoCFm5
	 33Vwpof8OGIsVQSYXY2IX0s75QazqSqSAZKKPMuF1Ea1e3a2hSXB/z9l1l8sIGyona
	 kgDKpbOnBe6Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9166ED44171
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173206955358.20478.14201893355761975388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13ee9b498df795b1d75fcd39faa0b52103bd9d7f03e1aaaef09bdd73398e788
Date: Wed, 20 Nov 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732069553
