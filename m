Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC263F413A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790518234; cv=none; b=FA5gke/ucGXpOGYgKud0xN3g1cNKcyqjrof9ADDhYRI9O+p4kcK99CFHf5n3Ywg1OAMO7AfbJI2L9NvzatJyQV9DHdvDcK6n9v/BtMeONHego7lPIB7BuY1GU3rWoZYr/b2/Xaw8/yh2t3jE7unjkl9q2ZW0EwrwQrKwvYr6m+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790518234; c=relaxed/simple;
	bh=Ms4nmAJrheAzXmiSNorBIpRj9vTrFYaJo3WlRh49GTU=;
	h=To:Subject:From:Message-Id:Date; b=IJ5nzTjGmOioc8cYJ8WtzFherHaMVMuuIs79eE+HVCyYLBW/8gFQGuR2wNVaID8qzoXjr98f3oNYyPXE9jRxmnigQ99VgpTNQPMq2wOluPDs+Mn8cgiuI9vz45zRDkNqdbqqV0w/vtX0tCaJyLXRc5i3l0X7mvPkwmcKIza/30Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lpv5zN/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lpv5zN/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB35C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790518233;
	bh=Ms4nmAJrheAzXmiSNorBIpRj9vTrFYaJo3WlRh49GTU=;
	h=To:Subject:From:Date:From;
	b=Lpv5zN/0DnMWewm47UFBZ/zWMr/As2zJ2dmrey4/DAmE91JbjHOCIUiA/Gvya2I3x
	 IhR9ZIqN5qKs+P/02LjDftPFt6Tkxm3anyapyUGU8xhSFedbiBWlAZhsmahZ67mNUj
	 yaYSri7hbZMIG5v/+ZOrNrZefbyzBa6HuFj96cfKPIF1w6Szw7Y1c39ICXxrXWUnbw
	 4CyC4bqjeptMCWP9De+06u9ublAbznSx6APz3u8bD3nEx14CmaU270tmDlH7neF3I9
	 7MWxYgAE8PCo9RgmV9uiNvAJBrSuyJME6L6FPLhAQW//PEKbdUN8b72cYdBbEmztKN
	 6sXwseoY1qW+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD25EC9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179051823368.4882.2963885408612131920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c69437937d7bc7ebc623dc807094059c714548e4833140a177db30f4e034e4
Date: Sun, 27 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790518233
