Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3D914D433
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748624994; cv=none; b=qQwf+uj0iCx+E+bPrk8AjgmpXzBK1Ukmeu71nojpYJMr1TE5UnUproCMk7zySbN2TmwRtDQupduIYIveZbLjrvlXKC1COqUj/BJJCrFPsaRdIEYprMZebDiX7TRODfMaD8MCbNrLgfLIG+/VB0bW4ZropCQSihWyG9ChKx+GgRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748624994; c=relaxed/simple;
	bh=euI32M+wEXJbEno+41qMwfKfDoFrUK7hcrvXDwE0ZU8=;
	h=To:Subject:From:Message-Id:Date; b=YsdOYipw94q1k2Bt21wRRalOptdYFpuT7ikh3uj39HPczQ0j1P7Fkut0yam6IzNAQ5bfVdO+K8mqGJCges3O0dDhxV6LIT6BMsGWwRT/UZE9xBr7FYkasBbUpnqReFo/d+hqvSXx2yh5jQt4eAj8Ez0K53KQew62FhwF2Mx27BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzCk3eet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzCk3eet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EEFC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748624993;
	bh=euI32M+wEXJbEno+41qMwfKfDoFrUK7hcrvXDwE0ZU8=;
	h=To:Subject:From:Date:From;
	b=rzCk3eetCZiH02QgT+Xx8lv2myy5IyzW0s8jOhODAesjiraTTZR7hYQBYJS360aEX
	 tdb7amp0x8gZSJx/IY8OdKmM2sHNWNyruZkKHO3DFZ0L+keMVKs6NvaPgWbI+/mN4G
	 8/K0kejzx6z28IA4vMjxoUcyJ0QvZOiPv68sAGsrfyEeHyKyE3mOrI/dclLGB0aSlP
	 zG7iwWNke3VuUdGEosJDx1Z0ZjsVgLszVmY6T/Kz6te1JXBKNi9LZh+hmrQ4Scec8N
	 7hYqzOZmYHi0LiEpNl+/9AuaDUeSFs/MnbHTfKLPWfUTm4OqlfmtznyvhF2V7ZMQ9E
	 X22VSXTus4F3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E050C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862499357.19571.15424680173429530741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8fc73e9f36631be0b16084f1c80a5a54d940699a2a314a88c8c764a32790cb9
Date: Fri, 30 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748624993
