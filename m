Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1CA126BF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762201194; cv=none; b=iHvPOXuf4Up+dA9EYhJ5GJm17rTb/Od+rUdwklB7EKmrqAT6xUgC91IaN+9CkSWY24r7/+VNupNWWSxBO5g7buFVnGC+8ScqTMCkxw888uZ64urrc34BSbRsMjkpxOk2sxg7EVyMUDnaNqi+whaesX5esMYYXswyJf45m9dzXmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762201194; c=relaxed/simple;
	bh=m3lIV5GisIfcqyJM4rmRrYw2dA7B+viKW8Ko9wdgmzc=;
	h=To:Subject:From:Message-Id:Date; b=tR/OzIs6qdo9e84LonUQIIsxSOdKAlip459ye5uoAhD4OjwI0tkJwxTp3uxsEZGZx1D4+ORIR6thZ7++YB3xzfcBA30rdj49N3kdeD0Y1jnWx4xVFWVQewS0bH7yN67GNYQUrxpMG02XGwDYRx4zbIiCcllqoX75gEL4JJTBhOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZrXTVTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZrXTVTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E34C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762201193;
	bh=m3lIV5GisIfcqyJM4rmRrYw2dA7B+viKW8Ko9wdgmzc=;
	h=To:Subject:From:Date:From;
	b=IZrXTVTiWcO/8BJmAQH3OMz6pL+/GIgbBbwLi7Cj1kget6r+z2Kf958v8vQM1A23a
	 ujL8RIIdHOIFgD3aBzZW8HW7mo/naObGR3hp22QUfrMjPrjRASqxosDg6DPk2pbin4
	 ZCLiZwDgydFCNUtugfzwFzj2q1DmP92IaKt0i+n1C1iTd5gRqko4648Avc3SENNqV8
	 LACL58SFtWP8z/nZ0ZogrKknoUx/wGIxdgoPzWJfC1Zwq0+WCF5ySN3kvgcR3/9FHP
	 Hag/HH/4a30JGXjTvFzAhOshZ4rIRrb+IRMgEG+8CjB/QD2eOhoz4Ouq157I4OAu/5
	 iUs9dF3WgGXfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E3CCCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176220119360.21827.17631043007921863686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2809f5d88d3487238429769693ca68940e05f87b5512833f4c1100bf94b7315
Date: Mon, 03 Nov 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762201193
