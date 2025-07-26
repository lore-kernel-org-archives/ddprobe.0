Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBAE21A44C
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753564194; cv=none; b=FglOEzFKXjXWd/obtE/FW2XIl/EkCocDW1MAVXL4bzqpMtzL4aHXZQARa5xlKSgoWxbnX4XQ9VpGHr6ehjk46iuLH4kYWa6Ij1umx6i73b1eR9TLkCHe46bskTdUeKAvyEHbChIUZ2pdO9iz65u/R+udQWgW63Wvz8yv3LMPUP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753564194; c=relaxed/simple;
	bh=KjhU9GxIX22IrrJJsgiTCrNInE9C1hbgCYOT0jJCkrs=;
	h=To:Subject:From:Message-Id:Date; b=cOovxNdj5Px3zsLbjW8vpJWd1MrBjsxG/Lo/ChVHvu3BP6gQWyitw+ZvR92p9+os/4B6GGZ19SNhSXZ1cZaii4NEokH0XEjqTWuxXaxj6Scc0H6Yep0GJiQxgVnY/0hlsCE+/QaZU6nBryY5TIEFZjPwGKeY+UhFOQ6GaOTdlvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCRVNB/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCRVNB/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ECCC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753564193;
	bh=KjhU9GxIX22IrrJJsgiTCrNInE9C1hbgCYOT0jJCkrs=;
	h=To:Subject:From:Date:From;
	b=dCRVNB/nUu9QKWB7d1wn7N3TKCrmMZdp0LSU+14ojEIQ8YlhsnzuaXjEBoMSqDl8y
	 EwndVvdapFU7fvyo71lmKabRt6bFPqYW19VmCeeD8DWpiGCBUgOZFTBS9hiIocusnA
	 FpMCIn2VYwAne8G3OHDsCLmdEbNDEEq8n/WmoAPN4bhGkLYGGOg4jUE3P7kU9Dmfhd
	 /QWOIgwAii10YD8Z2FulpTRc/uJ3nR+y1M88NThF2NSCzZj4zgen/9wo54Xb1k0SDF
	 JbTSlMOhDDoXB2By7pPz1mbHbEOkiUHyYu8ihNHbXPDk/54TSSHl1NxUMs3xvDzZ0U
	 +6iBWi1aDhe/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D88C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175356419358.18438.10794489786782101104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be43919e1b04b8c410928d7adea020710c101732315ade3ca43b2d996d76a737
Date: Sat, 26 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753564193
