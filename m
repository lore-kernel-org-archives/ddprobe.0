Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28C6230D23
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739196355; cv=none; b=Vwp4OtVlRck73tQoTSuPzqW5Hms049d+iGmqYj+ss1Gd86tpSZX+pbxGqWHygFPQUCJjWmm138l8tIb9ZRn5wJHUHoAf0Qhg2Ry6Lg0WtAWZYfA+dHDCxg8uE64gKQMgO0Gsn7kfy03q4kG2HGMoJJvYYSPu86EbEx2kcgYtS40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739196355; c=relaxed/simple;
	bh=Lw8OrnF1hiEN9yqa+nH5f4eOX0SQYDVqoT+2X0phTUY=;
	h=To:Subject:From:Message-Id:Date; b=orKaXf6ULzS8FVCfhIlZnp/66LW0FcI7zvs7uE0YsBm+CwhrpK5PSYLg6MCZU1KsLkw3cwlZq7JfmNr+StrUWlAlOJCYtmcB10I52rA+RCEh9R3DmjAWE6kIPhmu4Wahx8N/Qq3U8b3YidX+FWT6TG8R6OQsKdRHfnaRbdne1mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXkwsvpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXkwsvpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA249C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739196353;
	bh=Lw8OrnF1hiEN9yqa+nH5f4eOX0SQYDVqoT+2X0phTUY=;
	h=To:Subject:From:Date:From;
	b=HXkwsvpuVO7gSn/3knpStwgM9KlO6MweKlewcuvEbPq2SqmZBUDPn6OK1rBPZTdPn
	 b1qZgpuV8p4siLrARsVINNgSLZ64DFBO9k9DPn2R4Ye1vqBS6c1RlipIWWc9gyICJw
	 aj93M2mi5/aTsdj5PZKyDYyDbBmhkRv7KFbN69c8lyyIYUPlE2NqZJfmX+nWkXX1qM
	 HFQN9HedE39X3hlITRNh7l2LOtVpSbHsYFS9n7zOVasZWZb/VELThzdzdT4h6F8lR3
	 GA0AxQI9oZgi8KtxSHTbEQVYArhWJYqlV1GIY2H2sjenI1aVK9uF4rtzf3Kk0S0Y4o
	 7gUwhtR6ot1IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D3FC02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173919635361.10563.11560894900669467125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248ab2e8a4e6067a2224a4b778269e7d07665d400167ebbc748876a3c777b027
Date: Mon, 10 Feb 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739196353
