Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395F22DC779
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757636394; cv=none; b=JYUNqlGE92SnImImpxiYIP08tVkevvV3WU40wHGBIkbgqo3eNE5/yDxesC4qaomEQWaAqseIu4rqGQVV1xQhYGSApmDcZMHIIK2NGbshFxylI4CIJq/y0RwQOUapIM5xqyVRqZCjQk8z3PNgvVj08ax3KGNVXlayoFFxE6b3Tww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757636394; c=relaxed/simple;
	bh=UUQw1OqbcA/eCnSwJ+aA0SF0jt5KNOonI0FiTc62ocw=;
	h=To:Subject:From:Message-Id:Date; b=bBvToZxBa7UILyaHpajSjVYJvmgQvpAxLK9pmetU5w8Y4h8z5B9nFzikodlRl2zjRV7YAYuetUiXslc+ro6l3Rwe7NZCaq+Y+9Xaejt4d3a2OCrH6sIwmRUCDRXPsSP+qStQ8LCZxbCDL2rYHnDypqveIZb/V7vgLvhGVI1veb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTSuYw/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTSuYw/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8075C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757636393;
	bh=UUQw1OqbcA/eCnSwJ+aA0SF0jt5KNOonI0FiTc62ocw=;
	h=To:Subject:From:Date:From;
	b=oTSuYw/XZGZ/023hKcUiwVbOsGW/ijK3u7ifqy46N3GluHNarHe/ev3sacahsxmoO
	 NQHAlK/52GP6cWBg7h+QljhsMq9YmQU75UJrslk/7FLuT0OdYYUVPdUTfgwYLFS07q
	 FfR7jxcrn1zcYDcon3k/SsRJVCMYocP8vEEP9993fkcuWSC0oLEZ0wDj3U3U01ruOU
	 XlUKETCYd4t7jbIJVRJtxl2ScVS8vW+f1mFnW9iPFyrXNRmea/WX9CnU/xbuiY7t4f
	 6QpqhcmXm33dVg2Qccqkp2/xlcZdJOpAsHf5JaDkvV860C5eBWXrq4Ox40G5e9qreI
	 8I5DnT6Yvgphw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEA2CAC58E
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763639357.9870.5740008616176063262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b414cf3247a18bf3e31acb3908d92ff5f7798fcd27e36c1ec79cf11b66d3da
Date: Fri, 12 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757636393
