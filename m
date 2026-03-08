Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BF9286405
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772946894; cv=none; b=pQwYZbK71wupAnkktmiGV3QQzsZZW7GVAXMXRClc68gcJExVvtuvxAKn4nkg1t0FWPY7nDkIWToyjiC5cLflhR+yv8IhCowQcgxOcUm2W+5EgDNlXDA+D0ONlsbKcE8YGQ7u1irPpqxkMn9czd0A6K8AR2Uv9AiVqfCbmxXf320=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772946894; c=relaxed/simple;
	bh=6OiB6zwcFlAZGtPNB8iEWzLyP+2Cger2XtD5OYp6msI=;
	h=To:Subject:From:Message-Id:Date; b=cSx34bSj9bQ8d0imkRftkK3VSdfSXNloNbry+JOVP0/utLaIeFzkPQqnGqx49y3/YwJnjVG3eKeimFKrRiZNBOBD6R39yLSlGgBmmrksrcF8EkAlmiRqGMW+3XKV0rcMu+9aTgP3Bwi+zv6AEx3tfc4KqtagQEhx0OLC1nX6ehc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzhKATTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzhKATTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A177BC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772946893;
	bh=6OiB6zwcFlAZGtPNB8iEWzLyP+2Cger2XtD5OYp6msI=;
	h=To:Subject:From:Date:From;
	b=TzhKATTz175ghMIM23Ems4KS1kLGl/9EejDRcLZWEt7G0Bv2uUEav6EDKbMe66jYu
	 b/z/rfPUOvRSGWMgWAhMdIYmn+OPMHiYsOa4Mil79HXy7fXRfQehxhEiTiLG2kezbI
	 vJiYWMW9QRsmDArdY79txEfjVEzunbYPwhU9+uJMI9YTZqngCLADTve8QcB2O9mGQM
	 N4d4mcAtO2ocLoKdi4Uycc/MQBf171CJbwwN6H7gDSOMLQaM5HSz15gbjD+X13Vixv
	 N3eahw6yswHfbX1z8i7w/WH3OnOgsyhUJU+/R8iINntuM5qqwxNdwr+A3e80glWUgl
	 anJLgoOOgPFkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F532F5512F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294689357.13953.13906820114038008896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210cecfcd5e22c2f8447b4e0b2317d159b840ece7e643b96bd31883861b53785
Date: Sun, 08 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772946893
