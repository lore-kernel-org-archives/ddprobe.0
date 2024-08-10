Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019A213698E
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723313154; cv=none; b=I/YP5dQcEXfbU53N/mRonSLYYAMr7Q4Pyv6nNVBpCct5mg9BQiM+8Hmcdt94Ta4Cmyows1yvD0XXm62fnJIU1g8/jpnOEIW7I6gGMG4nfxbNUymiF6oiiBUphY2JWIkxY7Jl6FGNiknnnsIEpRDqjqtQTkCg4eAJtFzZDRC8OKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723313154; c=relaxed/simple;
	bh=l+tCe1ZA/zm7dIH2VIoRfB+2/K4oIqhVChLJ/JsCtWM=;
	h=To:Subject:From:Message-Id:Date; b=OnIFHBUy/pfWrTDX/T94SGO0iGBgHJBoAGd42cGFqKn1mRA/L/FU6r3jJEd0RX/hF5T/fxgdn51KUFMrZUvW8UufFz0aIILVcnJMFLVJmVIEzfLTwJNONWP1x7872yTUEn10aqCmpywfhseEDXbGDIX6zRLJFtzxD2btikfSXQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZVff7Bb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZVff7Bb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB65BC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723313153;
	bh=l+tCe1ZA/zm7dIH2VIoRfB+2/K4oIqhVChLJ/JsCtWM=;
	h=To:Subject:From:Date:From;
	b=TZVff7Bb4rmgSpzJwTOUIDm5bm9igG8iUHQSwZC8B20Ms4hBqh1n19am6foihO5fC
	 KYilyK3RDQaZRc/cI8L8JRVv9bjQZWJClcBJOwtyZNuCElR+CrxBp0thLmMWIYbzsl
	 pRVuigFSE3JTP39rxDnUlEX/NLoLGFcRkQWnomcZpw7eIIwQXz/gTt5JR8BMCFweZh
	 8fBrhXra2l3uRHLMhsLSF4L2egqSiEdWDFmh3V8adFwZyznSv13+jJ3OEqm1rPUe9Y
	 UV9Lq5NHTO7Tl62DCU409E+0SC1L8G3np6jCDXn8/Lc6pF9TwcYvxfsJgGtkxUa8Si
	 4sl87hW1xeBlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8705C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172331315361.10462.16721045750583685886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa883fdcae2ce947dfc5c9598c109ae02ee2f2bf7aa2b03043cd46a755d4fe65
Date: Sat, 10 Aug 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723313153
