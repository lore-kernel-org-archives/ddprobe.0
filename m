Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 756B92940D
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 17:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718560703; cv=none; b=VnGSsPjmWeh74cOhFNVJjuWzZH9vJ22/OSiN5hTkE/nvqJUj+0ECO5LLMLsp9/SNBdlZmbLlOtwhLcj18ZesCQDMe1/HqYJWLnxGWo42m3oHj2Asg4ehZ7HXc8gooe5RFSO8ushdYnUQ2DzBTCRTYjWym5UtGhGDH8zh7+ofTTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718560703; c=relaxed/simple;
	bh=q77crNE4zo9S6t9OhgVe5iKyYO9eWYjm99/nfQ670hg=;
	h=To:Subject:From:Message-Id:Date; b=lv99KyVkeUdwvASeSxpgkWnKuxwXOm3YMkQ3uxQhsCeuUyabpEuceyfp8PFiK5KAgcvnLBjpEFxEQ4zDxKGdWVilf8Rfp+dpYpkNOXwSAhLmDqKaDR/cFGqmimBA5d3Oz2LUxDO/I3QOPGw3JyKb4Y9c1NuHyrZjovGL3qAlgPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEqHy7XG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEqHy7XG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7AD5C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 17:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718560702;
	bh=q77crNE4zo9S6t9OhgVe5iKyYO9eWYjm99/nfQ670hg=;
	h=To:Subject:From:Date:From;
	b=UEqHy7XG+G+wqtwL4ik77BVk4qytxPpTfN6TkK/qFMdgFtkBZWc1sZq0ZXVCnJTr0
	 PI9VilDSDVKtlitluNMskx748kYJX1syaAMVy1KJiEOShmR9l1xN+sPUbQghcOGYy/
	 cwL4v0fgE1Ui2pLIVi0OcTtCa0r3imUgNQVQPI1GozkjbuQXIyJWU5MY5P3duE9CEm
	 /cVknbg0kr1t7/Ryt1MKUkQ4wnggRavDfMgVqTkNU2C9MX4lQLp8tCl8GtypfFevQ9
	 /8spDsHQhU868ePTonOvIjxdOed+Fx5XAgaZ9tsWJtM6Twn9IgS/8M7H9jr1izEU/+
	 usYYTU/PI0wzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE890C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 17:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171856070281.31627.10525491431574707998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1fa99c6967e69ab3ac02bf93f9287bece1bf4557e961147c0afe38b271a3ed3
Date: Sun, 16 Jun 2024 17:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718560702
