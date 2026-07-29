Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8834503F0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785349834; cv=none; b=bzlq+5DTX7vEVuSko1OEKWUW7NO18Z7Rk6UpONMIr205nTIMvWzXu3xlJ3HM38OqUHb3oY8hkGn/z4ST5abtL02f8CTW17jaYkFK1hYkKfSSLxFJhqq05Sb9Ile3qPPmmAfempFsJx5661TiGQxAps8jkM3ZMeSJD72QhLdz+N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785349834; c=relaxed/simple;
	bh=/KcZLCA8BTyw2KshdzyU02/FaxluwnilR+FhzzdcxVI=;
	h=To:Subject:From:Message-Id:Date; b=rirdgWyt1KvXE/qadLRhMQzXlCh9KLCDOw9tJRyU3AMQ2Wb/I3+p52kQy5JON5+sCnb9b9U4eLNuow2seeTTJb+JKttPvZmF3Bn6qH/MNwGOTn6FGva7eDHeVqHMkmBvr8j+DuWg5m5endjq7daFYvPXfsqdRAt1OT11P33Z8WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehX5vUE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehX5vUE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3299C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785349833;
	bh=/KcZLCA8BTyw2KshdzyU02/FaxluwnilR+FhzzdcxVI=;
	h=To:Subject:From:Date:From;
	b=ehX5vUE22lvdrxSXrgUnOidxsgaQGn554ZzqjBybRMAc4NPZtQNxipAGicaqs0lBG
	 cB3GqRFdPdBvxKuNFTrGgp55QYYYu46+LLB8ArKPgQwRXKhGbvSzdVr+AjfwZ9AAmx
	 WTe6lY7wt/CFdN6Tk0GZDzY15xh82KIjgL1fdbSSYBuiWgCVAaf9JgnC2DI0m0N5Lo
	 ZIF/ZXXueXbCLonuRYQZWJ0JiBN9OfWa/8FoUN6IaPQ5gdM5VRe5wcY4uIs4+CddPD
	 u6UknvaC1gCJ6Co4tKKO654FMnTHZtRWtQH/EeR7TnBt0SOiKFJvSQTAPczd4DSuBc
	 Exo3W0WMVKK1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8B1C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534983368.24796.11402901798767939715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c46f624a286f5e956e90077df6f789ee45dd0ad41f76e4d66caf6f57e3ae092
Date: Wed, 29 Jul 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785349833
