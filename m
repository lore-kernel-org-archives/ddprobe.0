Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A76D17753
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728099354; cv=none; b=TmFETqSA6oo+wfm3LpmpemxovcOCXQnAlg6VKjUM5YR7jjGHqwMjJVcDwM+ayOghsmlIHgmYp6y7JELsKC1xSJmPD8jAQntMbggElEmWoQDpGDuKsHZR5lNtkd/2wwH5rvFO5qcnbU6oj6VWfey8TSlYEz0TAfz3Fa7OzPzrpsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728099354; c=relaxed/simple;
	bh=ktOnbK11b7Cbfx0swNO6UcSkot8P1uIfJ+bhvA/fxVo=;
	h=To:Subject:From:Message-Id:Date; b=Vl3iCNxgR8IOZ7b54+c5T9llQTp/XevV78ZTFI0qhq2d68YW7RSC2/cDiEXK8K+NZyVTcRxlJCMOVtsfzaA3gqeJBempBCrSivXJM75aPg+BKX+qIfQIsxhRmJq/0WwMGDQ4D7NgcXl3yocsH5MmeNauW9TEwDSGJlGH2Xe3Mjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sd7fqZXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sd7fqZXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F6BC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728099353;
	bh=ktOnbK11b7Cbfx0swNO6UcSkot8P1uIfJ+bhvA/fxVo=;
	h=To:Subject:From:Date:From;
	b=sd7fqZXfwzeKGm9jqO14wDMYweF4vu07MJuLtwJ3Km4hzFfWs32Kd5epgB1JhEUQd
	 mobrXUoA+niq790pRUwgU0C3yKRunOZ5KNCDdyF2008dbbCi2LNf4blm80a4Sg8+nW
	 Znk9MJjNVBZ4fYwBaSnYKEtID9HtoIS7jQvLMgywj5k4+ifUF1vE0m+rwSV9BVRSfG
	 nUSwLnOpaHtD+vU57Qofu+ZfT29CL80sZxR+k9n4LRYjsF4KJnVv2k3cSESAfp1+Hi
	 ALU5//E87KtlNHMNHKsLVzAUIxWJZqBsdGezg3nmF5l49U5GWeEossnYfGmmX47QuQ
	 h+tTIB/vxr78w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E79ACF8869
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172809935363.13855.8427785130225720010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c91cc159e5f94ada1127902899bd17128a8a37a950213b56c368b1b98dbaae
Date: Sat, 05 Oct 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728099353
