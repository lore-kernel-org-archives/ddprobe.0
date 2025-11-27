Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C75321FF23
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764211374; cv=none; b=fviq05pltyzezn5gRujErW3dSqPQHhtX0Y/SXaLFJEXG3I8w1qHhdskCaZmmhuncJbOTbHtZkVbC0w+Fw+23YisGnJSQuZV8dsahqdlsH1hfd/jIrkE7/IGaou3ocqRz8RuPxkHk3/sAmTwlAneAKCxbXyHMA354EroOQwyawYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764211374; c=relaxed/simple;
	bh=D5RYmrhQgYnPEKYE/QzBvO1WdoEKJteJbTGIEQjjKmg=;
	h=To:Subject:From:Message-Id:Date; b=Qi7LcLgWJ29i7C0ZfDcooztQHrsh0Q0XvwTm18vbJWqPJQTzLwdDfh1WaD0F2C9dIIGG0LkI9azH4DQwwQItps13eiZN0UKzVMWTnOV2vG/kGMR4Qv3M5X5mN8gh0iCw3ElQCREiO4geysV08LZwsYJXgV5I3DQcvRfqoLVgO6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAkV1RuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAkV1RuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3931C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764211373;
	bh=D5RYmrhQgYnPEKYE/QzBvO1WdoEKJteJbTGIEQjjKmg=;
	h=To:Subject:From:Date:From;
	b=OAkV1RuYgVpdb+7ZkvdDbacicc2SWvvit67o1x/eCEY1gKREwFDrwkXRq0d4py6j/
	 lvXgP/T+t0Vyu07FYKiXENHQoFfc2UZJzynn0/lN7n8/hOB2OlYDH4x6CsNpgdwTjV
	 f3FESyFFPvuXA2HDNilAl3VFp91Ujqw/zBBy/DzkZQVlaoQe2q7/91B+QUuhZFo9/G
	 GIbz/m5PRb0SIEUhC2zDdduNV1CZi6tPwgnVMfPG6MUTxEDUkgMJpsH/NE69mC+e4n
	 GNK2rt0aaKgwaVoWKqinYWt7tSqm6NIN/48jWe052VSlrP1D4dNm30zTIJAB8m5uHb
	 ihHBdTyg6/e3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC6CD116E9
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421137358.5810.13528316613557473226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c2a394ebb4eab940268f53fdd63f302f969441d3faf2334572f671d2a55153
Date: Thu, 27 Nov 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764211373
