Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DB41DB122
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759442394; cv=none; b=C7ODkFADeK8BhDTuI4iVwoCJ6opuv2amqSQwBL+SGhwsgglTWor0mIeoLXkbrXfsb7DUMF6l5o4USSNE2OeH9zXT7x/wiKsYnOW8z6DAAq4cgkU278HijYQhYj8FMpwPPgW+3iTRV7zswXaj38BSf3kEls05AbPbvNECsq8ytpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759442394; c=relaxed/simple;
	bh=qKCVC3MNgw/HfM5N8xOzknXccOjEUTJurBSRQofY+RA=;
	h=To:Subject:From:Message-Id:Date; b=kXcYufQAjVncbwFnDDvg6FQIA5CyeT0Ymv62TI4z5mYE6RT0zg6G6nNJK6896wOa/sDU14ob7agq2oH0+qb1rJtVblf8EzJHV1fYoPhdSZf1lvRrcSycd+MqsXh2RSfQ7/ijW6UP/G7SEmC5w/rQ7GmJ+kevVO7w0bptfUYAYZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjC5+Sb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjC5+Sb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4295C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759442393;
	bh=qKCVC3MNgw/HfM5N8xOzknXccOjEUTJurBSRQofY+RA=;
	h=To:Subject:From:Date:From;
	b=mjC5+Sb28HGIjnM0bEEa8XWU9en6IRfIC5m3sZjR8Odv3cyEtil5XrABm8gdTZMYI
	 IADA0mlIMf+C5ZurQZWr1PZy7YB9RyaBIUgn3KhAR8hOuhVeuVtvx4LrNOBdFwf6c/
	 6tzASoLYQRwPQRCjo3GV3XcouLFOGzmAkJzrsFxo320YZl0K8/6L2urctcycSGG6Mo
	 LebGfDVN6xfwiR4RXVtcTt0Ly89xcURh+bEey7AC+IX8qtjQr9p9tH9xaotzjvwRWS
	 +jYZnKH7xDJRTbm3I5Y0vDnYQzvTG4yOruMIUyGhl4z05VI5TH6zqLUCB9yZqnDUHq
	 b6IsK1I+PKy3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91549CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175944239357.20273.3642478527301480171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ad38f303e803c3d0cb4212ed259b6aea6fa0a95802f21a90722451705ca841
Date: Thu, 02 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759442393
