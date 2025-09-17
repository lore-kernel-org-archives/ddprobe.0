Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16812823DD
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758089994; cv=none; b=T8G+tR6nRjdAFUQlE2p3mh9ZjKui89hh7ljTmEU/vETHr8xCikyki+OmDkaUk77Xv++L/8yBbUJlTNlYnR4SvJAC8qRO+1e//S0A3XqmA0JbpfWdZOqEN3eWfI2uoojriwFWwyPnjLPTOIDpDdhjuW93XLFpYKNU7Fsmn+4UumY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758089994; c=relaxed/simple;
	bh=yboksOfDnIIB5ELAPIXzCxPkt//CHStY5XX79j6IZ2o=;
	h=To:Subject:From:Message-Id:Date; b=TeAIIKtpbmaBuGLTkgyLwtiHDWaXfYg78nEqcDNsGfmbdczjYzjfp9QTdsgOP8EEGQRVeDCTvEFVJwmeaYKsi1u6/trNL7yHlCifD3KF+7rEB8sDwevYSeXC4PHOaRiJ7tT5ryCy70p+FHtbRjSlena9oZgX284SQOU8SGeIVho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CY1f532D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CY1f532D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D05BC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758089993;
	bh=yboksOfDnIIB5ELAPIXzCxPkt//CHStY5XX79j6IZ2o=;
	h=To:Subject:From:Date:From;
	b=CY1f532DxRo5XR+cQT+lCxaWfnSCdTY5V1ckHWOK3IELabg5CNyCm0I+YOGkTFC8b
	 IhntPer8DAMnW7tpWXW5PVGEn5KPloEwKk3307d7VSxGd5MWBml4di69mWeje1xTjz
	 nQ21UJE6d0O3DixPcAUVeCAYp9wYkeYzbYHzGzo8VPKs+55W/i4VD1BNK9JzNvIMU1
	 K+TcvGArZnAXs6ppcDJDhzHnHxGz6K3uyTokrgdeLbt5PmVIRVi0KAjPHhhhjCHT3W
	 ZUD/+HvYQAXtdO1N+kUHzcaw/S17rT2qatd2/uq3k4yG7VeW88Q00Ld3OcN3DHA+iD
	 XIZKosK6rzsBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B0CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808999357.10109.8935055075027521755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c52dc19d5daacc2a6259da8f9a05730fa71a16beb435aba92123b675228389
Date: Wed, 17 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758089993
