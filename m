Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26F03C3C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721907954; cv=none; b=b9olf8Y45PswGS74Cs8hA5FYnk5inh2kRzd1mrv0S3KdhBNdZRWRwAycKpSGG8DMkdtBmJtXTkwSx54WJ9Z5axmoyHzxvVO1OLtFjooY1Ckl3QfpfAxLofXBT4hKtKjth5Jyp69QAgHS9B43fMLeYARxtDOehn/He8zIp5yqoQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721907954; c=relaxed/simple;
	bh=AlQ2hTsbSGkry35SxHM7lJCVU/+8uHsmNYa46ujAEoA=;
	h=To:Subject:From:Message-Id:Date; b=T+xA3QNCk4VGqVJHNd19GzVxPHn2YfjV7W+O/myaM96oYPeJMBH5wm6mF7xR5CZhwGLsLcLbWfjgVY/7h3wYOtc4MhJ+5qeuktLq+s25jx22/O+LDZyCDmieJyoINs6dIy82rQV3GyAiOqni7EdlmhdOTamzOrTliE9g9xSTKn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTnE4KQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTnE4KQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A420BC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721907953;
	bh=AlQ2hTsbSGkry35SxHM7lJCVU/+8uHsmNYa46ujAEoA=;
	h=To:Subject:From:Date:From;
	b=FTnE4KQQx1lhZQyWk3zmiPPQGxQVaW13aO1uxrXA6qa11kXt/dy+1R4ofATpstH4f
	 rnZlIVvhBhBTakEcFrpDljJ6ssxHAC3DlsN7QxXRomn/m1PzA0gVkj7ErwbsADsqEo
	 IzxxQ569Na2ZVqDZsbOGtkwq+M8dXBciEZVQOJtt0GItuQSxERw90lvP8tj/TvHhHf
	 z6Uwgq6GF8L4z67qdbccTXAKuNzdTC2UHBqzPxhJCygIZGzJAghZaMFlIBhZoOTklr
	 NizBTbpFWRDjIefw99iwLu7blilcdf0ph5asMkz+VR/rHJcO2RuydV/FyTbj8qbWHT
	 ZGmCO6UmE9p0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D4AC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172190795358.30458.12733180066555490457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f3f46f451544bd7fbc46f5ae753fd852e9ccf61f5933df9f28a55ee5e942321
Date: Thu, 25 Jul 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721907953
