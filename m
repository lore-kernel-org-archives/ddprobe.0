Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7F61E0B9C
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782598114; cv=none; b=K3mxoUop/NADIq8bzrYkGU8Jl6jLawjHi1Tt7WBbnHJ4tjxRe3RrWOsNc2bi8IL6zZR/Wbu/62vl+K1cLw98v5cktkclbGk95WdHcmd+NyMM2GKRpk6xc8N6M6hP7mfTLx6Pms2nBzzkFSMQ/eGwnOCXetgDjo6Z6k2hmt7eppo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782598114; c=relaxed/simple;
	bh=c5SJVJp49w4JJrXRdj4eEuIUxd+RV8OBFOyLym34+Bg=;
	h=To:Subject:From:Message-Id:Date; b=DDruLpXG4dZwWpF/CTxco0bQprjKZhy/f37pVuwctIdtwqwGzfUysx+ins3Dhbkt6Y39SuywYc6FvRw+7Qnl02PxZjZol5baTnd0onriM98AvqZJRuS0ZFWXSb7+gLheLk3QTS6IkxJpCrfGJX2I+vP4JnSfPR6/WlB41eugRpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaHZszuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaHZszuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9044C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782598113;
	bh=c5SJVJp49w4JJrXRdj4eEuIUxd+RV8OBFOyLym34+Bg=;
	h=To:Subject:From:Date:From;
	b=XaHZszuOsAqLEi1SyZ1of/34Q0hWtEgHLPEPlCN5A3hguQ/JZOJBZqUQjl3DfFtvY
	 mqA6gY9u0O4PhkqaoQW/ijyxYNcPs4dpQrW3yPkina1YbadSitlBslpPGYsx6WA/6F
	 /0dZf75bIbAB+Ep/FY6J8CiYWo9G6A39eT735+2DFfLZESTkbO805lyMIRX0ZZ//qT
	 DT5LSFk4TkBTWHTfOxPyiF7J6JHxA/Anxeqb3n5mmpi8AruVL3Fz44TRpMjGkwDPOC
	 I3TbFQjV9R3Ox3XpaJzOA3u5hxh8YuCZCFws95kCZWwRvgmjMAXwTHZfqAUF4AEnQ5
	 jYWOrK/PTWd3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20C1C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259811374.12092.14489016744182072481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb171a2f7abe5c383c7db979b165b625a49486aa87f89228f9c446d5a55fc11
Date: Sat, 27 Jun 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782598113
