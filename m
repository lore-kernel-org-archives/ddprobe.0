Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A91821E091
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781478394; cv=none; b=PIE2bqApPgKvYspwxo7lkBInKzuoejH59W7HvwzjsEw4GdmbV5oaN7wdsTl4OCTGqDnfci4Ltc+PIivDSLwov9PAX5o6wFx+y0xEmfLTTri2cZsbuikK7U50q08HXv0tigotGcHYv+nVb9EwUKNR+MOlROZrWZkzlptO4x5uvW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781478394; c=relaxed/simple;
	bh=0rMq0B++tXeia1qLoiiLXCibf+MOVsAyQGnApTawStY=;
	h=To:Subject:From:Message-Id:Date; b=JMXuHozrnOQYe79LfpnjYXSnJFi4fQGHJw1PGA3e7tJmADlxXiTlSgHStongmiJC5xDTLPxv7eZ/8DC44aJQ/eXUCzb3Ilz6qntxgcp5gEcT0I7HGgVb2dPhyD/S5k9BS1sEoftISsC1TOecR3U5z+o7AETzf/vv0BDrgizGcrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqcjak3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqcjak3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D417DC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781478393;
	bh=0rMq0B++tXeia1qLoiiLXCibf+MOVsAyQGnApTawStY=;
	h=To:Subject:From:Date:From;
	b=kqcjak3pjhuk9dR2wqEIbZPRZTB3asy/FQz4nVcLC4zb71f3YwuXwkuhBmzLH0v2j
	 zb1kaTvISRipCaGUy5kLpmDIdsqITYx3aSBnV/rUIU68hCKTTKFRxKf6QgVOjrlRBt
	 xo34XYqCLjbSTRslmB6uTsY29ssVFj4Sw+TmilBN5JfS9H9zI6eyiLhhaX7lm37k+Y
	 cYvUJ7qzBPvLwbNtb0LRncTtBQVQKbeDp9O8tTnS//PHjtYCPeZwxntoaOjjKwM5RV
	 yjYbYC/Fbxl5caAhyWfyNrdFIZewOi1Y1R+YX1QwgubksN7xIp+VEnOKdk90e9VBpt
	 XJ7WsqSuJEzCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CE2CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178147839371.8109.3601869910572204252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24cd9e1e534d41d2560bdd512c8cc20b7e614766fa24967c0f43d75099554c1
Date: Sun, 14 Jun 2026 23:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781478393
