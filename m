Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6723D4C8F
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747598994; cv=none; b=t8cxsJzDwqVWXj9G9xn2z3qP4moAznkv37SCteEY7aRE1yOBtM1sGI8LXybP2HRH+wtUOnm1bRzor8jNWCLAyuNP0h826OdJpgfO8il5VsHSyVQIJrKKkS7QAT86UM4WHc37lPS5afikzclTwPo4PpBtUEvr55uWMpB2UQ6eI7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747598994; c=relaxed/simple;
	bh=nPmtkJEnkrlTRGzodXMg5kw2C5BI3O+0M/dgRU03Di0=;
	h=To:Subject:From:Message-Id:Date; b=CjgLKThQlGL1sIhQZSoC6csiQ8AEnI42EjsMcamriGRkBHTpj/aCOuqzN7zCdr1zxDm/IZTGSZFX1S8smO/bLblP/6ux/gRKJVCmWSTWBYKNvS+SBzpVYbUIpm6wywvUB2xAAwt5W7g6IoxkYZUNW1lowh+d3xNzhzAUdoAFn+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IiXZaXkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IiXZaXkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6620C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747598993;
	bh=nPmtkJEnkrlTRGzodXMg5kw2C5BI3O+0M/dgRU03Di0=;
	h=To:Subject:From:Date:From;
	b=IiXZaXkESzIyP2jUS5C7Q6gu5G0ZYpVLkqlr4q10OPslRZOe2VR1YGL/z/nQnvrx+
	 c2O2ml+FBpH/XK1QEbYriWBIkTv2lhUKj0HKgJNY+mJlHEZE4auE8s/lQd00A/Jd+l
	 TqBMox50rBAS1nTMPsGiGhD8FKfeZW7e84pBXvdiemc5I/683Llnz295Nt9s06+paO
	 zhm0HRYYBzP8aEIr3oaHQAcmV9bSelkGEfyChZkEmUODJLY8f10FH9I0LENuR1DbI7
	 CXObhsdfTG+l6zAqglUNQpGu1BMyIWLvgDBK82gwfywyLY8Btmzi689IY4AdbwBohx
	 seWI/wYbqWsJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E18C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174759899357.15570.4423024444632396193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c6be026fc2cd5c8041f05000f807cb782b5518e042e5ff7148804a839be713
Date: Sun, 18 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747598993
