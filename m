Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFA314037F
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732182354; cv=none; b=LTUxapLB+vBnBXc50Rnjk7SwutPQ8Sgc+xH6xx2ZwiDrVkuaykTsSDRRas4SGgLN27SpZusyqHKWB+LShy6emS7eoskbPp/2r5GCRFeWCHf3ojzsSxNhbYUP1UDH+IqpZQLe94j/hdHiGviC6xlZIvlS4cCsSx57WhtNnYkzvSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732182354; c=relaxed/simple;
	bh=86W5rHwhQQmNNn7oQDML/4WpKHuq/DJPPpUtUodhFbI=;
	h=To:Subject:From:Message-Id:Date; b=ifYpvZ0qBWSOJHhWRbEHfZ4Rmuny42CdWCdsENyofK+wMXpeS2T5JsaVfAMQ2WGfDN/KzvJxC4XdpAiKEcZ7qynQJ8MJqPT4SvIolmhiBhruTwTbNO+RhmggbpH9/o4OTuwe1ZnpPrb5h46q9k34ID3zlCaTblLsI6XWLliydNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J96wPeLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J96wPeLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1110C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732182353;
	bh=86W5rHwhQQmNNn7oQDML/4WpKHuq/DJPPpUtUodhFbI=;
	h=To:Subject:From:Date:From;
	b=J96wPeLI3K9OkCtPl6xndLZk17jJ6Ys6a5WmitkL6AV+ZvHCgoR87SeymcGhv0hHf
	 REI1b/n6hQZThngZSsLS83A7Bxhv1S0akuhwX3c2huCLAJ9Q1jnWFhJ6GZP/XQWwvR
	 p231b09wWOCCuTF/q25CeRuvvFopa2Z3H4b7yhv/rN09kj1WtyU7JDCb/W/X4yZ94z
	 RaKGw8Jb9fan9H9q0N2LrTgAa2H6O/uNWyS17wHLlxz5jkTjsq7TOna+p57026ywd8
	 wv4W73sEn76xERMiooN9zgV8cATYsfjLnumu6wxQ/n9RAY1tsB7Sqc3OFtRI3ya2Os
	 g5wB7Ko3S7X7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939D7D6E2A4
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173218235359.28743.4349339219327162870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b5b71c9bf5c795060c5cc848d6eb4415f0b01afbc1a1e9b90e88dce3469d74a
Date: Thu, 21 Nov 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732182353
