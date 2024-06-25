Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33882176FA4
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 17:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719335603; cv=none; b=kLOLNpQezrE3lwQ3+vUdf4JM7XEugxsH4FU8Yvsgh0iGSZVNzfIztpZwKXCDdd1AuaC/KxQjoRJw8DICMVrO564u2zdpVoyxoZFoiZuMUEk5tDkQRmQGzA6HSqUB3qwAjEkKfQynRyN3KbRUZKaF1j+4zRKZNM4zy8vwkx1TO7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719335603; c=relaxed/simple;
	bh=B4WXegkzwpqoXk31y64l005BsH+XewvavAq45uFJfkE=;
	h=To:Subject:From:Message-Id:Date; b=lECKyh55JV9+0R7sMH10AMknfg4ox8CPPaem6e0T4+ehBI0IUs/doCyRjasWb1nFRnBakqgZKegU7PvTMIOvmf5mFnG9R4YbE+VgOL40IseuogNUEV61tWV/Ln3SNHnPTLQ3RXAVmKj+zmdwWNhSbVd9pS2QO04M9Y/AbMZrXJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfAFeZXp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfAFeZXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC7BC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 17:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719335602;
	bh=B4WXegkzwpqoXk31y64l005BsH+XewvavAq45uFJfkE=;
	h=To:Subject:From:Date:From;
	b=ZfAFeZXpKaaMJRtKK7ND729CKt8JRlKUUb7MjfuDIkb4BgANHL6P6sVEhjMQN+wq+
	 UdQcF1JN3ywsto7GNrTZILCgNkfw/Z37u0rvxUw7YZlTddWLha92HE4FvgbS1nR4Ue
	 yLZ9E4t6DqyzDCLBnpYsXLKTNoyoRyMBQ71+k3sXTUza5bPja6/nz64DmnGuTnhToI
	 BGlCWfrm6oc6C+DDL+U3SJHlCFVYkJS35SLW/2OZxiHydAZf3Udh/VnNuaz1kzZKpJ
	 osRd2Co5IhdGov5yoLCFoXIhWb1x/htDblO6EU66QtqB4JZ13qXg9R4KRIilJ1O9fI
	 zJmS+Rq1TXugw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE58C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 17:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171933560276.10574.5213957839737324622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8128b7c4d24de5c55baf9bff356850381c238693c3478649dfb7f031774d2c0e
Date: Tue, 25 Jun 2024 17:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719335602
