Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E909129A68
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 21:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716672863; cv=none; b=HaQzUKkzujqTx5eBzSrvSqNbtPwU7B335WP7tT7nSW9ehZBSdlZQux8A2wGxrh4k6oyuEf7/Q0Jz2ENDXL9cliQ6x6tD8BaAhgnh0EDAGF5Ty/0ChUiumKdSg00bpXohWA85WdMe58Yo1dPtjGrVn9vsG4daLS8gHn3J4QEj8ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716672863; c=relaxed/simple;
	bh=uOaAvr9a2WiAfkOyWFBw7Lp6DNChrtFy2r6Y7QwFbXI=;
	h=To:Subject:From:Message-Id:Date; b=OoBBfbRgsq/z68d+S74wSpptL37hfuwbHW/ph+ZeymvCHjOXUWymQsLaDvjksdYOz+fFhqVxzeqRIT07A9SegByzssw3ymWyPUV1FCIwN1vWZK1Mkym0ohlmfpvbEfH60kEo2xYxdYQUOGJ7NeIn7jO3im/Ih6MajB+xGiXlLdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzPn6+L/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzPn6+L/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7199C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 21:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716672862;
	bh=uOaAvr9a2WiAfkOyWFBw7Lp6DNChrtFy2r6Y7QwFbXI=;
	h=To:Subject:From:Date:From;
	b=LzPn6+L/TddS0JCTtLzWo/7Hhs68y1ensGiPwZoSphAUWoBYLYi8cK0iKJ6pEqzJi
	 TMimIQOPEOx+B5uk+8K4Cp5GKuxEL7IrbJJuxrzYuKrgWPgtB3NGZgxdxp45Y8f0d0
	 ZPaHa6CJyL+EhHy/Y1bN3YGNfKOQ6+Por1XS0xHouS9uviniWTVYPwunkK4/9nvkZZ
	 0Emv5Pi2/cAes59/yPJGUcCL15I9/Skx/sDXE3YTf/R8konycBCwF0Lj2a8vwKLIIC
	 M84VfC6FXDy+bInIt/nu8eDkUeULcNpS2/FszkAPqt9ZKsZ38kuXDIU52rUtANeAXD
	 QoiUaqCcL69lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4567C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 21:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171667286279.423.6348484255745414647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21df0cc229820a86d2055c9f56b7c6e845d67419a031ec571e6ee61abc973a9d
Date: Sat, 25 May 2024 21:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716672862
