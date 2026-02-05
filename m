Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB453288B8
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770308633; cv=none; b=UP701mmYZl+VLfvSblPzdaIcxYzb/gkNSN8and2s96wONVT3AcWP8jhHI5qmFkzrVbABpsCGUXidU9njycSUZsFXwpoXETGLk2IAI5Mon9HTbPbi4MQTg0CPY+pPB15+6d3ID7En+zdPTHffBoUJSWbtRb2xsZZlPlIiIcib7JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770308633; c=relaxed/simple;
	bh=wAAgsfzoWbRlLhfRCHPohbzknCGZ/BOZVsT9ozHWOkY=;
	h=To:Subject:From:Message-Id:Date; b=ja9vdEFqYVdb6kQU42WMd67MPmXs8GPL+BIXmhy2pWQG8sxHKL9dZBCndyIVcgUpuQ5bzUPtfjlM7OPx9Dh4qVyHS1Z0VjmuGmNU2J6wC+AZ7LoeYuMnzfmZ/28NgKcnq/rTZWCxqppJ6AsgVrIeGSFUXVXME7Q+XXypB4Cs4oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaNOWpHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaNOWpHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1324C116D0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770308633;
	bh=wAAgsfzoWbRlLhfRCHPohbzknCGZ/BOZVsT9ozHWOkY=;
	h=To:Subject:From:Date:From;
	b=XaNOWpHpRYgKNBlhZyRkguyIQcSF5yE8xFHwapp+O9WS+ak0QZv7c+GxHLnwY0CT0
	 /jDzgOkrMXZl8/ESwt8WbyaAvmXvW5tmfFMEcJxYhcwlcswvHbekkV3v2XXEhR9MPg
	 W8yNzVFvRDI4y5qv6N0S9hDaNwdBDr7mcnKHF87mANVLQCb1Q5/mZfjIPZjy9rVqNC
	 +2Oc6b4T885mTnUZFHuA7PnzEoZxB1Tp9kEZlFUkV6gVxn4Xu5Yrdo8v6XHB1o2Pmf
	 SEqpcFq/oMo+jYvrYw54Dxs3RagvdYpvtxwClhu/5wpNHBFLBUbmYfrawojcmK4uVi
	 IdRGKcg6Px/UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FB3ECD986
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030863358.3796.2952004349662743347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96aba84f3666fd6032ca523d6cea45385319f9b7baf2160da91370311341f330
Date: Thu, 05 Feb 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770308633
