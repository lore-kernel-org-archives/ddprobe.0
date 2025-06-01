Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1B617BB6
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748755194; cv=none; b=AgLr/boTM2rJAuQyh9PwEVELD2UJpP/UbFfE3FByKPGRfxKi9nKLN6bKNZVr36ngFRCd3mkUSjzQJXCnLgK5TwFACxqZRZVPyLkt0tLAQKHJQrdZX0xQ7YmCi5reWMgqeIy2ftBqBBTOChxMLkDR9/w/E7zi17SvA0PsyYIp6Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748755194; c=relaxed/simple;
	bh=rWdILHtZlDHP1JOEXoTLBQmpXxc1YSj5OOrdbx4GvsA=;
	h=To:Subject:From:Message-Id:Date; b=IU56B/vtNh17UP9wT3A6H3RSDDBnGio12suQeP0bzdCt37XP88YNqzpFqvRdX1kd6nVY7RnIQE2QUpMOAfcBdaMqHBxrvwysTxOg4vOl98TYSOzyP53l4S5l+Qw4L7/9zaWKdS7SmwNbBWgJz1+XVljgHFNXckVpVUL/jHxWmmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWEsSyC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWEsSyC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E0CC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748755193;
	bh=rWdILHtZlDHP1JOEXoTLBQmpXxc1YSj5OOrdbx4GvsA=;
	h=To:Subject:From:Date:From;
	b=CWEsSyC5Xmb7Z8ZIMYn49j9en1ab/Wwo0XBDLsQeBbubNJopSoW42k6jZMBu8iqJW
	 HyWzru1T8ipR0ROU4X8M9WNPpj9pLs0G3dVpzSKAEPU9H8y1MAi8h1fJeY7OpwVidf
	 NJwgyyTnxFMNoBrGR1Ak1FRk1B30PqJlquuMAyql6MztjskYJ/0z2y4f/g/QeXoQBX
	 /UGjj9BU/3c+2u7T1+qCebYIvvGxLQATD6YeYCNkTkDZwmeHeuNkpD9Zpzv3Lf82Ln
	 51HTl8RanmwGWHO2tjpy3UtW1vM3Db64mgvD5SRRz94iDfCkxnfPNO2ToZu2exOrbc
	 apk5dNqnolm2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C76C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875519358.21940.7428686704397522889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad4a0c0bfb3d8a9c3d39085c40b9e13b2466f32bb9a84b44a8306752e0cb1678
Date: Sun, 01 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748755193
