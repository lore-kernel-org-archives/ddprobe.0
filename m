Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6642F1FF4
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791499834; cv=none; b=k8hgDOds7G9py/lQe2wy/f+Ha++IhKU1IfeP8BEzHC1BEzuHDNDbIC3ujugUYNoJmElPjvbGtaPRPXESF2PIjRdSi7TYElPkypGz7N171sI6ekP+qq2pZcJk1oKUx5d9WUoghcle7v/WJ43zgppWmFYCzimaL0YvC/2Plm4unLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791499834; c=relaxed/simple;
	bh=JG9IMge4wWnPOWobbooNH4bPiQ6HJUYe1q1sd8PXT2o=;
	h=To:Subject:From:Message-Id:Date; b=Y4IttNpHImnRzFEeEJeZ6mYeVvP5uuMnlZoVX2m49lu1TwVrrVEBpqg6kdqgv6m85P3D3xq0h/0liAwj0fKn5+mEcpYhD2I14r8a/qEB7cWZJXb7SyjlsERYFB2pN6c5Prjo/2udV/fAaOAeIzbbYMWLPcMxjGsbLp5o3mf6K7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7Lv6/gM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7Lv6/gM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4938C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791499833;
	bh=JG9IMge4wWnPOWobbooNH4bPiQ6HJUYe1q1sd8PXT2o=;
	h=To:Subject:From:Date:From;
	b=K7Lv6/gMhEgkSlF8cvD3Znc5kelhWfu3GGOJTQtr5mb5fpX4RcRAFLlafXVBoiLo6
	 Us16x0BqhxYhe9FeRrrAUl6gvgrC2Vvpx7GnBWxBbvn5xIcqMbcRR0wUmjFIz/qvtt
	 YpJiRxA5kUfM1F3j66PRuL8ocMln80zlFv3XhmOjXdlO0gNkFRxwl+sxk3NPrSt3A1
	 hUAXVZ4nxBvMa1wMa7eIfPqpCdDCt6h2ZbkogaEV/8JOjSfbalIrXNwtTRi7sW0zp6
	 04tHHFGlxo4ADuW2g2xGZ9FSuajecXovcAbg8kiexeNOgwWHRdhEeTMsFtAP4i2FLn
	 QUA9IdeFfRdGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7C4CA6013
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149983368.4707.7689970648489772741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 949dea78e70d773aecdbb7b3cbd566c49bb86905c6156a56035ed1f2f8e1b5de
Date: Thu, 08 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791499833
