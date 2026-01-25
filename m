Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161A71F3FED
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769355834; cv=none; b=GYFMYHBBwJzcys2rgoJROVL0JPZDBxV3rH/+qbtevEzk8ikthitIEzXKExd0pclANAtX8xxKWzo8rroZH6iVy7jtfOYOc9N61rYBlVRW7WbBrldbQTheTUr/GELzDPgcdYvfIPDBI/MjHPMJjD0VfY8idoYTSsuVPZ+YY6K3dsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769355834; c=relaxed/simple;
	bh=cCKWCLOma2EWeBRd5PGgR7d1GD2hPNMQrjocV0V7tSA=;
	h=To:Subject:From:Message-Id:Date; b=LOGnK+OUq5OtUBXRf5MUHm7Yg5M/0aooFmtpsvfiH+IA/ic9fg89QFB+TFD21KEUIbFuHXR0w/f0H3keWvpGineTgHuDTgDKTwpNzuzFqPH2/vhF9ZJ9F26L1hfbjP4qKE2luTD1jUwlSKjeUyLIiaJLZ2ZoQPV7zxGDs5W43gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrPoR9fQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrPoR9fQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4820C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769355833;
	bh=cCKWCLOma2EWeBRd5PGgR7d1GD2hPNMQrjocV0V7tSA=;
	h=To:Subject:From:Date:From;
	b=NrPoR9fQTkbtnm7hmXmWhpM/qKJRZUBCATwpUwGwOioXxYN7auqY4JFtUkXCHV6eh
	 AlYzG6qxOJV9/RPWhXhSA1cT7u8zOIzL/q2pYXcECazlfQ/gcrcTv9yq11HVw97c/C
	 knaewY6hqAwCDatIHnZsavN8t6rLpclMnz0esF/AI9RFWi21yYlHzHn3Zd0EaAjgc9
	 9qPI2G8wUF9nGdlQPqV7sVWetbWljo2emiOGbUBfp0VmPUIUfAIQHX8mOuUIgWR0m4
	 VotsYp3aN+uFVBsSeB3Ry97NFp9XJZOhCilrkdQAYj4jSlSdS8wOorsGRyoHMK9Sno
	 6DhcWxpLiyLgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94957E63CA6
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176935583357.5879.6704037161514698873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566ed880e65eb13b96205a1c69241c8175320c63702c2a348a1c275b012ffa3c
Date: Sun, 25 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769355833
