Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DBA20C014
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737626754; cv=none; b=nicFlrB8GqZwyI3S4YTGy3+kDDTyXPSdJya0/dWMqrgRBgn8mKuvOIXQzqI8MhrU57ot78VrO9bySfVPVFApn54atULU+Xy5V3h8GRM7eUFmzrB7hh4SGYmN3Fc/Jh2CnWX+nfDbwW2ILc/3KFCE21NWjoqeIZpA9YDOk2yDsHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737626754; c=relaxed/simple;
	bh=ADJMw+LxRzF4DjmNVPQNHMus33DCovhz83M6P3uOPFQ=;
	h=To:Subject:From:Message-Id:Date; b=KLhdW9edcxvpHXT7BApAb1+TP0RHV6uXEXsC4ULAhUaIrMZgInZz+HUDn6UbFpzLE6LRdGlTrBRSNbCGB/Pb3RnQYgNX5crWzhZ2TDAwILkmJSn+F5S8IMzmcGtenc+eDOK1oglv5YdXwSHEceaG1RW62zr+8y2SgB0idevIu0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCn2HFp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCn2HFp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA847C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737626753;
	bh=ADJMw+LxRzF4DjmNVPQNHMus33DCovhz83M6P3uOPFQ=;
	h=To:Subject:From:Date:From;
	b=UCn2HFp/mSekIl7UFxUKXXz8N/I+WZj8PIbuDUNecYZXy9OS/WdHHimodUu3bn8sV
	 enxe1sKu1aHk99ijkG5B4i8okq1nEPvSUQDCveG8c3CY6uxeoI19V5/iaq2G5A+Ehx
	 HtprUFqlEnWRihQT+A6cO3UbdP8ZDboh8K1vNCd7TGLzboRx1USFoOO/qI0dAd3WKg
	 yDLKxmy6POgS0IWi1CspvipCN1xRj0GqqxYbRMfnZUizQ9Ylt+PExhUEPW2MnWYpZh
	 NqgjlWuq1OW8ydnwOBa+SDNFU4akUCidOc0LVq6vfi7brC9CMTo/+Qw8jWyf8O3bDA
	 Pvjc2YRcfzEdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9716FC0218B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173762675361.31182.17577632091258082011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225523863558444000265ba9bf51042f7a6a5181551cf878357b79c404406231
Date: Thu, 23 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737626753
