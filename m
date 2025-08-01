Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480376F2F2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754049594; cv=none; b=Y2p5IUo1VOI71mvALf1v+jWzfVYLJZmVYEHyMm1+mENrsdvhl8T+DQzVgcYVzjrPu3fmCM7C/TQhb9axddHfP3Qjsg218Q8Ic5szxJb2oR5nhkHDiWnuc1yZ/sYwwuCRh8aPmI8yaNPeJ5hEXFJ/qK7MvNwKF+NgYcy4qmp8ruY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754049594; c=relaxed/simple;
	bh=dEOhXjpnwjAZSHkZy5rHHxIVVV+y+eNQZ8FOMANlbYc=;
	h=To:Subject:From:Message-Id:Date; b=iuI2yvjfsKRAttrUcowP4gMc2C1H4OpW0h30a5OYsjjIa7Qlvcym927FzxOi1sYgVZ+sz5XquE1TVLEMe2X/rLQcZ4vBHpWKgP85YOGfGonUPJcLVmD2bfVZnY9veOVW9pfjCsJ2GRpJDGAbWWdGQ/61ah14di1PCIllEq99GN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvOy4DHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvOy4DHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A105FC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754049593;
	bh=dEOhXjpnwjAZSHkZy5rHHxIVVV+y+eNQZ8FOMANlbYc=;
	h=To:Subject:From:Date:From;
	b=WvOy4DHhBRJwVeBWSaA1A/SCKOoJ1wxZQUrtjfbJFmRns9FKd9eXFkrWHJMOUG9o3
	 s88tgvwQDbz64vtUdiF7tux1ly6A0BEv7edHu3SI5JcxiIS9+vy391trnorXFEsFD/
	 P1m1Qsxl7KlImlWmwMomNsa5PNDZw6+MT/Gfy5wlxdYO7nxEyAaGklr+QDHF6jnt+N
	 O8r6JK6+1/ootppY4yKMb0FFMXRnH31JhnWQeCGNEb0BEoUVG15tVqAG2Ig5Iypigo
	 mIqFtc9m8TPNCDkohsklBlnB/F2tafrNYDje9NzLtZjGbeazvOApZz6S0iC3HNJKHI
	 egnJrdjYsUBUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23CC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175404959357.11994.7569413650625010248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82cf78c61246826144b4449e9f415a4828264313a87f2d7f32f4887bfdd7c2c6
Date: Fri, 01 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754049593
