Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE6436A34E
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780443874; cv=none; b=hgaspQzYj8vLfQX2Iq5hqK9zWugdLT7Icu6vIFidZLAYYwws93omeyC5S23P0QBfZY8JyWBt3OdAwn0Ye3HYijX8RTRaHYh22GjZsVQ5ujgGEeuDKWMfUc0W0bi596LZIpfB4tJ/ACibgIyyPig5moUCWtHelLt1oznXo+kdMUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780443874; c=relaxed/simple;
	bh=/WW+RjTqvUNFD2HSc1neeCModkR/uce0kzJekbB4JTY=;
	h=To:Subject:From:Message-Id:Date; b=F3WeYh2nZPTnXBh8sZYytwCNcZp+hzMLlbPcUvi4C3Lrdn3pyFC14iZbF25U+LPkkfhOIKucbUAZ6APKby7gOmvGs2Jfyi4r1ov/n4rn+OAv8Pp2tS0bwDrqyysHejs1L5Se31ymp7Ba8U0pBl7rhmzEZ7j3H/dMPe1smSupDow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIjjk9bS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIjjk9bS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F15C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780443873;
	bh=/WW+RjTqvUNFD2HSc1neeCModkR/uce0kzJekbB4JTY=;
	h=To:Subject:From:Date:From;
	b=iIjjk9bS94qbWOoK3U7Jy5hFhwBDxIBlsNVH63kOtr/K/jbPx5BKUyrrSB1oeJoVw
	 3NzgpZ18iMxBALs9wEb6NFGnvEwrRGAerFdA+7gBpAgUCqg7S8O4vJK9SonaASoHCI
	 lf9dk/KBaQveMnRavtwfufHHieIk9UnyAOA1HnqUwWdN3nwQLvhvYRGUIkzD+0/V2E
	 8db2IKR2ljh5CqR+CmGxRystOwUFJXxZ+jMq+e8OUwbMcbG1jFbmYL6pcTDa+diWd5
	 xlkMYYwhrgEfchTE24ZyWyo7I+KUZvHFVlqKvNCuTClYYh9A5ch6qhEa25o0jMSbqm
	 +5G2bIoscfFHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B70BACD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044387374.26340.7638131025101705174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2306a42cdf319e784c542b2dbd11d964f5eaefa2fa7707ecf0a631e40ebcb694
Date: Tue, 02 Jun 2026 23:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780443873
