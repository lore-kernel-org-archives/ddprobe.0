Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A66381AF
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791682234; cv=none; b=uW9q2aeNDtZdss8+Dpi3EZsUfdRz0osHCjmS+TpKGiXpWE+r8V/FLy6up0P/n5vZEfAj7nIaZwZR7lPJgRjD6yzI3IdNw+H2+66IBCoiEkkFQm0Ox+FuOp8+kO8+zNSTLh0rY+etSAvJFF5cX91kslDC2VU6tBYS3MBuoQNtC7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791682234; c=relaxed/simple;
	bh=baXZgAzV1hAnaxTK25oj91SoEb3hxXS6BszN0H9b7cE=;
	h=To:Subject:From:Message-Id:Date; b=NMULJmgkNyui1mfEyU4I7GDAwULGpHbiIvrZNQyKUskIb9vDtmtmO5IZROKK+rhf75/MTn7b8tt2mz6N736HHwhk/T84GrClI+wr0ubDCDBw4fR3log/+GViafebtJWKzfyMeX969SrMoMMtw8iFxcIJikveJSpBVxDqsGmf/1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PF2loNwZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PF2loNwZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1883C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791682233;
	bh=baXZgAzV1hAnaxTK25oj91SoEb3hxXS6BszN0H9b7cE=;
	h=To:Subject:From:Date:From;
	b=PF2loNwZzSbNhizYZqxvoB8GxAAznGQ69riefBYqW6RQ82RvkSDNb/Qj0Led8J56z
	 eX3Fnlbu09xhNtzcHJ2UK8fn3Im5YhnnBOifOf407knCXbi7aUn+mph1JKwrR9pX2j
	 JpUIlog4FZv6bDDjLLcRD++VnSLaO8SeQaCixZAaQ4l9MeZFZDWIZyiq58F1bso4B1
	 VhMHgsynted1WbIB8VeHI/2yQ2zq+KEUb3yAotwmm4ErKWWrbl9C2I/qTnhRwW3fNQ
	 V1PiviZZNPAK3wRKLt4Cz+wKV5Pb1xlkVo0PhsxP3KaqIpXux/4daiDphN0D7gv87x
	 1Ra7LEBlD3qWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF665CA9EC5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179168223368.17699.6707739956916493817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d199fc7b4b28d75b4ab12cb10dd2ff4ae79ead0b8c08b2895cb8013d4003b4
Date: Sun, 11 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791682233
