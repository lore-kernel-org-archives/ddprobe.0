Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA9D4414
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748144394; cv=none; b=f1E9KAaFSGfamcsPKsD5j/DmFDeF9buWmkXfhuwugmN9dEzVf0uOyLK0y+bjuTotOvgFB6NYnS3Xf4KsWBmeMtJi/5PHwFvM+A16s9Rk2j8jyrrC/ZTWVpKynVepMGb72DC8I/msD6jTv1pnlxtwBdSOSfDuUHniJSxDZJTGGPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748144394; c=relaxed/simple;
	bh=V9MBmTg4blvxc2MYxz2WvcRpqxJce9UtgzGvbzq4pUE=;
	h=To:Subject:From:Message-Id:Date; b=i++7E2Bh+0jmwrdqd5fVfGBjkfIamxxmPkC7FgnG5rLKWKaoYp6qfuR1ZRlTSTl3Whl8YmLgVVYe682PUSCmKK0gApz1jqz+yoQL+23IJYzFtPl5W/dpwBVxnaz+WoXJQzPGEmfr+GcgsZvdL3Qy5sShsStPeZ84nijDwWDuELo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJDn9hoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJDn9hoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65A7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748144393;
	bh=V9MBmTg4blvxc2MYxz2WvcRpqxJce9UtgzGvbzq4pUE=;
	h=To:Subject:From:Date:From;
	b=TJDn9hoTjEQGdBCcEsraPVHfrWOK3Z5zxJJn1q2bIjmhKojppCTYUot7ZLfdH/w59
	 0Mc7xS12bui69uYMuqMib57+GXOrCSVlAygJpm8pRLkLcM/7uf55NcmtNpPwj39Fk7
	 RpH7hmNMCOMIYVSkDURgvPPb3aE6xHNj9C65BhfOI9X3MSDxWU8uX6oSkuFnu1aeZ5
	 NdX1ARHbliqVG1zPbzW/V/wKbH4o4xd0AcwH8sgtbJvXPumIasplMOOcxztdnoETJi
	 Qw8P3qcXQQHK0PHFrLv1bGd0UJqrPMMG+Mfz9+kUW3/rp6RmqlL/GMcIo7q1C9hiSL
	 1hhe21Fuis+1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918BDC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174814439357.7302.15751052696540584979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25a815cc95da1ebb556e7974a43a1e7cfe2b81530a725d45f58c7107ffb5d3f0
Date: Sun, 25 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748144393
