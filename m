Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D3D335C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754841594; cv=none; b=XTNQkwP/ChPhFHBr7TD656S8LEpSd2LFhH04mJzu0ZeoWxvgxLTjMzPCSDmfihzoywdrRfPiHzy0ehbOwrSVKd9h/J3B3H17nW7NvExYc89rPGWGhP/EHhGZtcLEST25N1WtfS8JHIQgx1wLiHxi76Scj2Kg23x+m2PUaKvWj0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754841594; c=relaxed/simple;
	bh=5WZXuPo+GnLgu17xwekCpSot93JMrFeCcbM4jujAy/A=;
	h=To:Subject:From:Message-Id:Date; b=g9Z4mvVLre2UyGqmeduAVPN/jIb9wbQ2iZ3ARNRc+UYDqqRrygHYn9alYhvQKyg6wX0UzpJI5VbT+nPmeDcwFgifKtlE40VkeqkzPpo9/hmUTTDaatDmh7Hh/65eFANgFeBIrawyvfpzpOnQwInqnT/lJaQKOEKtwzNKsZm5NuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsJe8qQf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsJe8qQf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3716C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754841593;
	bh=5WZXuPo+GnLgu17xwekCpSot93JMrFeCcbM4jujAy/A=;
	h=To:Subject:From:Date:From;
	b=OsJe8qQfsU/Nbwaowl+g5zHQvUHx5Y915+1FFszI6xJh5z41dXDostn7zCBmKk96+
	 IKa8G1gSJYIfhmCUUO1HSF2EDkE/lkrQiA75IaTgGxWIFO05ioW9l2NkWMBlvWMIDd
	 DFj4MMJzLWJ+1pGE78ixbSGw7AS87yIhsm9mmTrEkuyJ0W92xwVIyqvFD2QvnPjfGv
	 i0rJrHjMW/La0rBd++vIya8NnoA8iRcOvoCyxcU+bFEJuiO8xCMYmAj6PgESfBZTKu
	 8nUNsDZyN1vciMEGIM3QzAghWye9wXXNotiQxTUCfHpFH0UqKyiY3eKnb1yXd/DUNQ
	 pY7yrMJDZO/3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D6C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484159357.11769.15690555799730561721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d66c3d9360bda352bc85a94e346c1571703d6cebfc0b4d92142ad6a18653dc9
Date: Sun, 10 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754841593
