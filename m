Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9102563
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736717754; cv=none; b=hMllBgT4bGKbsxMRVOUn5dhEY4DZUz+PuMtqAIhVk5KZmw70YYzk3PvV7xpvmouBOd6hx0nIuDMmnN11Yi5Yccxc3bbl3JwhD17Y8xUrpr6IBpKn7KQINOpOBzEfVlsl9MX5/gXy3AnjwDy/Q7Re7+LlkCcmRxFeuP+lFGM7eDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736717754; c=relaxed/simple;
	bh=apb3pbDeVEcivVKWJSdvT2VURlICl3ZhVe551CUXFvw=;
	h=To:Subject:From:Message-Id:Date; b=B8XkRWzzXJ8VCSF7e01RgKGoBElynDOx4fByw5frn9tVTw+2ljerOVTbphouQ75vMlLKs9j5mtNZGWw7icwMeqDI+Bmw256JzhjZWSd7t/rU66DOCpzud2cbicrURFQ9L3TxYTDNQw08XdgLFkzMU+InP4ICLvrPh5ju2jDj1eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzsLpDnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzsLpDnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB89C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736717753;
	bh=apb3pbDeVEcivVKWJSdvT2VURlICl3ZhVe551CUXFvw=;
	h=To:Subject:From:Date:From;
	b=NzsLpDnvcMLDga6bPqO9piDJPbfXfVcxoNU5iPj391jHIwouF5D8a+7Syqp0+sP4Q
	 Qf3t5lNEc5siAki5PIe0G76IAdMfLV9APJVQx+ftc08EkrlIhbif2w5ZfdArUjhBrs
	 gscWbalhAsni/0XWJ3By+Wuei9pmNsIAeb8Px/uD2d8TuI5mEY2IBWcOXxMwjF926R
	 XSPHtNd0UVptp5JF+L7U2RKp1ne4ukX/zaQpGf0HZ2xZa1FvvHhVwu5PG5dMLNr7ba
	 PllZ/5PYP+SNSFqZ2rsnX2YWMbsu2vSIx4a3Omay2qr0BCoQHagkCUMsacHFHdLF9H
	 W0sga3fYOTryw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CA0E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173671775364.20629.5029002053657423128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf2f91a3c55f44623a779386b4d77a20a45dc496bdd1e2a358f28b89b729a28
Date: Sun, 12 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736717753
