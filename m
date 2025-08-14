Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B825242D6B
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755200394; cv=none; b=tbpetiZLwJrffqvindIlAyY8LFhLGqF/8k7s25OWRDdpDwPovoVw8AkADHkwtFWhOlObPO84BDRxhMe1Eblqs7FAWAEmD1hCaXaRhxFcbBDnC6UkWdWsNOVrpvtNeHsY/0uSwr5hiwLOdI19dF3D1nONMzyDQ4vu1KFP1npIkM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755200394; c=relaxed/simple;
	bh=QPOx5suvnBZMT8HbI6ckTdphRJ0my8Zwb255iZmsuZ8=;
	h=To:Subject:From:Message-Id:Date; b=eWcy5keX4WuXi+88h0NoAvwiVi0NRVkC7wQ2vvZ/0olVt4rWvRPzTfkcX+JXnMCIte/VQU9C8c/WLK3XS1mrLMOJUdM/+xoHtnaAYHjlkRJQxuoIVdVxztELZCz6cfN8YYdbRc1rNQQBpPHW42XIniD8yHgLdJwkfSsgYU9Hf1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aB0XagcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aB0XagcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C3C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755200393;
	bh=QPOx5suvnBZMT8HbI6ckTdphRJ0my8Zwb255iZmsuZ8=;
	h=To:Subject:From:Date:From;
	b=aB0XagcL4ZYIPL8sL7Ea5gObQ+ckWL20PSVIozNAmu6hhSF1WX13RuFYFNab8KoGR
	 hgvsgXDyTEfrFJAqx4wVudP2P//Oe4mvUEkrIDLP01t/h5dUBp21UfAGCNTgge4BYz
	 iRySpt7ISGyQZIgXLVdzQPsbeqXZOguTUqs+F13jcKjY2XsjiRAl65iVwB6FSFqyNt
	 SIktJn9Za8Sk4yJXrDLiFIJwMzOX2INTwZFFqOwMdYmp4ty1hv/wT0wEVJsmkfD8nc
	 RKV0KL01zQEvsFJus+NL2Vol6WTJ3wVU7RUOy5RdaqX0yYvCZHELTC8E7zjXG1AfHD
	 Z4FuEhh8TwmbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E993CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520039357.12657.10764985312544137944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 155e31b48ddfe300e1869bdc80c323d46cf34c547feed3ba87102eb44175d5db
Date: Thu, 14 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755200393
