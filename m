Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF0C16410
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711042097; cv=none; b=eG06Og21LbPODxF7EIe1pRbjvyNshH4TMNMqHkF10V+EMiYxg7vIPshFIl0yO1qkzsn0Ih7sJATYRG0C+Fu123q/9ev/GbOcjeflQLc9XxOYur8qIuJ9sPLKS6tfZs05w88SwB9dUiKNE59oHYCi/TzW/oarGwl4kkO+Qt+/JwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711042097; c=relaxed/simple;
	bh=c/7O1nye8GCBjiB0F2Wu3ummlKKdHBVfWWLipDE6IIw=;
	h=To:Subject:From:Message-Id:Date; b=EITsP6hJhUltqkIg7sTgRjcXo0V+vKO9sXkPo5heodpsoouf9Kba9sB/+J+q8DLKFOma1Kx8Q88OoiFFLMhgItSciT0H5YSV6JKs247BVtylovxDsFvh7tOk6IQKMnlqZI9inuevDX5yaZ26RuoH7Ba153THAm94WOHrx7e8Gl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqOqYJ+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqOqYJ+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70348C433F1
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711042096;
	bh=c/7O1nye8GCBjiB0F2Wu3ummlKKdHBVfWWLipDE6IIw=;
	h=To:Subject:From:Date:From;
	b=NqOqYJ+wxwqbg9u4LkO9nMrx9BpwqImVA9435SY+z9ToOzvgyVEhC68+PNg6iX9oa
	 3+oawjkQzWsCV8QuPFVi4GyMPTgujNllnSwLRx3HS9Wzk9Ftl7fronMTRsqykNXUzQ
	 7MthLEt4iXs9O+xR/u+0TTx7Fgj3HSXIXUfdfM2WSzyEvoOz1RDljueE/FH2rtSkRu
	 WXz8pcZAmOunRK3Mjbedhc17os1CoemUA2Rm61UyTOy5EFcsiwGvCL2ImESY0Wms4j
	 n7wjfhCMQZQmw4Mmwn1OD6xSTGVAv8usyVXhDCwv4JShjg2Gy/HDrHOS2DpyQOqs3W
	 spap9qge5KL8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE52C54E58
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171104209637.32247.15530489772022428903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0abb4adecbc22bf715ac27e1849390fea6a38d896ce99569b6a8a15f2e50c3a6
Date: Thu, 21 Mar 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711042096
