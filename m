Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E278337BA4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781109394; cv=none; b=FfBV50VKbS5Buj3awlbAvSku414GNKLqHncSBf6snfF1C5+0db5IeYmkxHwf5+zGVzoTUj1BDxcHUugJ/d49cVtnLE7tbeduM2oLgtKvfj5sIKeiqMm4I7nGDbkY9/NZ8RKHfZFtfb33XwvIiiOR9CqOubdMh/UhYfHmd35zWsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781109394; c=relaxed/simple;
	bh=cl8o/BtOAmahpYHY8rIOTvnIhYVKiGKjL/BIS0eWPjw=;
	h=To:Subject:From:Message-Id:Date; b=EeE4obbEsvZBc7fghJ+zn/lA+Uilu6VIE0ONSQdxv+jyhjRwY2I9gD5jlwWP3BYZ+1XK74Bia9k+a//Ib4GGYwAK86zPbjR+P4N2JANCaxgkNsWQev2yYBsS2OnbZ26k9LqenTsrtJy8ryu0Q4d+5uQBScvMzzVP5/GPE+Tgo3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyP6whf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyP6whf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF34C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781109393;
	bh=cl8o/BtOAmahpYHY8rIOTvnIhYVKiGKjL/BIS0eWPjw=;
	h=To:Subject:From:Date:From;
	b=tyP6whf170Je5sVI6pyaoodf+5ZvJ9hUMdtvPcElfVp0W9RP7GJekI2JrrMLEsQIn
	 Cmf+0yDJ9KzsRXnp8//A9N0dNTBYd6CM2LElN/eqs46yXdl5H6jVaOxH4ruKN50DnW
	 74IpxCPvof3sSPIU02n40EIZKWudWHTwE39K+dPDTBGOaCU59gpxhf1LfkuwzclgIC
	 ykJLs/tXf+Acvlrcvk5TfITtyxRX/a2DZrKPwMYUFfJRRQptwVy828IxZEPitlKSiJ
	 4wXRJPHhMPeV+SSxiBHXf4qlRrkKQ/7FUY09GFeDfNsorTV9RwtqA/J534WblJBTe/
	 6agZJfCKILhFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07F0CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110939371.21333.13557300737626218227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d45dbf5a180f51da954ea7fc0782fe4e1bd966036a0271985222669ec887c3
Date: Wed, 10 Jun 2026 16:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781109393
