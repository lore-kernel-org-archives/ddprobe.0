Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D489322A1C
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786583434; cv=none; b=E12OVNhD2X7biIdOThZWMgNf43Xk2YppkLAIPYFIG5AADY/AdZ0YU9BUHUYbtTBBcvWRfsQTLFoKS6YdL08afMtm0fHHj/t33iG/m5FajkIHq/SuQgupDBMw196Z5NKPsB5/coR61wdsLsYU4zQFGjaZJtEp6sRBLeNteBDcqxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786583434; c=relaxed/simple;
	bh=WDGcaQ+LpO0473oupCkgGC6QVK9ORAr1q/ylWeWGhSA=;
	h=To:Subject:From:Message-Id:Date; b=M1Uh2wPdM3o1LurZuaentAEAxB9KhLoYOCsrIqdNrp7hCa+sSsuQTH0vZe1+ESM//bz45ltsTjyAj3+RaCXbJgNi2U/T7YAVGZ/4JnrTWcSltw8geAHoTJAkZTJtamQlW7tLto9s58q6UFsyaALu8HT35OabIjtKKS8w1BTdoCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oca6pi+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oca6pi+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25C9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786583433;
	bh=WDGcaQ+LpO0473oupCkgGC6QVK9ORAr1q/ylWeWGhSA=;
	h=To:Subject:From:Date:From;
	b=Oca6pi+EyM1oDsuBbowus7lFZTEGNLvQJ1ngs3pJMGST0fzAr7D5lr0n/Y/VtpuOp
	 qWd3VlqdDXVukEzL5ZJuttNy55r7iTWSDU0K51BMxDDBx0m2TMFE75c3A4VC7k/ZE+
	 9xBxP8ERCpTr9hh+jE2rFO98ZJBWR4pIb6pU1wmZzs+38x3LpWwQCadeiJqjp7pei6
	 T14TXBq58XZm44ddUM68IBZaQQFhGrW0fko9sM0WYcykou1wDYqN1acA+HhyDp23MU
	 bw3+FteIvkToKflIIVjrOIzofX6ir1qTgxiLr97sgL5fn/eOB5Wu56dki7J6OimbMW
	 peSiReHnij69w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5E9C5AD5A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178658343370.13690.15536212151727678166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dedd66699fd4934cc334be78b1ccaa143004ebf16d1d6d9cc683f48ed0ae26f
Date: Thu, 13 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786583433
