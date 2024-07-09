Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5270663A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720493783; cv=none; b=aBKj5MRCPSdXbjqr2AY2urSWrxizoCBtjn5rRx1dV2y/p9mmqa3YSMcw7TJyTtdMegWws2Fq0OsQ4IwjY7JfexJxYZetAMeUUEPuyIshuS0Pji06eiaGC5IOIw0R67V8tDYHWT3cwhjoijg4RoDvHo653OWSvArPGMOJq5MhhlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720493783; c=relaxed/simple;
	bh=s/EmhfSO2Ud9o24OfkWO5r0x46jF7iw4pDQ9ZY/Xuqw=;
	h=To:Subject:From:Message-Id:Date; b=RTpnZ0BbvzV9W3q5V+ume4fQpXKKZm9ELga/+c+qu5GkwxQLpRsuYjcSTFhx8umWGbbfq6XP2xZ+xqA9qvq0Nw8wo2YCXoHGCFH0OyfWASj/y4of31BBLWuxg5gbwWNb2/rj0cXqZJNAleb2+sdh7cJSN7bisrxy0Av11S44UQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIJYAxU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIJYAxU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5ADEC116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720493782;
	bh=s/EmhfSO2Ud9o24OfkWO5r0x46jF7iw4pDQ9ZY/Xuqw=;
	h=To:Subject:From:Date:From;
	b=GIJYAxU02303bT9CFo5JjCzDUTnNyVLtEvY95+3AWvjOkJLFSEnCjgUpYAs1BjaQH
	 tjukLXgdEeQVFx/I9goeZ4ariGTN0DhxtzzYQwVKyPxk9296oQY+2JxVEv2D7VqBia
	 U9LoI1kanr1MbibS0ysc6XYRCrhr4uZe7bG6PxgTXcmA/Tvh/U1fBrJGhP3UoxDt2j
	 +7ya70nNS1s+M+HzH91xVB3VE7hPX4qMEI1Fk3Y+PVO3gBIUC0o8Z+gcGa7ZSfgC7L
	 AAl/xEKnqHBOWvUvz1FjHCW6YJLrXPKXJcK+/L10W+G52YMMOxjqbYvZKCYm4N74vY
	 qTA9kwmSchlww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67F8C3271E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172049378276.14316.1795669893122955093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18442257cdd5718939c444da0edf7814e2ec48c3365c87a9127a92a6fb2f28de
Date: Tue, 09 Jul 2024 02:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720493782
