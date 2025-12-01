Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADC8A55
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764549174; cv=none; b=MrwNF6iEbU+CFvjqXg05WEo7IfQVQpF1FYVuN7BnaB3QTuXaGb75jpHxaOBl0BrL3X9r6lAmcuj5wAwyCVj2BxDYbP9lQi97wCeXAO8yJobKMTrfKY2twNtI4U7QBvxqRphEHYWqMjTNvkZrNMGDJHW0Oh1zJ1s1mumHOVMbEPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764549174; c=relaxed/simple;
	bh=+TYujZ1aR1KQGEhoYLoRhi807BaeJ8kunXQjyIf68S4=;
	h=To:Subject:From:Message-Id:Date; b=PN+hOX+Fw41OaAq/gBxP2GP1kWOvUa+tYasdNrkDrRhCl3gz/4N6GNVfGSAf07wa0N0zdy8pI/ZHzJ/nmNLGtPT5zzQdtBrI9xzkOuIh/kTwm/VrYOWOYu/Xojbi1+L5wrdyJFI9vjW8oGI9l2+KfQ2GSsI4OeCp4b15228uqbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deixTByT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deixTByT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D48C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764549173;
	bh=+TYujZ1aR1KQGEhoYLoRhi807BaeJ8kunXQjyIf68S4=;
	h=To:Subject:From:Date:From;
	b=deixTByTzkRwq/zBeaApT332LbSownG+6KVyNmIE8uqPhJM+dK9VXIJsn3iXAOdVQ
	 nD+5QNvpO+7t4SIGxQqZtio6e3g/VJziIP0htVBoWpVlMkIQ7mIUMqesqBGl3YyXVG
	 4wEfCi2PO2cUWJWg5mYvYrBvUB6dwygxD5tErFXLyyiIQ2rZ8K4wP/OM61UBhGHbbE
	 uwx/Rqx6OuvLuHm6ubogjD9I6Sblghl7Bv9/WsA+AX1zMIgWpBFCm7UNTMDQPPAqXW
	 Chwv3Yd/Gi1wtsmFV6mTDvWDRW6YEMPLrHGyA0FuzqQg1hAt2ajp3nkn7kVF82Haha
	 wO6SP7tKbLtZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9158CD111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454917358.24443.10301345977914685957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede80d48b2c53b386951dc562f68f3f80450fc6064b5300a046185dcb1e83128
Date: Mon, 01 Dec 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764549173
