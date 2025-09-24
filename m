Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D18246BB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758749394; cv=none; b=gO7hX/rEl3jiFj+6r9GTEAP5jjpDVs2sHAUexgA2QkxUb+kyiCMvZznlwcwobzdzudw6dBR+3Z4EaEJKGWYGYRweH1KmTR8sR/Fv7YsGBr6nUjjGOjZVdA9SxQx4eMRkOlF/NnxAiCTOGD3+rhRnfP+1Jj8igAe9QTAmbDeaqD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758749394; c=relaxed/simple;
	bh=5uyHuLgUYKTBOpD379QBzN0N8kPD30Wq42Mu3wkbtb8=;
	h=To:Subject:From:Message-Id:Date; b=HUCut7bq1EUkPOnFHEG/aiETu71khKmMLMJGRuCqP2vrUD4vbfaoI7G3emjpSfgC93xnfqfTE0SmZ4qvNZys3TiqIMRgm2cUvr2eCiZq1Olvo4m8J5r+ol/d7F9LJSr6Q6ZnTdu/ktH6X6w1lkIuS7sSeDzkvrQjSwMlhO3iOYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGTRZsvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGTRZsvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA32C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758749393;
	bh=5uyHuLgUYKTBOpD379QBzN0N8kPD30Wq42Mu3wkbtb8=;
	h=To:Subject:From:Date:From;
	b=mGTRZsvXHekM3GsPQda8e0s9a0wZsWDhSk5e5Qp+jZ/tC44vxnhBNIMliZ4JR2wTM
	 ZB7aintB0vOihPbROqUmxSGMFVd4xLIhP/O/e4GtMRff7AIMoY2u1zYeaUC96+fFMq
	 Gp2GpdsCubbnzWrRHPxqAMJewIFeAoeh7EY8xsz3SkkXkMd7jq2FzpkG+nz5xIAGWa
	 AefWRb0kbXGO+JVeENPOlB61rVQXW1ImXlAYKhgqagI/q0R11fKp8fFRba0LssESQZ
	 M1/m7Jp6zTum/1wBlHKPWgiv6xm/ZbODWTFr0qas+M6eHpcM0xDgl1glGe78KqfVGb
	 d6Y9mxgL4oEsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D7ECAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175874939360.29292.17678249571343570051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45380f395fedbc023c25dd976405f24d15818599252540dd0b92e3f92cb7640
Date: Wed, 24 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758749393
