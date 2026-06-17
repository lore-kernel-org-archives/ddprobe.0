Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7CC2475F7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781730994; cv=none; b=OqjfI+6naLvAsxQ5El14eCb9PBkJtVPB1pgm0FW+IwELHA20LErZP9gJ0pLZWUdKCfbd72bGNSsvlUkpUy9sPfyKkeKa6JfIyXsN8qqLBfQDNMh9eXAmz493C4vxeOFjeTSCCWcvgwBwyKaqotI7VMsgnrbKawD5PhmiF+RFX9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781730994; c=relaxed/simple;
	bh=dPSpJic7k9HJHnaK0/XMwgaam6+up7ugOMAXngRd7Uw=;
	h=To:Subject:From:Message-Id:Date; b=Wp79ThuwG2h95kzGuvHFIuM6hf10zGe3gpdBTAHjW5X2/6GKI0MKhLsGNr4PCoRvRjVW9m9GNh1baw/gSDS98/Kzo9K0Lb6ncHYr7xAh25Ol2SlI+M1G9q4DnYJI07dnc229VOUnO1NtAEki9h08wk0cYPAo+2GES/OCk3xlJ00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgGfjJHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgGfjJHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC19C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781730993;
	bh=dPSpJic7k9HJHnaK0/XMwgaam6+up7ugOMAXngRd7Uw=;
	h=To:Subject:From:Date:From;
	b=rgGfjJHb70TrUA9Tx6QFPal7c244Z1UuRUTcCp5cFaGKs3L276NjGKxNj3WWdjNWQ
	 yLPMSuqK88YT0Xpro2jE69H4uRAvwUEflsUjwooMoTt0UL9xh2ZCCGqucN1x6sEtqQ
	 o1w/xwt3WqoLaf71cJbFHsT9PxncCf8MUWDQ9MmZ84Fvyt6IMkfqpyvFnETh92umZN
	 P+37U7PW09Cwjjepx2Xq9Z4P5CrvuCYL/SbCCX51xOLPhFWAdOsxJd0f0dk9VpfqfX
	 ZN8cWEC46DgU03X3xp8yHVSsNjfKJa1Nu9HwbiOij0RhNJZteGaBOv1WjNkpZkFRjh
	 GLYqV38v5Aoew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F29CD98ED
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173099369.2985.460302020331812340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95de8357e639e894cc36b6b2b63ee1bab307353cb7f592bdae38daf97e4fbdb6
Date: Wed, 17 Jun 2026 21:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781730993
