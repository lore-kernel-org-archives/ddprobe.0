Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C365660
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719705263; cv=none; b=leIpwFkEehzB0QpsBlVkRk5YgbtY+59bbPimcs2jrJ3zcSlwBV2yj1RGEYy+GfHuLq9aXwoX/zFqIon1g2DtChrtjNm35QwtL3nbKvfnATsIg6pRJELg5VTKnh82WK0rpvwNb0RFc6mQkxiN9Vux98RxyVpdllvdcDvLwvBy4M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719705263; c=relaxed/simple;
	bh=jWgN8JYYwzbtdU3sZ2uMkEtgH3Z23Hmy+xbA+aIpTiw=;
	h=To:Subject:From:Message-Id:Date; b=o1g7SMF+wgwMIWI0rSEG6FVdQiX54ERhoZk3glfIFd7q16GG13+Wm1hbHyRZB7UwtsMFQOzxPPNGRqaSWY1KpA2AN8TbYzG+Qzhf4q+6rof/C1v5XLXl9itMG1A4XcdzcYbk8a9Vsm+uPFDefWn/norWyFySBTrrBcXDtC30Zh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQkPedab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQkPedab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE58BC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719705262;
	bh=jWgN8JYYwzbtdU3sZ2uMkEtgH3Z23Hmy+xbA+aIpTiw=;
	h=To:Subject:From:Date:From;
	b=dQkPedabuGwUxn1XQfXXhqmqF+Y5SA9SxqBEpI5vn0B2k+no4/HCYiIw5w18fPbqL
	 l+HiHbwLkbJOCHRGgJn0Yzh05Mdh/si8VUeXApIbtZyZsUDW2KNhNehDiUVKbd1PB2
	 DAvarDOQ9/ZOkFYckF99ZbXOZfXee+sJn15giBlRsIjfOlpjyFGvagppLDJ7OTMEoS
	 2nhc5+4W6Rax0JOuQK+YSVHZEK4A0USIDaA6l1XR6Iq87p4E4TZySlSC3FwTWc+xuP
	 2bm4CnZCgb8yJeLdhnpoKlGNBIWg+UTaSQ2L2SlTFy/rEyGYNZR4vAuE8POgHKkHmd
	 kfxtg2ggbtprA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9986C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171970526276.19575.4140089461580806284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c99f7884009cf27b984f5d761a26fc7861fd20354584e1eb7739e97a3e1b1d12
Date: Sat, 29 Jun 2024 23:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719705262
