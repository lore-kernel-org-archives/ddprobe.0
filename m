Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96941EB497
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722570953; cv=none; b=NB8ptMzl7osA7XePjAAc19K0W6+xC6R9De+t1jz450SnFsgLOELEwUWeuKUolu5PzCihCTZFhtljxMj7t/2HqNIVZxhH22U0NOC0uVvj68PIDkDLoLA58RdWWf21rwqiZ2NgQpDpzZi2r84y2GyY6vP6Oj2Mts2AICa6t4iW+l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722570953; c=relaxed/simple;
	bh=j2a3g26SmiFnuwS6B6YzXLwvmybqUumlKHxZb5ylxos=;
	h=To:Subject:From:Message-Id:Date; b=NOks6BufoZn7mMg7wzM3ED+Q7T9sovXtDdeFTUT0Rcq05W5Aj4oCq/iiqb1x6xqrJouO6BtOn/E0sWpcTBQz3a8OnCouePR4TAySXquTPEybnjF1w23a2NoZq19GEedUGC6bW+OrrPDoTV29NI//LRjMUk9PBDQXumgTcKJniI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEbWBNdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEbWBNdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93C5C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722570953;
	bh=j2a3g26SmiFnuwS6B6YzXLwvmybqUumlKHxZb5ylxos=;
	h=To:Subject:From:Date:From;
	b=iEbWBNdfJD6uvpxdGAHBaTIlzZ1lrDp7VUcJfH0uPFCM/774JIAXfjbF23FYs4Z1L
	 sGZkFxZw6N+wFUtSszl9/d8pe59YCABo6OkORxqMOzFUMBRmXZbW9WOsDc1Wy7kFzJ
	 AGxbLu/V2ZVZue6qrgr4bX/le3kVafMd0DVU+U2nsgL1MZWlVXb+LE4JOfxT/vTL56
	 efcdybCabG0Di62v1cZqBJV0T+SHlILbUIKKLpXF6VjIES7/WgsMqYrIC2IslZvi69
	 sD1et0axG1BnoJSt7yMQNNd2Rg7PZ0M5miBNI+i6UwVImVhQPb9h6Kil1nKucrmqE5
	 GN08ae3itq9/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F361C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172257095362.3670.2826817087038360689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e210c048185dc4ec531187ba2222747d092142cb3e103256839666ec9aca70
Date: Fri, 02 Aug 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722570953
