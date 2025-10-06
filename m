Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E52218EB0
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759729194; cv=none; b=Ns8EmFVODA9b5HRS8rPiXC5gKXY3CUG+t2ZE+skhafbABs8M+faxwuLBELrmjkOtP1q9BrbTPDmzimH67b8zCMDPZSLb1/XCudCrBbUFyhiqV3Dvi5efRJwgTdCanyu8JwsQDEjHhLWaqNq7wBwIC90BPKNuQG+RFGIl7eCHJbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759729194; c=relaxed/simple;
	bh=doHxt+ZnM6OqCgGP+c4ex4LmPpIwqz+QbkLrhR2X7co=;
	h=To:Subject:From:Message-Id:Date; b=dpDn9opuCDIficbTbAAOmjdzQfnpWgLcbMuzehYgapCuTdxDfRhIi67DDVlf6FJO+TNmkH1YVKDTD6Pa6CIk9ABgjpLdEwGCmok6qlwvYCmPi76z1oKek+N/Gp+CQqX2gxCAryJzD5p+MrIdbfkR8Sg6NX5e8gpS0C/dd6B/zKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvObeZsI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvObeZsI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4425C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759729193;
	bh=doHxt+ZnM6OqCgGP+c4ex4LmPpIwqz+QbkLrhR2X7co=;
	h=To:Subject:From:Date:From;
	b=gvObeZsIjj8Rsv4ql3E9TGQ4BcpBxaqNXmRL25YOBUxW06Hd9fUVXMi+JJY5Usbs9
	 245luJuy39MLv+aZBUUjM0PGiZA3NrS+0RJuGtb9RHd0CJxhP6Ny/pUP7Yzx2MzQAF
	 YMOgsmvfu0+rl0cfSSbwyBZTRFl6nuNOxGZICTKsdnHLw4TaKTyFCoI9NzJDITH1s9
	 dlkD/jCb4yxkMom0NCuQ5JHwZ26WxK/TnoWaWWeA1JOo/BpAaZpjH/+bI00f06xbA+
	 yQMYLPhXJ8LPaY4t56wt1jEkCNGlG1np11DgjSeywm0jZAIGRbY7YXsUsSZCpiM/jP
	 oZ0iP91/NI4ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E87ACCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972919357.8405.8153577222305291389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea6fc37c07fcae6b9542b4f9f9529a56e12c3d7bb4548112a9c5a8a3606734d
Date: Mon, 06 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759729193
