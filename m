Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051D1172791
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716917063; cv=none; b=Jrf03vuIUcEsHNgrN5u+7TXDPQ7flekeiYDxLqQbwv5qW6VUTV+MlvXvWfXJaKzszl/iKcE7D0SggNjtqEF82Ar/5sXWGEf3VIaujC4ly6SZk3hUIsiSkubpOcUe41Zwxif7XzQUzV5uxpT2jCn7Y7AaBUGlHcDtJoH1MyA8gYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716917063; c=relaxed/simple;
	bh=bYe0c3757uT+FVBorMbNf13R1Kvo4cQUkHPyULZXkvI=;
	h=To:Subject:From:Message-Id:Date; b=i1fK0hfHDmxuPcWAG0WavJ+8HJWfCfBmKGpVqvl2pfxpaRN/jKWcFlgXCQo9sSQHwakyW2cSZP2/pQnNA07aeRMSsVK+RupZW3paux2O/SvfxsHdsEyOjQk5R3shZ37Kze8qPjwc+Fe22QrN8xaklGZuQPlszDxBiALPGlN/gcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICN9Q/NS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICN9Q/NS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A79C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716917062;
	bh=bYe0c3757uT+FVBorMbNf13R1Kvo4cQUkHPyULZXkvI=;
	h=To:Subject:From:Date:From;
	b=ICN9Q/NS64woqE55trr6vfxu5fG457dFvndpXb9YAgmZVrST4Hx4qIF8RfvPeboss
	 HAvbulootkIwMhYcqTOCTrvl0YF0ej3pF67GdqRAAjhNYKcpDNEd0Oe94aanTmS20Y
	 ZGb7u+09MwE5JR5krrSpHybswe///8hOnWV//WohSmQlEuCMIJ5SOkdKLhbDhYefi+
	 NPhQIr5Lr4vMr7De4RHwz9yo4MKAB/dkH0yFFnKwhalT/PnSo4wta1m5QtTt9CKSew
	 0i0dIWpaOxlfjynbCCglshrxrTB15khfDQo1XQpbYPh/IklDMCiMtWb2uzZ8Z2TGbN
	 4jyJnh9D+JMLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7DCC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171691706276.13167.17203375465778999268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8870a93bc1af67e4a083a805f78c8ce3d9a44ae043b48fe19abea06d714f056f
Date: Tue, 28 May 2024 17:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716917062
