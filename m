Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BC68462
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 23:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714690943; cv=none; b=BgcXmWRyIOWIsHq/emKGELe7HFgg1uK3P/ZMhKUrqwuy+lBEj8vlQXqOqdtdYQBZnNf3MVwCQ651R8bb/HGypHLn+iPAyrNcxQnem0Z4SJ4Uoqz1fgnRNBmryG0hAIlvBrL1q69Jl6AqAIFodcgTUMUXf5bY5sQTKhXIJgs4Qio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714690943; c=relaxed/simple;
	bh=LBsz96ApT/7R7D8tWT084TtBwTuhc0sO6x1HHA4eg74=;
	h=To:Subject:From:Message-Id:Date; b=KOHMn1oJRiloi2WWaFl0YuATXgGq0UrkV+I3UrlRFuFnFiDfUBvx3lJFy5R6Jo+8jLMs2Pmavt3s+kos5WLf7vh7R0HEqQ7882EgBZc+SMYSD8YR8bRZvdkNnSq+nBmWqOCpWGqkumANqMAeAq2aBsQ5FjPWkiHZfy57Gj3fW14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHOVMKJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHOVMKJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC91AC113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714690942;
	bh=LBsz96ApT/7R7D8tWT084TtBwTuhc0sO6x1HHA4eg74=;
	h=To:Subject:From:Date:From;
	b=iHOVMKJYhP6rGrpI04n6j37c63iqoSTfZd3imcgNVGM6JqGdQgSQ4G6T+4Oiuq4L5
	 fRBWWP5jSVYduacQ4UHzh1etXECEgUTCM6GGn4Ppzvk1PVYpycLatLeKqNkWZYG6KQ
	 XQqm90y2NwnMLkUUn1H4/qfDRfz7kpSjAgXVpzOzwGcw6s185lRFFETm95zw1F/lcY
	 17Upvv5oc/h6dV0LY5POuV7s6sCxO3ZYGMj/wh4y2mM3mPUK0q1qjFPa8SRSkdvPUu
	 T0/rYq+dVpK2YSx667UkS+Hz0tlaRndHRnoiYO7R5iMb9vjyO9G9D5x4WcVy5Usnh+
	 yttSnRMzmPlKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDDF4C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171469094276.26168.10342650212723098068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3498b64fe1cec0e1dd056d79d898e13ab732f842c36063188dcf8b5d38ef050
Date: Thu, 02 May 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714690942
