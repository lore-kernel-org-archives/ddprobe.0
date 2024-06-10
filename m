Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539EF1CD15
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718005643; cv=none; b=t33j4EOovmvyaQbsu9Ig/cx9xzr3CoVnSqtuy5rniYMaGwp+s9gU+g8knrSrFxdD90OckmTqjc7cTmqm83w9XE7DEHAmZWt1oFSX4jueMcRuGeDEC+bbExTrSeb9ndIPMLsrcdKwhANQMKekrfqUKMI6xFQk8zCpTiy2SKGPCzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718005643; c=relaxed/simple;
	bh=zx3xZI571dTAXTmnXata0fzTuTROAO5R9OPrQMRSW54=;
	h=To:Subject:From:Message-Id:Date; b=oPljlxGD/8ge5rP+UqrKkovSmcMkiA7x0uOGQHPBR9qHo9jtGi/9DW3ZWB2OkrdDCxBY1kcVLLwDlx6c96Jkf4s0SrJjsuT/7n4HryVGo5PHOvBFd1qgPI0wAiWru4zrQIk55+suI/WXa8nnpz4SNro8QGDS1bKj+t8KmDCsysc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAii/hry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAii/hry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54D4C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718005642;
	bh=zx3xZI571dTAXTmnXata0fzTuTROAO5R9OPrQMRSW54=;
	h=To:Subject:From:Date:From;
	b=bAii/hryLVPJH2JOvmtZQi7hXsOSRLfcUbhL37Jnfe8Qjy0LpSd2wNaK/krV0PQbB
	 IOjt6pEM7D7gneMnAjpmVcgE5YnpO6dadX2JFHBH9zVCioF/Jr6p5DQrF05TP2MIGr
	 DupaxjupTe+lSDS3u8TRTywSvFEoJaZ/rfu411w7ny5itg6/lHk/1PEfcEuoLL+PGb
	 s9lTjrEzExq+RYgu12+6rSzmRWdFOaHSKIvjllBWLMGaIcxThW1s4vMJO54hOMj3H+
	 piLsUfVOw9sEmeHNa2jLXRvBWIAFe1DU4vv7eUkteGnkQrFymweGeFX89U82EbAY0t
	 nY2Ydd+ljxxKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C007DC27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800564275.29577.2139470845693222143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325cf2b9367bed5759442291c4073d2bd558ecb905e4cfccf8eb478d979b2da9
Date: Mon, 10 Jun 2024 07:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718005642
