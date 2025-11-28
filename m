Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F154327BE7
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764331374; cv=none; b=ceI9VhFTkmuOc4WiLPXozmzm8JOYIe2I+jOQIHVCrPGma2h100VyP4yilqb46mxGfEqz+z4HwzNHun9YnLnmcfcvAFW1Os2PPj7z/hrIpcy5Ot4CNIcGN38jVdfCCcykyUtP32+VIWuSKBVoyL6YhMh+uLqv2yrhJ31mbcbne+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764331374; c=relaxed/simple;
	bh=rMWrylhdvSU72lFOECvS1J4FeqmZCyRXuAXG9o3RIq0=;
	h=To:Subject:From:Message-Id:Date; b=usS6dKRt1u6LyQVeqAJsCYZXocHqEGB23hpqucyjQ6d6jj1qDYdZg7fNxMl7Aj8evaDTXxi/9ERr85LLRoQreKDqMEHKhYwKXXG2jQ2Hzu0496sml+SOizqR8WvUX1JpAYN/iaNgc1ThqCCriG4B3KVAKDJATceUszKfPTn/Wkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AV8oC/b2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AV8oC/b2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B4BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764331373;
	bh=rMWrylhdvSU72lFOECvS1J4FeqmZCyRXuAXG9o3RIq0=;
	h=To:Subject:From:Date:From;
	b=AV8oC/b29OusUor5e1KON/ABZYkJzvHV6ndX3x+MN2PsyK6L5wz/exhPLLoJDZVvD
	 NZM1YMJRW8+h0evsru9aul4v2Hxyg0aQxdnfPaBl3U0K8Tq0RsylJ5LJr4wGkZ10e8
	 0/oQH+Q6vV2U3//sfG6eoAoFpZRmFZXDsYXZrMyKEwzX2OBGv0yOaMp0U131tB40UG
	 xwgW9Bg9TyGqdWMiNQZHyuvasnmHE4WxUyBeBdy0a69ueV/K6+CQBMHq/3yYXir7Fh
	 3YcDUyGdgOu+MK6Qm007APtfjIv49x+4ashAhLmDeC7JCA56MtW/BuZ4PYpJAwRlB+
	 HBl4q2wPP/Gsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A69D116F3
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433137358.6061.17762424194816730040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ee641f92862d28f1f729efd3e7a103fd4fc1990346b197469c092cba459269
Date: Fri, 28 Nov 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764331373
