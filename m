Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2130E231CB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728812754; cv=none; b=SLuDKBsV3lwFcdujSvOSWvi/aIvxvNRYYTEstc3v1Uv0+ATYtk+dwc7KhugPMRuG/Jkr3i9KnEVPorcqbw4Hg/pm72RnxesWLR/MH2z+oJUl/x3GwFhKUjDoi5bsZYC+KNLZpT3wfvMS/ATXkEv8j65PAN5EtTPj+mLlhfjsdSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728812754; c=relaxed/simple;
	bh=KXEDtJx1p0CZDiBFeOZaTKpINHHgqhrutshnm9WiTNk=;
	h=To:Subject:From:Message-Id:Date; b=nIjdjBpbQWKAu62b96OxMhNdMG7nueBlXX5x4GmLLCe3utU7bnnj8bFItkg4MQc1UfEfN4MzQDiQlZzEJvDglKtV7J6KGoj5kOahMHyIn6yqL63gJ5RJMz18jobBUu6ROXiQUAhEIpvgw84hExOittT+EmlQud9iMzTuOcBsxQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQOWSkg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQOWSkg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B090AC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728812753;
	bh=KXEDtJx1p0CZDiBFeOZaTKpINHHgqhrutshnm9WiTNk=;
	h=To:Subject:From:Date:From;
	b=RQOWSkg+YVUjn7WgHa3UCU1UOvyS49rSFDoUVNUMcrktnDyC5uiRbdpNDCJRM3URl
	 iH8bepWnvCFF7+uTklpH456DDFJlEUEbdqiT+xevMQrFIJd9vGZOqwa5B3zNs9Jsmo
	 ev1aT2t8vxBXY1N7esFA1EQtpGGG7NI9atyDIsWAi0wP56nswhE8+23ChYP4I/yomf
	 HTKqQ0RthLlriR40VhlDuLvPfYsBVE8FsiUnE55N7cY52MDWxXMPAXUnFvWExJOXsv
	 C1KWWVnQP6b8ItC2mb2wrjD51k4dV500Rxk4rS2hBjKQ7U9RKOtT0VacJ13vU1SuQf
	 40YPKSflRd4Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5E0CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172881275358.14676.8797466563790077517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bc89b05c16954ac0db1764078d1200c009348203a9c658e962031971cf09f60
Date: Sun, 13 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728812753
