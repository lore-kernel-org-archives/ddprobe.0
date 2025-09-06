Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6BC482EB
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757124593; cv=none; b=icz7eFJ4ODd9dOjzAF3AQbXrIaE5obdl2/H5d0XSVTldqr8ljlukpJfg5OWTJRv7begabevAZvqd7IQYQQ1//Rn4xKeAWmKdyfBeWJ6RiJyQaDJakzi41w7AVGcka02XL9j35hmNqMsbtBDifb1hiuDycNqjb+YaVdtU2OcxQMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757124593; c=relaxed/simple;
	bh=32P4MWDM6/iWN0ooinC4FfADzi/I2s50FSewS66e6zQ=;
	h=To:Subject:From:Message-Id:Date; b=s0t7jW0heBDw4gQwR4uHL91gk5cqaKgpZzD+WlD+p83ypoe8oib9/39f/O/HdT0k5n1fWICUysj95syROO4cnwYq9JpJ4h3AbXMdWxQ9pIP+ZTFlQ0H0VApz7iEc9LinKVj0QlMB4EVYWUi7fXlC/bUUCOjIZYEBj2kDh9dMj4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0d8f9v6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0d8f9v6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EB5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757124593;
	bh=32P4MWDM6/iWN0ooinC4FfADzi/I2s50FSewS66e6zQ=;
	h=To:Subject:From:Date:From;
	b=U0d8f9v6Sn8WLM0MqxxkgM/7L+1XT1qsV6fK3h6alsFU0rUqQ3/LLz/ey7F45LnTT
	 wc4ydbpfK1nC16eW2I8urWVingelZenuOe9jp7zgwOg4OCRPxeWZuIiDRggh6ABROm
	 /eyzdhiKUgdNnOQAKXu9GDrgay+4JH5AO5UIsicKNSKlTj2G0rRB1k/a+/2QzbnUj+
	 gwROH8z1Mam+vis84wSWPlEP1fI/js5KyDcthCy9QcZecv+uCKsbaIJNjsyXkuc7gy
	 eNwSzzihUB1blfi+W7vNCBjPB6M+cRtfPmvIUi+ribUher//oNSeaZoqtbE7fHhX+/
	 ggmVMIKqumfmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F283CA1013
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712459357.3447.446640882288338775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49532caec65c3ee674c4353c21a791317c33f3a81392a2f66819f3c665854dea
Date: Sat, 06 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757124593
