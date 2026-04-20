Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D604515746F
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776667053; cv=none; b=rK/JTtNHVCBZ44DsKTCF+mxV8RYTHZxzzsHg4uh+CDdxeRCtTHWqSqHis4Ddw715aB5WQOuf72Mue8w8ZrJwP8bHxUpqttavJguEXtAS4J1kWLiWssVUfnxj0b2KX+Qoc95s68Us0alR4iTqX2j+eT8SsTNya7tKBEEHJ5qfaBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776667053; c=relaxed/simple;
	bh=sjdXa66QUXfh6mIjgBXp5PSWVyB+7WVMuPje6YB8O7s=;
	h=To:Subject:From:Message-Id:Date; b=Nn1U69+et1m0bmgegbjVlTTGpjjRg/NXXnQ8DtJwMAuumR1eMgN80lbS416LRE8zps9GIA73Vy+Apbt3ro8Er8l5WKHDhGxfDfPCFoUHb6YspatPyBPcWoNd5LfgBkVSvPyEUjgemw0IX2bPVk8Kb4YYWSo/QLCPdj3UBLAx4Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+wvAGxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+wvAGxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B988AC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776667053;
	bh=sjdXa66QUXfh6mIjgBXp5PSWVyB+7WVMuPje6YB8O7s=;
	h=To:Subject:From:Date:From;
	b=I+wvAGxzqY79YXvHRNJxGAwsPbG1jqYlYOeDIm2IX2XRA5G5781IM41ihhgy7T2MM
	 6QLEFXxywj8AADrQUB0NHoxlxMiNnyJYNS1iL9VEXXXN3slsN2JBraG9RW9B765523
	 0noofIneSeMGz9ASeKrok2PJqBI3iUjSaP0FOEPo4Eojc7+gS+b9PVneFOKBa2FWhH
	 LIGFRjDR5sa2PQKyaY5kXKRoB2IETgZiNZcvzsPrwORZlNkVIgcr7++Sw4S/dnLpeJ
	 Kj/0221zf8rNQgLlplU3K//tM6JhHTyWOl6P2ZJh6Oi5gwAt7Ba3rHg041NwP1xoB9
	 era3ewDaxqvEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA82BF36C2A
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177666705368.31019.10760723943279475243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 600b8aa979b7edad7026af2ab850de97f4d19f6eb6f21dacdfd0e60768e4e00f
Date: Mon, 20 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776667053
