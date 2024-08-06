Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BF71607BD
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722936354; cv=none; b=XuSNS0nKJWxCdW7A1/LXxAy2/EwnwxhYUU9EuHN+oDjMZp37iTus/YMiXW7gNbWBnoZRPgChDa486WQG6RE09XHakVns3goUTIfBoWRwwfXGcUUwtLS7kl6KfIXcKL8kT5uIk6te1GFIrpHCjfOTCbU19QaTiaNqvgV2PY9IGr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722936354; c=relaxed/simple;
	bh=K7iETprIrjUMhs/RFxXY80WsbfbAreQOU1/oULToRCA=;
	h=To:Subject:From:Message-Id:Date; b=metgzsLqWGBTlxo0k/twkweWsVpDRdWtY5l2EB1Zup83Z75yT1gbysvO/8+NjsBdpaMNCPkj209tPuBqofavUrbfmMabwvLaikpeN2SiRrOAZvM4nYuIL9g1ipBIqv1nlriHlq4D9ZJXtINA6vE/Wavv/mmqojvSLPgqSUKKt6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipN/EQst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipN/EQst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEAEC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722936353;
	bh=K7iETprIrjUMhs/RFxXY80WsbfbAreQOU1/oULToRCA=;
	h=To:Subject:From:Date:From;
	b=ipN/EQstjPfekPsx8+ENMSFJmaIxkJDDZ+TvECLuYKY3aoODyEhg+79euNOdBcbGL
	 MCx2YBETW1xEhZk77cORp66JuJhHVpVeVue6jvuY4TCAEe7zTDrrIdsxgGJqwyhmrQ
	 rm99TIJTw6TcdUzjtZln2yy7DJms7kfVb4ynliRzeh8/cuBNjTyXW68Wy9Z68XpRCf
	 JieLo5KAVFzdO7VwY923mtg9tkwHQwLXJ/Cu0wKcIbf7IghEVuKoFK8NqQMPpG478Q
	 lctRhwCMx9puFV4dF6rSk8cui2IknlgFdCAFIpUEHngwoox5IWWKm76KFCM3xMQU+j
	 Yl++lDGDTcpsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F9AC3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172293635361.6553.2015233773564659097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c4e74b8b929ee5064d8fee7f91389d016361bebba9701cab4191f6a0fa2eac
Date: Tue, 06 Aug 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722936353
