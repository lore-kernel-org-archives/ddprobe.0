Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256962BE053
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753097994; cv=none; b=O7s6XSrUy6lJMJg41YTafihBBaJi/MZVkJ+qplFoCnFzCjPzDn3VfBIP4AlgTsKpciX6C0RNmvpxdNQ4ObRgPsqa2rdiKeU8greVtmTEdTrSGY5uz0HR/YPrmw8jZ39CmE85+5DXj4UZFcoMPdDpSnYhOAC1MgNAg+XMEV7ASow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753097994; c=relaxed/simple;
	bh=NQmjBD4wdUni8TP8GKv1v12R2wvZ7MyJ+ImlDaa1y9Y=;
	h=To:Subject:From:Message-Id:Date; b=rFBTHUPKHMBOR7jfMdWVn/Aap14xC545TL788aNKiItvrkR3VtaYZavSsjTR5OGWEMRrt7iOZvMO1zb3Xhj60pZERG1QOjhug1Dan2RVpNkcYJinh1+3Cfrx2dqns6anmwjiQh5OApLNyzoI+hsx6nNJgYGHxNnCSpyoHBAizyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2rS6wNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2rS6wNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C51C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753097993;
	bh=NQmjBD4wdUni8TP8GKv1v12R2wvZ7MyJ+ImlDaa1y9Y=;
	h=To:Subject:From:Date:From;
	b=k2rS6wNpKUxa5OzJTBHNwUpGa/iq8gB19SEWQsnwvg8CKUyKHDdyxx4ZTWmy2tYUx
	 onrejUQzPEiOb5vcco/U/FXpa0zzQhwKRguT9hSC7aCJmxl9oI8+pXDbyaElMQ0ZAM
	 qN4oglu+bEAUf91PL7GtlPke4JI0ado9Z+VqtFwp8vMud2O/EIkym0T+ZO1h20/frm
	 KtOZ3Q1yXE4oe11KiwZtKsovJSqdFVGBrMYNYLOR05USQEzjzNw/OIttw+hjZi1tZ0
	 cTE6Dnoo0kcrpmBS3b/cwVvE4DIEejw5cGxi/ERR22/9/GO9nMQSzShHf0qd/8RFHr
	 Mgbj7QDnvwMRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C1C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309799358.7230.5007914529762802192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc472839cd2460985d5fdf665d4bcf270649dd810adb0528a13658b354a1e74
Date: Mon, 21 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753097993
