Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363641494A3
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728776154; cv=none; b=s1+esPIz4ekE8NDAHoU4G8JNxypPdW/Xs2lIt10L/iB537t7Nalvr9VnODOdMaC+HC7IFN0uOEOnXCMGbAjwtWtjvlMLmzWFbzxlN2k0RtS4lfB/s0RZ/4f4lfElFei+Jq/BvbQzbG6uMYzNKp46/XwKfWJcgc6xx8BpO/RvzHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728776154; c=relaxed/simple;
	bh=1kKtetAE96ydgORq3PZQRmQM0gC2qAxN8o/dNIhiWkM=;
	h=To:Subject:From:Message-Id:Date; b=YOm4R4GNwebsUGTbkOv3GK8gEziTAlVJ0P9yWNf1Rrxqm3/thAy01AVLcK850YwG5wvNeb7yS+6PUJ3CGQL3TQt298kD9HH2QAbkNt1rCYtzC2dAK1wfx9MXwwdZnJwrq3ZTEqTXxJ9u1mWvPn9KLkPxcliNEfvrnwEENVEXWZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6PbTliw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6PbTliw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5795C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728776153;
	bh=1kKtetAE96ydgORq3PZQRmQM0gC2qAxN8o/dNIhiWkM=;
	h=To:Subject:From:Date:From;
	b=R6PbTliwfNsRm+Ac3TFbgyOiTt1dCvU4RwceX593pWY/tCQXoDdnaTvN+7YacRqy2
	 ZZ8tmLk70+M13Eojh3+vVxhn9T9t2QzLITqzw+OcreaVPz4MhkeFXeoGK87MDi+lSa
	 S7Slli4JQWkHW9Zb6QKhyrgTmd5oMDLEEJ3hVmXlWYQHhO9gm4PgPDOH88tXP4SoVP
	 NUSWoMsmMFyfBmnC0/EOCCxYv1io7xNF5JWJHizbo39/mL57nUEtnUevTDh0UAHXwS
	 YxZOfFl6pDQFS7xmNgfskQsfbzSHOZh1NyrkZEJx5znrwzHinGzS46YTV2Y9aUL12z
	 V2yNGg/IcqFTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CDACF2586
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172877615357.11477.2721493429547806290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ad0982946f4169a8fccb3dda5f03694f5fa2adf6581215b44732a61afa7460
Date: Sat, 12 Oct 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728776153
