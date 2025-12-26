Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1818227B95
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766776433; cv=none; b=G7WPCBIgSZ0TXGAJ5XpNJP3+pyRf5ZhMNMH7OkQdFadmTHqzZBXvIy/7BXv/GabzyRwX2WLdpoTSQj/1mr4VW6zokZtZSZPvRvVA046nllKcS6m2UV/i1Skbykhw30KxvP1Ti1Aqnzi9hQw7VYaADS3c5POMQ8NMdgMx0bPBJt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766776433; c=relaxed/simple;
	bh=n0J/pg7lM8KHwjHY/D3TqFcGHYqWdWwo3N/r2/FV6T0=;
	h=To:Subject:From:Message-Id:Date; b=Z46pNZw98nIHsa9ZJY9FjvvTGAa5S2pBj7lDp9r+RcAfTu1Hbd4ezCkul0kc99dkAHevHJYV/eSAkr6MqEyKQGL3LAYZIBp8+lB7NRXKAayGiBZ/SrVXkyS/7UCltuiq2ju1OXBjhZE0m7cjs/P/1yEfxiqdX/g3t1KV3hX5W1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHR3yEdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHR3yEdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A52C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766776433;
	bh=n0J/pg7lM8KHwjHY/D3TqFcGHYqWdWwo3N/r2/FV6T0=;
	h=To:Subject:From:Date:From;
	b=WHR3yEdXZuO5cYUm7k6taO3+Z1wPwgsYEsf+JA4KdCGmicJOAse/T8lZKuZ2jA2OH
	 KyAZMavkXIgJea3Yk0LUk87jdSt4aPWghziN5KOGPsRx+b5ezrAkefcr17d5Vz406m
	 4A18iigE9U+ZVrAJYNGtNVqC2JL6jkt1f7Vg/HwlCmlJ6Z+fQZx7Ci1D5v1ci9omf0
	 5yuAh3AmvUL78wSbdSwMA4VpqMrthhov7+ENqIg51RpvqEG/nxSQrTcW4yTIo3TJxs
	 ATSB148dCoSBueBPIBSEm8ye1XFXaWqfZLqhUBJebx5XH3VGnVtxGXwdhSOanJ1pKu
	 vjnEebPzNy0lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EF2E8FDB4
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176677643358.14635.16370928665506218494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36302fc8c45e7f22d637c24ceba437eaf3d60c4e3186c5a0594c6a1254406344
Date: Fri, 26 Dec 2025 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766776433
