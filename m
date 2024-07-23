Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DF31E868
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721702154; cv=none; b=FuDjRpOEkca+6QcfuCQK345wW4zWf48vezQHDrNZr6ykDXoggVrfi1rkOs1XEa3hFpBo5zwdcn3nNlOsA2LcZT76/81FSCEh8sMECttLLahr4oydJI82awGLhbv8S1hzRnPRmwPaICeTv29XT+Aho9ZFoWrkM6zXQHpheZNPv2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721702154; c=relaxed/simple;
	bh=TJaoFWO2DiTFFPknoB9D66HxEUe5DoMhbPtIUa7j9SU=;
	h=To:Subject:From:Message-Id:Date; b=NaCqyGGcp/Q5XhR/mZZSufud/kLxnil3i0bxiKDzsH8bL+q2gxbhz71XcQqESUzhCaPMuaTVdARfii1JR2THSvh0G8pFq+vkKDSNPudK1YpQRQhA6olmvkuUtWUJtkH8x1jVCXHZxeT8FMA8hTpfWNHZ7NSWZZAbZx2dts1dePc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGrcDGLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGrcDGLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF527C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721702153;
	bh=TJaoFWO2DiTFFPknoB9D66HxEUe5DoMhbPtIUa7j9SU=;
	h=To:Subject:From:Date:From;
	b=AGrcDGLTi5YaLDMH076dxxB32RU6Pv+K0c9WYm2HNeJc8GGkeTLkv8y56Qhn2Btud
	 1jXWPlusEkUZgTGpjVl4XzmKzxmPWpjgZXekEr/v/iEXA/LvFePNxFDxW4vVH4kFZ0
	 Axi8kdwlxNOQ0DwnAAlJhDDl/tZIRVeRyy9nnZVy+EzHT9I8uDHH8kzH5VUrLg56ox
	 KU0dmH+c313zutK8wVSLKVnKDA3KPl4l7/d41nZ1pNKZ5IQ66Es9jy/V7b1CF3CmJ9
	 smTJGiMvHr+RluABshP4RoDlFC4VfVx1fPV8K59Dfn+7K86zRReWEAgDsYEHZlXaL6
	 xPKYH1Bm9KHGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A575DC3DA5D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172170215362.31228.11664447872714712312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e757998f3a933ce4ea90151760a5cf52464deae55650096e773b258d53ce692
Date: Tue, 23 Jul 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721702153
