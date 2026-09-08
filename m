Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5662D0602
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788844834; cv=none; b=OyUGOrEBCcvU4S38s1GrAfX9nH07RgWFHDcWnkeFF7S01d9R1ZGheZCb5NBOQLZtCFrJz+8GHpkxLtr0JnRvl2F0LEyaou+njl7on+ChC6LjYFoq1D61XX9ikYNzlsghG9TBDezGcL/icOVP/jRkyc9bPrz2cfLfnnCAOXX8BUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788844834; c=relaxed/simple;
	bh=2w+v5mcr8JUCVzV04c+Gth86KCzIZGQYns4NUwz5JQM=;
	h=To:Subject:From:Message-Id:Date; b=g6u4qPYlVSizLt+lNi07AmH7C+TqmFNq4BFTh2Qat0NK7qzM0Lh9CQqttQBdx+Dv0bc9YeG66pYErhL8+uLpr1vNFZ7ZO7hSSAWz/1IV1NSdlBrS0d90mzUSiP+o/Qkv4hyDviTu1eI/iOb95K8Biokx7xjKruQHy5LCAUa1rq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzTiSE0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzTiSE0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49E4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788844833;
	bh=2w+v5mcr8JUCVzV04c+Gth86KCzIZGQYns4NUwz5JQM=;
	h=To:Subject:From:Date:From;
	b=TzTiSE0u/ry1ivGOoCSpKSL4wZ0HphXDI9EwC72prjDVfLODyL0ui8XFkczMruvZD
	 hbYx1zBizvEEuDttdgWzCp0r6QrObctQAhgCrooD8oc9/EMbP0SrnlV6+o/G368J/5
	 Ppj8etIkPzRI7W1PeeITbiGdkvCGtRvO+iOPxa8250hFuKmbQ4lqlwb9rklnnTZC5m
	 i9M/lg+gZWXMkbBqd4QXMAswhnj5jHjzhtDz6TWTCTfBnm6D5YUI3enU3IZj7IKup3
	 YOOAk5icfwVqzQSs1VutDKhnxaljxqWzwVIeer1mrr/ye6fXqjj51gi1cbg90vw5lO
	 7/1dnI2tBMx5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A23C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884483370.13717.10719064432627801117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f799e4d4c876a891d5719886daf28cd77e6316602b2c3e21e565e2b98b2147d6
Date: Tue, 08 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788844833
