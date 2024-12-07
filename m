Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3492E10E0
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733550354; cv=none; b=MqznB13YGVXxtuRwKqZktPR/BKvLENW+Zu6eZ1GxFKZNp+9kkBBgtJVqxpRTMXHdUCI1X+rqd8DOsDq5MX1hoBZhEih22gN0gmLQWnZ/CdRL8PBzK2XQL3yJNdz1Xef+uwnwHRj4mwg47KiW+l/olQ8iW6N9OfOCvuJ6DavFvO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733550354; c=relaxed/simple;
	bh=N9F+ctiq6lXHrhGpHaGk8a0v3N0Hdryczbb9mRFqrYY=;
	h=To:Subject:From:Message-Id:Date; b=WL9WIR4OXG2JgCRxcWgLzQPzIfKCm4525AHE5yVhif8rM8ZcZE6SvpwdgOewR9cXRD94rOoNOKVk4z5uN6q5sorzUBOh/oO0CdJW1hr5Dsr60Q7FvgCiqp2kAlaltTpt6akhFQeMl5gNgN7ooHfhFnNX/knVs95YEws05F3aUfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oU9fz61/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oU9fz61/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0D8C4CEDC
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733550353;
	bh=N9F+ctiq6lXHrhGpHaGk8a0v3N0Hdryczbb9mRFqrYY=;
	h=To:Subject:From:Date:From;
	b=oU9fz61/sBiwC6ZUJAMDQaNweagXxW28YpTfNdyib33ncUTMoEJRoot9JO4CpGsmA
	 ioN5xt38LJTT4sxJw02D8NQhjEC2+R+EEVyDbqpYtnx0fJFPT8nH/C3MKcUCZPdFeQ
	 U3Qz8B1TQKQ/n2Y7V5JPRFdemeqf6wWQrbwV12kETaFfDII5YZ2SCxe+OwX1+HMMrU
	 b6irJQHm2hxibgj+1LFw6PBioQujwWH1665VCVXzFroqg8XEK+MjfjdwX3IGrR1hhn
	 AcGm7Cn95Bx27RFr8vTs4I4Fj+yEYFvDv6BoF66K+6lAEhyFKFC2S1QRgf5NMGHwGD
	 8BPGw9A4+Wiag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A18E7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173355035358.8023.9853905072091781769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 761ea61dcd622ec67b56004908b7a539cd167b44a3462f68b34aa22cc1cdb9ff
Date: Sat, 07 Dec 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733550353
