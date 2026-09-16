Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8BC539184F
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789522835; cv=none; b=XQXVv6K4KLSJN2AVrxMHTl/egKRtxmg5ABb3Z2ThFZcWIKwk9NxwfWF0W4Ec098QlVjg8+LSbRwOKyseJabfQwykt8sG5NQ/eS5j824OID2obwUQiek9H02dH912oDTn0Zxon/qjmHNkEE9jW9FXKxsyCXQnRk/oNr3x8F2mT8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789522835; c=relaxed/simple;
	bh=zxdqdTcaxJ+58lCGhSTdPiEJkDHclAMQzemEdEXKcrs=;
	h=To:Subject:From:Message-Id:Date; b=KyaPkc5yeSgZWE4yVPeOuneEQeZFIB2bauVjHpAtpEicYpsy/GuaBYmwOnLEpYAalLIFw78yV4bQ74xLbD48/e7zCxwAzHCIQk8hI1wSmV7oIpbeik+5kBGeIJWcgOmp5DGTxu2DxhSBx/IyQfzd54zT7Aj3QRU+wT3LyxcSVVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBjrLG9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBjrLG9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4B0C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789522833;
	bh=zxdqdTcaxJ+58lCGhSTdPiEJkDHclAMQzemEdEXKcrs=;
	h=To:Subject:From:Date:From;
	b=jBjrLG9ohwhl5+7y4y2avKpxpLGfz9RIcF86v3AdTDtPirk3YoBC3O8zbVdKGBgpG
	 9DwHq+b1StqMy+82tPJincgXj3tri2UsLodhx9omo2xKrWSduiA/h3vlEGPCxgH+5m
	 2lKQjDmwSVmMqQDImzM5hLdi/lYpXA1jpTDdGfZTMSPvnykhpzu9XjSil4GVV2rmFY
	 lrFbk8FB3JtihR+jh9R5jt+9cRycO7ka1U/xaUviiHWGvE+qN//LjWKwfEs2FiaCuT
	 3U1x0Yetql4hQugLKcC8qkIWPiwH3KvYQFCoF8Dw3bnszy+J2WgzzVoSs4rsf2DWrI
	 RfTfOQL5qjV6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94A4C88E75
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178952283368.23770.1226989525179656404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eb6eb1014fb412fd684b034194916a4dd39e8a863c6396e777711084e954429
Date: Wed, 16 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789522833
