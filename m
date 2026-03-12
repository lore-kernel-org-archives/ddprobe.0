Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14401E573
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773285294; cv=none; b=O8AHUgu6T8W/6EVMKrmjpgwBP1pcoHu16Q+OXdotnWWzNl7zsv1pt1ENk2Jc+6aKPP3AWnfiFEEUATrC4jH1flUV5yLYrE1D/gKe+XjA1tOZD2oXyqxPBOJfbwf0aS/VHnNcJ3lsfu3HHzozSy0g3jnrWLdWEK8uBsscuVPHb8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773285294; c=relaxed/simple;
	bh=bDyvj3JU8dxify8ph9g7EE+NrBJqBkUBeXBPPuil6gM=;
	h=To:Subject:From:Message-Id:Date; b=mDhTo62V1ocqsrjpmCgcks88mHxEZKO2qfB9OQcM4p1yrd30cBYsWbjPRpTt9Ku2RjEjayeMR+GglAQPXDSNdr0gc23Mt13M9BnHiZHJLyjFXZa8ta6wz9uLKxT3+XOlGS81MBrPN9YMUKS08omOzonFqZYylLkNP85WjM880lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKViH3tl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKViH3tl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DAAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773285293;
	bh=bDyvj3JU8dxify8ph9g7EE+NrBJqBkUBeXBPPuil6gM=;
	h=To:Subject:From:Date:From;
	b=tKViH3tlAfY/rSLBW3+ZjNcQ/ehqw0M8xYNrOIB3Infmw+yq40oOCBDXffaD3b2jF
	 hWNesuzPLbRp7Uz8yyJlolC+iY8bFFhqf/ZwnfY2sgRjCQGFmPR81GTuwaBfha/ZqH
	 yX7Uth+lvZWrLmR9X0TO3moVQoLaY1w0ZHRgK2AMxIZHlR9JFGZ9bOug+eC9TSb01q
	 IA5sAALbrEtc6yQbViOxNeUlmzCoePF/KTJTyoODn3nGvus8YQTB541/AIahtTZykl
	 283eQWkSa2ICduYs6a5wuZ8LJOOyvayr6cwrB5cOKLFaV1R07QfYvzw6yqOHLxrYjC
	 6c7uVYT7+rd8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB6103E300
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177328529358.15658.16774263276810839482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664ac1abfb4bd99df62845a194150e764cd571c3796a9e6838ed2ce5b071734f
Date: Thu, 12 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773285293
