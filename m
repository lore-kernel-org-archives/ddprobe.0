Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1DB51588F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791898834; cv=none; b=CCAyYva7Okx1G7fBv5TK0rwP1EEGKUICjXrxiY8pNKta47pEyIfUkgrQXnJIyvFXVlf3GHJB+N9FB0U19yeJOQBEOXGZfCknLU6X9VckiwfwLO3BDX3c+QTJimw3N/XZ+9WjFmpEwNALHNgOISsKhIufyGIqOwtY4HiIZ0xbI/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791898834; c=relaxed/simple;
	bh=RZeZbSWxyArv4SZKezqiko1dZhs+zSgIkms05xf3vLE=;
	h=To:Subject:From:Message-Id:Date; b=iTEWbwJmUNZcYCZxsI4VFZqNHWwok3tKMUN4fjtPHACcPIrHwGW5cL/afHqon+u76+c2MV9E1FVNiHjymxJYuXVu+87yic7PbYg/5y/WfETbLsVkgRlHSORaQDHXuIZxJTxIxE+uGS73E3wEAhdeWVbkuUX/E42hi8yGShgoWxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QP1n6PbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QP1n6PbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15E0C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791898833;
	bh=RZeZbSWxyArv4SZKezqiko1dZhs+zSgIkms05xf3vLE=;
	h=To:Subject:From:Date:From;
	b=QP1n6PbSuxGWO1QXrgeWlociOIJdaGuBjKhUVhXdI4re5yMpMb3RJNMgS79fuKnTC
	 cCnu84MfVhDix8t7glSDoEpWf6QwMojlIiSIEKVvU+5W55l0+PA7tHirT3YT1OlOP6
	 i/wpAeu+RijfMhYq0ZYwCdC7ZLjwooGYqFJqwMR5405uAgeq1wWA+7MSLP1MkPCyVX
	 JaOXP/GW1ZnruCuk6Ih8yNNonkCH0DT5py2FiJwHmNl8upNBQDbsS2XXsfHbvYMa6q
	 UQugkez5BF8V1N7bNxHDslAwFT3qSoARemCtyrohEmfIVdH6qQzhl90nuq03MOY94q
	 T7Wnsz3XZm0Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2A2CC6B08
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179189883370.6408.12487130402235595808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d6dad6d542199082b74a77b7fc648bfe3e17be69480b17c709eabfae9598ea
Date: Tue, 13 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791898833
