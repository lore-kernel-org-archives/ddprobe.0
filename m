Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2A233986
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728404154; cv=none; b=YUCfSywW7lHoG1Go5TRc4JyyPBqtz83gVeeDAL5BS4e6VnftA5Hj/db93blAR8FKNUrkCDnSl5axrJXJ7tc5PoLwUQf6pIafmTAZOZVwIKfnxmSBJRrcJ41hlR9gRfkafo7YtxBLPS4lL2NAtVEhaJQ8BTrWwEi+PadVyvp0CSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728404154; c=relaxed/simple;
	bh=BQ1mqJ16unJR2xbEeWJKLnJEtCsiP8eL/hRDwVv3lvc=;
	h=To:Subject:From:Message-Id:Date; b=SSYWX/MvApdNtETputUzxVl3iRH8GufgVVkS5cxlNwWyW/7Ga6oH8JSf3BpcAwUEEADxUl4q2/EaEVctEbvdfQ2PZCgNRQf5x70pKnbBoHka0Mn96XtkQh1/m/14VtwItgA1GBDEg9uVLBdaDv7S/icgQbR0984AvJT4zHmmyVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s90C04Wx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s90C04Wx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D1EC4CECE
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728404153;
	bh=BQ1mqJ16unJR2xbEeWJKLnJEtCsiP8eL/hRDwVv3lvc=;
	h=To:Subject:From:Date:From;
	b=s90C04WxvAfwScDPF3YyI52M5DAaLLLsn9JCwigtlBlSxOYjVTvzqZKMJvSCST6II
	 h+TlUoTR6M2qnFZ4gVrgHATH/gXglco4JJE2CQfQZ/86li59DFIjsG4FYyR/qEVRIF
	 dOY2XxcZ/ixr8SZ3uiuPZPSf0PLj2zX7IsPaVoE6oLLyRS13MSlKAbzU4Nh1Nmw3g2
	 MK8REV7SPNh0tHqoqRxZme1Bv1Dh8ZXEyBGgw4Bs7hgQPLMaxmvL7YuHeNhp98adVa
	 /1yIO2ByuWLi6bqPCQHmmw+z2XI6HdsnhyE6Hx877WoxWSpH6bVzWY1LOTHNF2RFB0
	 QIdOeReac5LWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9266DCEFC2A
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172840415358.1138.18126821398709883388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24dd0b86709888b6193b3b8f79dcd675779e3273b764d633098f8a7a66e28e65
Date: Tue, 08 Oct 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728404153
