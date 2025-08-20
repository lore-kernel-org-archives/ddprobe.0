Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F72F2566D9
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755717594; cv=none; b=UCanWNhYnaw698w51JOcxMYyi6R0fenppHMxwCcKT/0Emox76S2ohrKM5WayD3z9N6T5sdFvy1CGuSZRnQIeqzX25euUCZPbT2++6wqAHa4Pc5OoM9vWJSN22eBTBoCkAPBMJOOQkrneoxP6CxpuEyA/rPgzxt8JyXQRTJERj0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755717594; c=relaxed/simple;
	bh=+HOKDOlBewhKleQQFEWxnJk4+rPTcDnKqNay5Z60ZTg=;
	h=To:Subject:From:Message-Id:Date; b=tsZKHtIgQMfWdaBD+sN7EVtasEtcc79iUvH0+U5iDA+7F/zTbhaGCRGDdHeANNQlIJpwI67MQMiSgelfjmC8iVWc/wu2SsUu6jaDH4QQGi1KQvwz6iS3qUBIJZwHZN9CoOwZaSbQcgklwBeFeh8oGdWtyEw1HlMhm9NrJqHQ6p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMNdvOUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMNdvOUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ECFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755717593;
	bh=+HOKDOlBewhKleQQFEWxnJk4+rPTcDnKqNay5Z60ZTg=;
	h=To:Subject:From:Date:From;
	b=IMNdvOUf8R71jfRmIIh0s5MQHD2aIKIwHLgl94GWwkwD2B43nvJt9DHEVVa7v6qIy
	 wZ2Hj0P4NLJtqMDGCFyvbpXVoKMuL7Oy0O0YY7ouZm0fuTCm64884HlZCMe053OP2s
	 9WQL+4+wa8T1Xlhg3uY4WygmwI6gzf6pcFWM9rZ/d+SOcC5Wfi5SESTuEf1ewCaIzn
	 YT1RIRTsCmZv+AGOk5ksoJcZboZiMI85/8O+74EYuJfRNJ7DX2OGVnfAy5kXE268JE
	 uEKfpA0Gdg21XUjM+y+KdExLYdWpiNHEWZiarGzhAdIqM76/jAz0NpqExCKKMY/rpO
	 WNDRCByoDmrxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917B5CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175571759357.1283.10859651963957635720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c85d7bb8e86e9efd77055617b4f5bb76d611f67d7b548dd7ef5df89db9f27fb
Date: Wed, 20 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755717593
