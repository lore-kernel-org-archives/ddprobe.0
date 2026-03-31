Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299183A5452
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774958694; cv=none; b=DTDh2UNV7KY4mGTb5AumsE6qgYffujGQnpqPvCy4aiVtyryhGwyZE62kWWxTGHSo99Lyfld/hPO5R8COH6bDwxU1wDos88+H5vwVzMitlGMQORZCaeH5HcVbTmofsR7ZJZweQgZbM/NpiK40qWc+gGt2S5t371vpWAfUYBikv5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774958694; c=relaxed/simple;
	bh=qFVkLe2c3y5pqRcW8GHljOnZ41nsKAxg/JIArm2bfxk=;
	h=To:Subject:From:Message-Id:Date; b=o5S4jpn4CXuaT9b2OcWvDkQ4Zi8gsWIKh48W+UsbVZlJKy+NZjT63bDiOtzQuYWKpo3rjimvloXf1QoSm5racOPgsx3IA0SqBnPL46lb1g3eu2srgceeivp8540mI1yyuTnOg1EchBOJ0Y+5Ri0lkTj19eTYB/OlTr34Cw+3i10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnUHHtnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnUHHtnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C29C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774958693;
	bh=qFVkLe2c3y5pqRcW8GHljOnZ41nsKAxg/JIArm2bfxk=;
	h=To:Subject:From:Date:From;
	b=bnUHHtnIa6IeDdxrnG0D6XvwsKjw1josrtQYIG1vPYnFNCF9ONJ7ATb5ISHkfxgcI
	 Cx56/I10U4emnAiAT5LY0vaDOeTI3S/4k+ChOVPf2YIVbh2DjSh4dUTZrDZGYjLgVk
	 4Nce0b4XWuTD+OTvnd0jpLp4DPQLOaWAFl6L1mPrqAIMTlnkrLawaaV+HL5qTaMyvY
	 QlX5r5bdwYBfM4NoRc3wXan1C9oL/+8KRszkwNyklJATBb8WPzTzZ9qyJ/di6oUUA/
	 82MDzSgLLPTLx2RfbsJ+1FOMxzywD62VkCI9LkBAf7Qg84PFe13BkLK13Yso7EUi1U
	 XwIgWBcE3M0qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922461061B37
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495869358.9389.9158325444470069620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37658d1b676073adf7c5089911116383f36f07534214599a08f5d22ce7262b16
Date: Tue, 31 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774958693
