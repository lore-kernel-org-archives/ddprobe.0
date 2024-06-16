Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666EE1581E0
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 02:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718504903; cv=none; b=AcPp6xx5+sLvYIhO49CUbh9qVALn0nTlPxLBdJjMGv4hKpaIcIq0IKEc/u2PSgVlHJiCE9hg6woRyNR/tqZkTCBOOgT2Iqb8oc5oAlIeJQLZ4y3wFFY3fFI/7NL8rXp+kvpvQTK1p2DVBD/XfdZ5UWOScbQLCnU+qgcBe9//qEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718504903; c=relaxed/simple;
	bh=QODGUpVOB22RK9BFFU1a/Nqz1su2HuLYLb9tfO6UCxs=;
	h=To:Subject:From:Message-Id:Date; b=oBQfhnUt4yJaIsCwJeO4pXAYB03uiMgK9Mhz2hmSokQRTrB2skkzer9+Vt2D6+ZUZrah/O/CfcjFRo4AufIoUxUOyKUdarTz2TnRhKST5eLkXPYFPFmoh3kz95fCpuRhYk6EXP924qWBLe+tnQ6a/xFwEgKtzN8NYZjD863OPgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpFGXxsJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpFGXxsJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECD91C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 02:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718504903;
	bh=QODGUpVOB22RK9BFFU1a/Nqz1su2HuLYLb9tfO6UCxs=;
	h=To:Subject:From:Date:From;
	b=JpFGXxsJjH/5yiKwqbzDuaF06zw1j5yztChXKPHRoYgrYv4nI+kdDw3w1xZO3fkbt
	 3vgJ7IGraRcX6uYfX0cPURAOJhISY0/zjBDk/NVEd8PlrZa95ESDTe41dvRrLB4GP1
	 8AhbibVnf18e+K3yTEFAJKC86v2Odx8Dz5YwQUn3yYY7N1fp9Nwlek0EEfgE0SRPTz
	 idSlZGOniukEK6xRbnIkUXL2QXy3gBha0wNxfUSOz84CfRjmq3RAXzHXjBvd1y6PyR
	 W+tkdjlaEXvc22fVyAZmjAR5DLb+Q7D1amSGnZV9z186V0/3dNdK0VlyC55UvExFHh
	 eMJ2RiakZC07A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECFEC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 02:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171850490280.3224.10783664210984375797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e5c9bdd7e0fde42c63b9567130bab614d6cd244d495023814692d60af97e84
Date: Sun, 16 Jun 2024 02:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718504902
