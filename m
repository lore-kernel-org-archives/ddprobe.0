Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFCA3B1B3
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784940634; cv=none; b=JMuvjpzYVVKPIQvwum+ELpF/uo7VnmHQAXtAzlkunN7MkYoBDeHck+AE0zZKpqQtzAt+vAeuq+/CTzvzDmINOflZHxEA3COd9OyBY5HOB+x7g69AdHGxPA2JHd3EGm9l780sPiEVppiQfKGCCkuIq4dJhxCMzqpqzI1DTQuDGn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784940634; c=relaxed/simple;
	bh=IYPFkZWgf1u+LcqUoBVRsymA1AMb2SF0Wo3d8NVK+AQ=;
	h=To:Subject:From:Message-Id:Date; b=HN6hv6kA2l8dkmOKlfClXbyFAUjY02klBDZpXyLqrQ3hG4pifSp1pE5R4VIZ6yv58wvEUgRd4qBGi018ni0bdNfniuNK6P9SYiBB6v0w+9ZuBruGbgjRBOhfSxECIMeOAMOq2egWItmHkdR6LgoKIV/3UyTj8XnlpyOqnFg8ihM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AY0LYfpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AY0LYfpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3A6C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784940633;
	bh=IYPFkZWgf1u+LcqUoBVRsymA1AMb2SF0Wo3d8NVK+AQ=;
	h=To:Subject:From:Date:From;
	b=AY0LYfpxTIEKRMfEc0gI9ctxMhdjns44h0PxjlL+ABnIAdhGI3XKnwHXBXO0wlsS+
	 AzaZikPi4OlJZFByHecnclH7+iVcolSaOfNHuqpavKMwBTUhS/iMHDlZeJkHmbY89b
	 P/VE0hMnj7RAFqU5vfAFnLTiFC+q07NPcgwvdoEmE+ofPDfvrS4Ov1b8flYhxOAoer
	 0eu/5QKdM3/NbmMvNGiGl6Ls4SBOBTPEhzrma9YH83UbMPy6bGt9aIm+ilBJe53+K8
	 GmlLZLNU6u6qPflGKmmdMavMnKGAFT4VG6Wqkbi2gWogn5SNl4pie/zNyYeVTfl3+B
	 fqpSmVLpQLCdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD80AC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494063368.14674.10392798988323922122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bdef85776c15170edb011196ea7de3694a770be8385a4f41052be5ded71d3e4
Date: Sat, 25 Jul 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784940633
