Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6DA1BF58
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751681394; cv=none; b=cKQj0kOeGPPCOskzIDnlmNlBrgn8x0kmtkzSDLoEtK+cqasdI+bGedMRgMFmJPBiUgm8pzkMgoH1iVVVk4ZUboGMGwJn7ggkNJ2k8CaAyzm95N7XxA46fVx4bzmrikQzCwnbPU7ScveDy9uEfIoDqSudwEWt5Pf3s79TbRc2+yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751681394; c=relaxed/simple;
	bh=auC5QBxxzczCiN0tINHw0BOgg+En9gaPKCt/F8rqjyo=;
	h=To:Subject:From:Message-Id:Date; b=XOYE5SmXxLsJVcwUgrvc22XJlxRnyeqV6L6JeFI2y6247SSkxOrhiQtc+TL6QOVZQJUbgGytMpP85HSZt1b0OepFCdtz+TiMyNE01RdbEUmjxuF3S/Pv1POwud6pI47CJVb1HKkMqxDrLxyfKFQj50ROgxWTqovJcdyylPcz1q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpsCZkW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpsCZkW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A067DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751681393;
	bh=auC5QBxxzczCiN0tINHw0BOgg+En9gaPKCt/F8rqjyo=;
	h=To:Subject:From:Date:From;
	b=PpsCZkW1NXy+0dWsqTsArWc6ZJ2jHEuYZSnAwDc+A8l0ShiDgOjSixiNEifyLZ3YI
	 moU2CPahXmZ0qBcFp/XxUwOQ0P6yashiIV5A0yZxFs7kH3W6y3AiHarnmfVK72SFOT
	 kvNnqqJ6Kt3vAZYGXjxqhNnb1shqn/kDbsQGAdnKNZrmQ+W+A0qN+xDr/WQ7E1+/jq
	 7Z2EihMVAP/TSzvOE0iWWNxDgUWbr6IXPcK//Y6z/vwHUgyRIueRmVsa79H/N/5ybl
	 GXde+um3STIvETr/mnMg6DdR2TxEkWK75DCSbV1HR/8XpgiLxOFWd/a3UAJjm1bvCw
	 52goihqbi1/sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E145C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168139357.13390.706986004684721821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c3369b3ebf693b334f7461c64075714a57a5ec120009ba7fb8f0303140a4e0
Date: Sat, 05 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751681393
