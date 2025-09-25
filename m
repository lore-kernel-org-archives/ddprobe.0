Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E98851E573F
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758836994; cv=none; b=it9PpYdG0gTgs2U10FuvYqYBBdwRR1BjgVNf5+QxiKmqlieFN/gk1rolPtM+wfHiKExRGwoPmCwUKkMhtbuO9AlAF/9DwgyHXJajyjVqTgm95w3zdP+p8nzyGUP0jU1fhOYs/Amt8M6iiSJogzY/ukF/wq7k4TJ2G1dw53Gog+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758836994; c=relaxed/simple;
	bh=TDyUY4T96LmrSgtTeAwP/UDhWk2Or6e8hioclfSebZk=;
	h=To:Subject:From:Message-Id:Date; b=rldmp/K/H5CsNlFGO/9H614Pzxi3uCWNeT307kYq2eqq/cK1R70Yp0w2u+ytNVOcg1vEY4lXe2tdLkSfVRT47EMsdGghPwQWDwdkuzDH73L9oArcmWzkmw0DHDwTV3L8fufy5j661BYffG75+8+4+xuB5OVv9WoSyFaSDIfJt+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILH/fTUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILH/fTUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE20C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758836993;
	bh=TDyUY4T96LmrSgtTeAwP/UDhWk2Or6e8hioclfSebZk=;
	h=To:Subject:From:Date:From;
	b=ILH/fTUiVMVvAF8jekijp9Ik1lhRUZV26DSzDuHbZzutv8p+BVNcQvMQS/tn++164
	 9yrT2RWNt9EiJrPe7Bxa5gusTp6BjUEfLhXXdQ7NTci4Mb6bY9zhHEHfhFIHQaOuBP
	 yfsmCY03oyeZbsHwgM0qSUwnFzrmzwci0JRMwb8jG4KoJzZHnSB4XIruJJsPtcrvlU
	 aOhUpq2t6YKQyQwaK9jRlHbL3WTC64DKidZCnT2C7StfnvpdF2OuxEzRD7R7ZM80RT
	 VCZmVoaCr7L7wvHnl02MWK7k++tNX4spohkkxLzxzFTaopupQsIJ+idJ3zsxoKC2u7
	 jigA/aeaqhh0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3EACAC5B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883699362.11644.16229556465933270664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea9446463cea8b2592aff7ca8555e2d4a5e14c95ca13e64091d571f70def3211
Date: Thu, 25 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758836993
