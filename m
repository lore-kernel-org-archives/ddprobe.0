Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABD34683
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 18:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741544334; cv=none; b=gKRx4VxmbRIb1QFQPOJk/J8W3VUOoGfXessihOTT0LtIbOuYbbV7qURnt8yPahiUH01GUzf2t0axqI8yfOG8NIX7MGDc+eVweo8U7fFq+oMv7KplURKFcU6jESjC4X6PfQIU0VHIZHhy/iZMwiUeQkMMqhwWHbLWgpuCfwQDqBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741544334; c=relaxed/simple;
	bh=61hnN6wZf7NP05Yq1PtIjf1uXainiGz6pp2tKXf9ZgY=;
	h=To:Subject:From:Message-Id:Date; b=qyrsiUDcT+Wsx57g82WXrn27d5sdBq23ZPoRERVzJe1ntZUjvQENe/QpXnZHSIuoKzSAjZ8VGPsJsxtpLcScSdea8CdZXm2ThXMS6nwM2wZ8bUKta8gr/BxLSpOCH4mJalOgrHk1LX8wWm5BFLc9ehN1eNZUBaVvKJ1T3Jxaj0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrBIECLY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrBIECLY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5319C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 18:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741544333;
	bh=61hnN6wZf7NP05Yq1PtIjf1uXainiGz6pp2tKXf9ZgY=;
	h=To:Subject:From:Date:From;
	b=jrBIECLYpo710tTOzarquLBmO2751y7iCuRVHEzPkiNT7bwawuO36g2WFH4hVhHTC
	 ppf576ZDpb3h5vS/DUiH9vYuWB4gDg8+RyT4HBLNjwp/i6UT0JYN8cxCGECNmwxOsS
	 I3AgPVz6R1DNSU+4DpJhOxIU8blZw8cEFq1Fd24Q7f4BYiH/j74wwFshjY72GD7wjx
	 i0uiDviHJ5X42Svi45GRExnvFox+5Cc/Qq3EiekqRdfwN5kzCRdDbUdSUCdiduqEV+
	 RqEqb5fdKBsTNP+SEHWEImUbDuAJwjPmrbDqQgm+CVvmBqeG2MlHFEn2v+YmjmwTCs
	 iUk9U7/bHD/wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93631C28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 18:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174154433359.28927.14572050078020143767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f761551c5c00c6a9b1d020deb7903602cab0dd32c538950f373aa7ef85b6fb3
Date: Sun, 09 Mar 2025 18:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741544333
