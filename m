Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622791C2324
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788511234; cv=none; b=hdsjSpHyIGDApOnGLqtvJEKjZEs6adENsAtPEid2fl6SyBqG6yLCp2Xd7XwKfJYZbmbNGL8bowmpLYqXoAZvHgRGI/KK+lSjzhoSGLx1kp6sp1HNIRFlRL8iAyBJdu2i8XZ+H5AzaDFolcfWnbYU/BbtEYDNSX7V+ZIlCWg2WME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788511234; c=relaxed/simple;
	bh=hJtHJSZTpBoL+rUS4Lq5eSLzK2gizMcrbdNjAvLm3aY=;
	h=To:Subject:From:Message-Id:Date; b=UcLaSO8snePtzCbptH3qXJQcrBv4p6BAa+b4kDPlBQ+0vsuT1JPIjvzXeeM3csamjTHZFeES4flbR5qdGmQXaoqyL1q1YzjYoVjnWe4y8Zbtjt0+5gz7p6Ab5y2QeIfrZg3DrNIyO/++KU+wTvIbypvlD8oXvmBwFDmbmfAARIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVxh8rvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVxh8rvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE093C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788511233;
	bh=hJtHJSZTpBoL+rUS4Lq5eSLzK2gizMcrbdNjAvLm3aY=;
	h=To:Subject:From:Date:From;
	b=uVxh8rvMFhSvwnRYJYKBGzOg9cR5+rHV9uwlcAFTj6ykX3SguM+J8mHkhI1bWSaFY
	 m8vrNLH2wJkKlTliI/Qftf6LR1U9cbzYwrZMGufS92pVHApRo04td57MCwKIX9BLx5
	 FbOTwXoZd2qnWTnm6+Vi7bchR0R5wbNi/VUpUHL3AbovKUuY7vsqCPAa9hRGiyqW4C
	 Vrk/42YnAq/ODeVfG3MsAqj7IY5zqUWH8ApsARImS5HPSLSycN75IUivYLB1mB9G6s
	 b4gfR+9FwKxM/QAksk5hcd7KHauOOb+YOCsp3rC2nUM4cgd99B55pVD1IinCLRV1Lk
	 bnIVgs5DT4Sdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF5BC624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851123369.5529.13164974172347930914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a97ec66c7de4be5be7c0da2438fe5c3075125b30bb637dbbde9074bf1a87c3
Date: Fri, 04 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788511233
