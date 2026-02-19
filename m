Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44C7284B58
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771466693; cv=none; b=cLNmJSooGdihL6l58eoKWx1In17YvUV3stUrIM9NnxsvDtcnZ/7P3TeYrKipTwThIpCv6oVq09YSG8LZJLk464aV3vwC/LOqDnsZOLyNNuHTapsoA4+gWAkZ3MpN+CQTxIUV82cGIJmynFPjxmox+KK6/2EF4PDj7vNfmyYuJyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771466693; c=relaxed/simple;
	bh=QjMw83EmGHIqFLMtYLeVPYAk12g9eWM2KfAFddh15lQ=;
	h=To:Subject:From:Message-Id:Date; b=o4ju5HcUFrdfUk/C8r2cwYYuwJYHMK6oAOp0H74Cn6MKgxYEaTOnaQn3F2/KiNzULLbPKuSW+p5s9og6WfhxZZDHDh9aRAt7UZK0nwl0eUnG2ZkwGLgKerThhipuCmqvx90dd96ZbZuRk+gD79/9W2cVgG/IR3rGqBVMFPHBEek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fs40RN29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fs40RN29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4296C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771466693;
	bh=QjMw83EmGHIqFLMtYLeVPYAk12g9eWM2KfAFddh15lQ=;
	h=To:Subject:From:Date:From;
	b=Fs40RN290ENNopdKdpa3FrfmYHrdKgez1PO0yqzAgBv0pYy8djS2f3s/d++545+Uz
	 PrJzmiRlFjF5SRGgSheLo6AQlrLQCFjmC7oAyPgGfA/o531q4QKts/FN7fWyuaP0sw
	 xuQ4nmcu8jFgjmnvShvrrWkq39flsrd0kwQ1cIjo2pWHT0UKfdzDuw3DKsaKMDAaLG
	 BvuVXGJObfunw6/ky9iKaKPXG2QF0HcidlU36TI4wHLjPT/K1EgVjM5oN9FL/wI8pB
	 g6SzYIlMjev0yZ+MTWJTi3juNb3YxRYOllXZ64pnD1M3zlrSTPZcQuJRI4ZWFOniod
	 WoEZFRPz0yrXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982E7E9A02C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146669361.22287.5460205399939427212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02933d7291a9bdfa43cbc21165faf9a361afb0ceb40eaf4c1ed4f10c2d40dd13
Date: Thu, 19 Feb 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771466693
