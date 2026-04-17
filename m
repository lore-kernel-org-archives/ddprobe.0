Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29219BA21
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776392854; cv=none; b=RQ04gFbEAj/aR18eHlLxaeyAVgwAU9N5rWplZSwAG7WVXriVPquPWeswgsp7I+dZ6M4fFc32CFHuXTMaQfMKEShR4niOgNDbQH9A3JB7YdOrbgbDs8U1RCXeIZmxJSIXBYrviBsuEUnciRsWCfAs+U5l1KeUa3AU233GpRpcVaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776392854; c=relaxed/simple;
	bh=V2+EDcEz6+E9lReEcPiWPJo6wJ/KQZifTsedDq7pVCk=;
	h=To:Subject:From:Message-Id:Date; b=JNwJrc/B+uH3rWm+IhA62KBluGo+TcllPnSc3VINHx6U/omcpEYlpm2CfkKzqdaP8i9/FVj2ZxpmA9s0ZrUv+we2XlsYz2HoNxYeDiRHBrH06FbQTE330GB4IKcHbUa/dd9vv9YGDDT3tzqH1Hdr/PoP9REw6O0eGMJrfAGrHeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXyAnBet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXyAnBet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC190C2BCB5
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776392853;
	bh=V2+EDcEz6+E9lReEcPiWPJo6wJ/KQZifTsedDq7pVCk=;
	h=To:Subject:From:Date:From;
	b=aXyAnBetI/CceRbTuUc3HPq4lW60w5cFol2vIgFhonFSTeTLmyPahcSw+j6CKIhkG
	 66E4bY04EKjRJzqMkGFFLRbRUZCI6Rh1rfXgaj6m/isHYjohe5il2mK9RayUjYqp49
	 /hQwWGS3qndcPBTUTlf0McSdkqyT0eQ09pG1HuaLa0BPyJkOaFbrhZRjZMj7A/Hgo9
	 /MQuj0IVeV+tjDXb//iGxZiUlI/iUKgfTdFo98i3j8rulhfw2hyXzLphsv9kSw9+A2
	 U3bXOVGrsAKFyy0SVLiv6DINigaqdsr6ElF9tI4pVmI80FxlwYcsvta7O1jTKQnZL5
	 8a+Vra6hW/IKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D24F8E49E
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177639285368.16286.2059550484059823547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ddad1eac610c5932a2e298ad24c6a95e4245993c61675e5f65b0ff9d77c45a
Date: Fri, 17 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776392853
