Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A7F919D8A4
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717639643; cv=none; b=QLQYK9+OaCnVFzsfukOIMUAUfrKCZDzJ7/i7zMNFMYRgPtF75hvASqghkWAeXEbIt4Yzg35BYVLWX09HqThsBP5fOVNc2l9OI8Sisot5flvYCT0qZP+N3+IrZ01Q5ndVsSW4H9jWve0u+ZgggYD6MG5y4F3Vqegapxz9cEe4KYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717639643; c=relaxed/simple;
	bh=Bz7h++sFwTXJVkvUKHMvzxJ69zADC/0CRsg/UqI6mKQ=;
	h=To:Subject:From:Message-Id:Date; b=ImiCrr3wpuDWEwECiwJHsupqoeLxWqRbmPG/DHs/qPcARXSHc5d2R9Xk9qzd3b1yXbq51BNYwMFSP3ppkcUloZ5fdrm99RGHyEDc9hCJUx7E2O5y5Nd8tD94y0lKAwppqQf9jnNd2Dvt3T4cJhX+FulyXmyOZv4WRrvBIExwYOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qod6r/OQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qod6r/OQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07CCDC4AF49
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717639643;
	bh=Bz7h++sFwTXJVkvUKHMvzxJ69zADC/0CRsg/UqI6mKQ=;
	h=To:Subject:From:Date:From;
	b=qod6r/OQQA8u9sGglYMOmMMJrwB1B46wZz5ME9HnBPH2zMLjvukrsXpT+HAaQzQhS
	 JaAge2v6A+TeDn3VYdzw2+eNrxvra6fTX84k+QQofQZesn33Vk7FB6vj4Tnoy1hTu4
	 EruWkH7kfIWVqtddKKYPWl/njfmaJx41LlQSTqikp+jLZCc5jWUV+OVTYpdRi07I5B
	 AS9GWS3/zOOFrZe3dtzNvVlt0c+dzJZbfC79ZGJe0Z/6z0dlzbzj+gutSB2j//JoQD
	 iWfhGaBRObCN32qDceeHuYOcdIMcq4VRH2a77D/mya3CUIp6KEo8Ee5tHKLRiO0O8y
	 H5MMwh6T6pIRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEDA7C25B76
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171763964283.6213.6602033162808460454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b889c6be579a3daa1bd8cc6f607a394f7d8e959cd18af06822170ad2fe06975
Date: Thu, 06 Jun 2024 02:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717639642
