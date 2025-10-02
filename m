Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD33E2877DE
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759435193; cv=none; b=DuW+LNd8j+7aJIVKrBurHq9uYQ6jk9ZrPC9eCYPOmtLvnm8h3PRiOQzkoleQGgjox8StUpWR+94R1UFe1SF2ZKXebIpeHmfDosesqyR1jySw5CT38nyy/RiW5X+t0r7RkBT5mwUsLW4piLebXRi3ulNW/quEflVT7TJj4D0ApTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759435193; c=relaxed/simple;
	bh=1PkI2Q0uAwxYwBKtZI+LiEU2woKuvfC8emS2DzMN/qs=;
	h=To:Subject:From:Message-Id:Date; b=J5T2v5wzgGh3x1049p9z9eiU4mdEmIPp9cE1q1Bg6p8JQs3UNWyji1rRVuWLDvZqQTm0by6I5leZIJj17ig/lXimOOfBOpou/usNYwLvWxH8QltGM6DL/5URt3fdSy6Wz+DXfm0P3vN0CJlK+PTvmpJVITdIEclcy/RyL1/E4wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8SumwWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8SumwWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC9FC4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759435193;
	bh=1PkI2Q0uAwxYwBKtZI+LiEU2woKuvfC8emS2DzMN/qs=;
	h=To:Subject:From:Date:From;
	b=P8SumwWFWO2iNA8ed4HF1rXVUSJcXd0BdgbnTZBPmEHG1b9XSK3xu6DvJu72dJg1P
	 C2VgFnKN6N1eFUr3lDIa3z7vgCX2GSQSrXMY4QAUH38aQ/J9iXwG4/ROEhbFlC3APj
	 fGzbscfZY1JYa7c0neQyC1XMD1vUt1abqf/XCZJngQhY05q0rMDkKzpwsVCzcvdVN0
	 Yavikolxy9deY4WI77MXBh5O8yN9wkL6yWPBIPmqkJ6wvm8d/uHvtbydCsVC8/6S0y
	 qV8qcXWLV6lQaFU69lAIPPShGHIbk8sAEgYqdx65izWJabHHDNUAhIaK1/5PcAq7ty
	 30RsE86kKPv8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F84ECAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175943519357.21004.3583422754629021683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c38e950b209114d1dffe28f4581e1227913fdde3722358c08da50336b0d1815
Date: Thu, 02 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759435193
