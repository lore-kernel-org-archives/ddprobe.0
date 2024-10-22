Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6991BBBF7
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729614354; cv=none; b=UmE3WOVKnFPrkIa2D77/MYTv2tx0FXrjfPud7xJPMq7Leec2m8PRAQsDsCry5BDlVayW/kK+7raeS340WrJ7mWJQJSsoniTwtEdkX7zs1MtlDbSgwXMsyuiO2i2xWG22S3d+fqsb2D2UQTlQJDO2vQXzcxxo1tJXP3mbwt10Ebg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729614354; c=relaxed/simple;
	bh=7JmOaaS0Xor/uPulTpl7TzIQH5+P0z5wrafzpx7IEdU=;
	h=To:Subject:From:Message-Id:Date; b=dMFTlMhYq6u6uOIDpjZrx5vqw97Mk2B8GHfE3aPGrkpFwEXyw6NOB+KpQHUJUnswao0YZ0ySUZXT96cpYiIcf+aDAG0EG+KRnHkUqT8VSIWWMwPApbv2F/sEYOoacQAToXHtvt00cTlrQWd3ChEhu95MbOQKBxcPJmEtRIHTfns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2gKj9K8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2gKj9K8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F2FC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729614353;
	bh=7JmOaaS0Xor/uPulTpl7TzIQH5+P0z5wrafzpx7IEdU=;
	h=To:Subject:From:Date:From;
	b=G2gKj9K8AykJHtAL40yxdl6S/L0rsoaHUptG3eFhxvrQcdXKu2XQg2fU9kJmWeNxT
	 2/EGx4i32hsfT40pNvmpKTT7wWySB/jR+9GRVug54MPUYqiXnB4ZfTyaxdN1a9jPZv
	 muG2GgelqVDkMIrb92YbYCruJS1bakaqcPez0Nb/6zn1KSGhxmxjaBRJgudBIBAt5A
	 NFj8/+6MohrsKww0AJKZVZGb72axhRMOR7Tq6MACXpqVED69tOf+BkKInEKs/9Wx0i
	 0fRiqA9HDYrJk4gyS5fCoVAmdeXDkfCLNeBE316dZ7HcK1iHUO+YS65WPdYqCThO75
	 md95zreOLOUaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94216D2CDFA
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172961435359.18776.1910225902548786574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5285c3e91d4d6a18082a34e99f5447df67dfffd382ea34810c97a2dce71f3d4
Date: Tue, 22 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729614353
