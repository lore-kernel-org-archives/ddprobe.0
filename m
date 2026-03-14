Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF7921255A
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773490493; cv=none; b=br5ZduaTLPejNd0anMHTgysGbCCUYhFjh2/vgLMH0/boMJMlJI+aT1ibE27OAWJclb4Bg5SVP1c8MaqosswLEuceBscYyUfQkO8zvv2X9n/iH6wn5esKXpW1x9Ji5t/G03rFMKTzpJzPEfhCNC1cjWdlFuLmjjgwVW8QV+UmSww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773490493; c=relaxed/simple;
	bh=i/SYQ8dv3f+ujKPTAI/UuiX45TWgWv89fjxKOYWIsUM=;
	h=To:Subject:From:Message-Id:Date; b=synzMcwyp4ORWupS3pC9fwJQqUD7F/qDX+4uVBrehobdVhDDLlozEjo7+8cm2+RpQgNaW6tJqR8CVFAlJEYq6gHDbrJOA8yaWuB2kKaKdGZSn0Pgvrcf2GdRGNIdAz0Too3iNgyDK2BYUGQX7KeGCEQ1439FhgODMVHFnpjYhOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgyQ6LNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgyQ6LNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41C0C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773490493;
	bh=i/SYQ8dv3f+ujKPTAI/UuiX45TWgWv89fjxKOYWIsUM=;
	h=To:Subject:From:Date:From;
	b=mgyQ6LNBciUe1ghi0rhz/LIkP1FxGVXac2CdTkF7vwBb+DGKfDQDqFC58UkgvRn8H
	 pS5Qz2RZC3d4m6iyyaz+dU6n/kINL23NtW2ohLmVmZbFBdhVDv/exosEXeFRgu//Bp
	 gW9K5fGa5zNub6WmhAalGuItlrO1gA0duKyaVF7+7uGh9tbGARsrBwSWxN8CTxU3qb
	 IYY7glnjZzPSmR3lr1V2B1PDmGVhXfS+MocOlZ6b4OmBiZpi/pdWBeJmzcm3UeLemt
	 iH95aFgVfHn3tXb7ySTEmRgBb/qpqOOmTusL7CR0GoXIn9JVR1WwZDAA/9+GpG7Hcd
	 PZHYHQx2YQTXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9505D10706D4
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177349049358.31351.3310558407800175569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f242bb5d9afd20266c1c4ffd1c6df7a3071419b86b6e44de047d682f44ced3
Date: Sat, 14 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773490493
