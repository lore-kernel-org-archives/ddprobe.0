Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB86039448D
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768479834; cv=none; b=Z4NBaJOpwN+HDPLzqZamBF5Ut/nf9kkYdsVDHne9JPFP3PwQlylmJszxFMiz9LQ59Xw7gF/R92joScALPC68dH5WvRNAVXCxmdxQlfT97RCD0GBQ6/d7PTbER1SHpoxyyxvglVCPh7wEVfjqiki4z39MCc0Z2Rfmfs9NJbUAcyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768479834; c=relaxed/simple;
	bh=Du2dC1ASJjyOYBHqQvweNiEaiOJyBgBs68LoWCGw1rg=;
	h=To:Subject:From:Message-Id:Date; b=C9azsnhzTIpE9vyB2XaQtWgnegB9XwnvP7wIuUxM5LNB2nM4JkUL0GuhkppllvvqokSGWMMbhh3BAHubjKS4/Fn9WPSRIya5A/QpxsxEJDXH9syT6Rxgo+o23wfJJcZo4VoQZgqjiDHResNJys5jUscJGKXLjOrXL9ixGRZv5TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQejnkP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQejnkP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA74C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768479833;
	bh=Du2dC1ASJjyOYBHqQvweNiEaiOJyBgBs68LoWCGw1rg=;
	h=To:Subject:From:Date:From;
	b=aQejnkP8EDVZXchgQGrqXVDOoct9o2dYSOqX4NA62+Cm8zJ8B/HRkE/VFuK7uD+Yi
	 9T4tjlOrtFAvM9cu68QOwrkOYrinzqhDruMDj5c9P8xmmtaPYTZd8+fScmla4BDB2E
	 bHN5VVeZcYm8tNOgP3ensLVTuwo/d7HPJpevoIuLnEwMCUNJr1+ZlmW9+XJJkXVjcL
	 RfnCWjW6NziwD7OxCb1Mn+lC1Og4BrQnAU7vSf5C+9uqy3L0MHU7cRooAJTzfovaFQ
	 6z+gNRRdZQcOGuZZYKPQ78X7VE3bm1X1v46/eFFzzSLZjm0MDE55/bJw0AjiB0jC+U
	 3I0s4CvBjiQTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB1D41179
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847983357.9281.11858066350972702653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa23bd8e895793ece71f521bdc1511fc8a1dd0645fe25130b1ca9672b0c57c10
Date: Thu, 15 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768479833
