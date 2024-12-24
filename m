Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EA28F66
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735032954; cv=none; b=DXP6xf9xAatG0E6xzV5AAhW60OsuJREgO/4rViE8G1qd9kFgUG7sogn21qGXb/DwktyPgyzm/hlr48BANhrqg4WdAeCp2LmHpyCHEElSLU/JkfD8YpSNpcF+5qNgNNnuDNs4Ojt2loaawoc9uuiWuqAZT+rZHVpqisafnG1njV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735032954; c=relaxed/simple;
	bh=YN1C7TQ++gk1PrRov/ZZxpMFH4SdLs+YRd9aa+1lW9Q=;
	h=To:Subject:From:Message-Id:Date; b=N2YFLoSO7mUaIIfkZc5bUk9azMyT5UP4wXmu2VGGhy7kcFsnOKjf5gj8uFhbkWRzhljAgCtNuukTbTK9QMEjVGFWFwZXajpsuy6Bq31MOpxNyD2WG0puXztrt0zQXR82W1736OVMHZCd8I8/FAotdobZdSIvK+wQxEjL+u8agFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ah0+gIdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ah0+gIdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5742C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735032953;
	bh=YN1C7TQ++gk1PrRov/ZZxpMFH4SdLs+YRd9aa+1lW9Q=;
	h=To:Subject:From:Date:From;
	b=ah0+gIdrSwSViZ4hvqvIlZSKIY5AFlRzmv+r6XozqZpZ3AwjpMrldbrv9Y9tzLMe0
	 C1PMtEibUnHI5h7T5aaSvMalgp2vhSHg8k8lvyf6M+DU/c4d5GU/NzgJxhbrOhmT8j
	 s1bqb/Wc2g66P349o0pDLqwmLXDvkOpC9L4HXd73QmQS3BDpnxtJciqpb0weu2O5IZ
	 ZQ6PKNK3BjK+DN2IHJEPIBqvHQGQrXXllA00UFxluUh7XYenT+8H7jFsWH9nQtZVHt
	 6kTBbYq+5v507vATSfm+TMtTb51ny7kxbkGMzZrAhUpcFTlIbgvdS5MT06WyEzXSlu
	 m/nlq/tuq7rDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A533E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173503295361.3379.17937035972866508809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ff5137258702c36e55a74ab4c93af5880bbc6ea7dfe256a0bc57245f0a15e4
Date: Tue, 24 Dec 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735032953
