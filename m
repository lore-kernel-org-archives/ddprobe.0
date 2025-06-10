Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EC7227EA3
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749554994; cv=none; b=l1qBPfUAeEea1VVQdd3U55LRqIET69Tg+miEQTxe+F1eFfTmyMYsFZUzGeAjtLwBY0Nh/3Ebax4gx2qPlmsCh88PBGnnpVk4MC328mYKZagV6n9PXosLOddumCZMjJBg8/65fxb2HBxfih7rtapaMK/25UJPbIYzywUIce2JfMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749554994; c=relaxed/simple;
	bh=tKyeoMiG+kDxWnRgVAdKGMCRsDH9H1Mkl+HDSBGhjYI=;
	h=To:Subject:From:Message-Id:Date; b=BAYUNDBv63yk27laUWi3NLRh23zFI2KtKt1Y6lKdZW2qfVtXJhYGcu0yiDmGmFgrrIWcBya+XqbvDGkRWoOrWf8VfJ4AulE5dV6rO7E5ddexHosUrr0yA6lAsEnPOzRGsQwFBA0gI+cINrKrG4JYs0muVgKsUBuvL4RYkzQrJjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3pl1RVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3pl1RVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96C4C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749554993;
	bh=tKyeoMiG+kDxWnRgVAdKGMCRsDH9H1Mkl+HDSBGhjYI=;
	h=To:Subject:From:Date:From;
	b=j3pl1RVfvwIwEBHqtWG8CJx2f8RbTobePuTSrIDtaGbPSKpb+4tDiw/UI8vafKTVx
	 NMjv19VkxYOOtO8XorpaBoviZo+7UKJ/JYSFyK/zuvyhQPP8DfEjtLhIaykgs05z8V
	 obxtMNGRS/S9Epsw9X5MQU0ZGuJ5EMso7oC93FfjJZ+1qLl/CsUpuquHYzslgD6TGN
	 utI9qyaGYOqE8bZKmfQf/fvTTK0sf9ZKwREHUuasLGqFH8EtkQpWYcfpPahMqM4vgp
	 /4pcSEhWUqAmNdGN1VzCV5+pgICp3BPe6Z/1SWGTYKZc3uf9ilkPzX63TBjh5HRP5B
	 eem3GnHFWFq+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988ACC5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955499360.21365.11989328272305658103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5e5ed68f72bdcf91f5b7d834740ff24582034bb04ea0f7c62aa69ecf1e14f15
Date: Tue, 10 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749554993
