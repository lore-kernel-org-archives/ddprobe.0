Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7FF3A5446
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776902254; cv=none; b=rs6SGgJCsqQq0MHQytY2I7bfw7RzyOIJdzTK5DTdWeF4fPd+mG1oVb0/eJzUNTCUp5d2DQVgBMQUgTrCxn+cxYUIeaG44XOYWvNyQROYLKKancVv1GSHCWXq1CU3wCDxec4+7zeCF+F5jZiaQL28vizCF81jN71nqh3VAcPIqWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776902254; c=relaxed/simple;
	bh=/qw8XFC0UKhxJev+m9NXVe4aFcnvD4RePmGD/6r6ViI=;
	h=To:Subject:From:Message-Id:Date; b=jXErTg9x7ZTZaYEeY0y1okwvWc+4R1se7CRH+a8g2czO9jE3lxMQK6KP4NvB2gGohxQK1Z+6WFYLHEi4seI9OP904OuYSim0leckhri1BRi3eqfLKKgnO+gYGa0WUxbPKbcbE6npCbh55BHqFMhuEu3N367PpcdroTS6KHKoo9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W40oaoX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W40oaoX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E66C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776902253;
	bh=/qw8XFC0UKhxJev+m9NXVe4aFcnvD4RePmGD/6r6ViI=;
	h=To:Subject:From:Date:From;
	b=W40oaoX6FSqTSACc7qkdQVSmlA+k1M5mlx8K3p3XTk3GTzWJd6Wh4yXBDvOgulkrJ
	 2lgvSg61ag1wbLROQZ1is+UA/dcSU2W2r6m2IPFcfJ/H28gfLQpiaLd02owuLbGs61
	 nQXh4eDHHjsI9Kb83+ch0ESLfKYACoNeTAeX+ses7NgomXfs0L5RohUqmdqwPOVRiR
	 RtJ5BvZsVoUFpcXKnFWAgEctHlVsLNLYNW+xwRXi9CHdybdmJoAmjHfUZA1l16dI87
	 f9ozJXMa+yVV5MGbDYYSRJ16XU4QRBkicqjjMlj3XVbGl+QKvg1wRyH7BrSZse1bi2
	 JrkcaX3ywhbzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E57FAD3E1
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177690225368.23870.16534249373528841698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ab00fbaca0c54302f670ba3889139481e369e0e0a092dffd8e2d1f4bfb1caf2
Date: Wed, 22 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776902253
