Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437D7413D66
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782824914; cv=none; b=CEEO+Ag/vJ/qg68lAh+prIjkjJaqohzdcxoON6NZtl5yXJWsNUxP6oNSeWUl1wAOPl6oYt8plwKCph4RyRBLlpSrvFUIPl8jzlwmOJw1/KlZ48mE2so+kMdvIhHXko5pECdPauw4MdRl5+KP1xGo6mEV8EnxXS5X1IWmCEXZsBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782824914; c=relaxed/simple;
	bh=nq3lfi28hUi7clzo8zIYL62eN6RW/ScNtj2EqpYQkaI=;
	h=To:Subject:From:Message-Id:Date; b=A7rolWgqx+9RRw57vIT2NMwyi7yD6/u3RA4Owes4yi78T9POtnpwfSHtWjsuCzphxbOww41BmjsDGncGtvQaeErII2CgJz4RIB5z0PUBLRyRRJJ9kzt638xVsNZrTJfyjhP78MU1+0J9z+g5IfnVoOli9Uk8PiYZ6Y8tT1Yh2gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWTlNVxV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWTlNVxV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3641C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782824913;
	bh=nq3lfi28hUi7clzo8zIYL62eN6RW/ScNtj2EqpYQkaI=;
	h=To:Subject:From:Date:From;
	b=PWTlNVxVHXtAGJZ7jJmLu2QPdR9NVmG8VE+hqCVIbTlWkIHKVzsXoZ14N/qdFb8Sl
	 aCrK5kmA5n4lAnxUt8suR79O1MKJ9lD6mXdTLB14BFNgtIDeCswEBeh0OWSOSVMmLu
	 bFYUFEcKyRwtiAnUyJ3JcvbPYhc//UxhnUgjBnFCfEMwVXQVp6pN+l5rJsJ1AFoQUD
	 er6+sKOBGRCVALznMctXD9TcXHUDDegM/y75nggsbyLuUHXVez4y0McjZSzWxQcHeJ
	 8hiHqrAPmGLEA0HxgSc4S6o4mID1zKBTNfxCoeYvnOirYcxQVyfPum102xZvnjNmkS
	 O6ys4RY6PK5AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA91CC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282491368.26860.4370692858144285621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2341d4ad172c324db032547bba4be4b682135d0c8957c3000715c6a0237d056c
Date: Tue, 30 Jun 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782824913
