Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED7B17991
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 04:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715402543; cv=none; b=e1y+i2tVkm4z9kGsKjgFpyiScZcKwv7mTtiuAzFWA8HkbT6Eak0nSywQDnx2xR1jfR1CnJzl0AfAUE5ZOZ1eyAeWL9j533BLz9UgeRWy3L2eIHD5uRbrZZYrFOkvj0DZypRCJKmpfkN4y6BCsDOTtnUdaD6kKePX2UhSl2fXIOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715402543; c=relaxed/simple;
	bh=DkyurwqCFCVqXhOd9s0JpHgcoPWXVtSkSFW1nlTyBKw=;
	h=To:Subject:From:Message-Id:Date; b=jhMQ0E4aF3FB9UEbWvi203g+BkgjpaYtx/r03hu976l+FAKeq96SKHVZdDvDuck9gbg0ZsVMggxsuYAz6V82sgAOPnRC0IR4AlZg4Lww+UsMRgpB7h1D/kbM7AlhNXvH2xg7r9p2R3P8/4Ysnv9om00Sb9Esje2jgGkuKZkNTbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AX8j/3lu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AX8j/3lu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93C2C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715402542;
	bh=DkyurwqCFCVqXhOd9s0JpHgcoPWXVtSkSFW1nlTyBKw=;
	h=To:Subject:From:Date:From;
	b=AX8j/3lu6EaGPI4i4YQxpUsJQTAuwxfnDP05+EJ5EjVt1KfdU5RjmKtcuajKaDSy6
	 uYdlljpStU38n0ehwOUWUPQY0HDd1iZDNVkMjfj+VbEIXYoH4H2clUU/ymZnSm2Oh7
	 B51EGD9sCsZCdOEM1ZF37TmoTRWfiXefBeF+2Pc/6AOWi0Zax5aAROOx3DQFgNAb+h
	 1UDdGkD0k4fKYb7atUN72Z4AGvMs/vzHj2whR2pm3YEM5Cccd0ppGr+1guOvFnDBgH
	 +MpxYXSsTiFSt+C4rrAfVzbY6WZbKLliPNdVyxSNEhod7binRQgyjLO3reMW3FlAYn
	 fpIUmjFCjTgZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E2EC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 04:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171540254276.32011.11935780238756801330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0a397e1e5ac095e05e19f60be27f4e6119a4c896b668354903d05430db13d2
Date: Sat, 11 May 2024 04:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715402542
