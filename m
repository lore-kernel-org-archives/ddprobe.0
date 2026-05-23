Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B260145A1F
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779571954; cv=none; b=e9Rx2OpWg80wpsYbIKf9SWxkvkJWipKarpIHBQrkZIZE6PmVYb/WPAfhjeM4nRQzOeen65g0A8PFh79ujIJy4q01Cy+RrU8HXRznzvLrJxpzMqETlaTnqbBfSXehRZkc1p9/EaIg0n9KIpgvB211CcTSBspXw4Oa+Gze9yavNT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779571954; c=relaxed/simple;
	bh=VP8PA/If5vRTas4JZDInEO/R75jAsrowOKDJ8IiBWSE=;
	h=To:Subject:From:Message-Id:Date; b=ENg37wmNtTorWQpW5eDNv3YoGmFoW0X31uv/7D5VvkRfcS4mX5WEzjd0CYIKySi8scEz2BNoUqbQTBBezQi9y7eF0JVrDbarvHWyALEW3DmPxU7w8+1SRmAQNVqcrQzycnMGBZ4eoWTn0suTtJIoeVdmb5LTi0Ppqy7e7uCAPkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUUeRJkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUUeRJkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D67C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779571953;
	bh=VP8PA/If5vRTas4JZDInEO/R75jAsrowOKDJ8IiBWSE=;
	h=To:Subject:From:Date:From;
	b=AUUeRJkPAWLTm/fcsAiR9SYcYU18mc1nD+1cmg5iMawEAzyOsEoe8W0lVJvhaIz6G
	 JdcptA+WLGrh20vlJURU0LPeDINeZsGW0odiFoYhKLJAdthCgTynBdO/MuAxhvRdo8
	 AAtwTQePjf80EY3L7sFg2qhUXyyg19+etAJcVkOgbM2s4ANnVEd4MaaM5DNSyAOkzB
	 h8uPHJuK5m7bmDNDw9/fe771nMq8xmpJVPTBaFublgJvRfJuNRgKLWQvYKj+VhVUQE
	 VW/h8RSYbo3A3Ci+B+fuE1lzKZ3GWM8wnDf+TR6LGCq+jKglzHFti1YsObBBy9Iq1z
	 soMQi/IjKXIIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE273CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957195368.1984.2913093263330679602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1797a133f5fba5b067f99d92d3129f7c05bbb4245a4ec4d233149d925718d8b5
Date: Sat, 23 May 2026 21:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779571953
