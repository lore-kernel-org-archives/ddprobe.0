Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20495282E1
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750730394; cv=none; b=NOIBrInp0g/7jyGFaD4lMhcOLJUq+TL+CxW6ZsT14G1eBOP6tvLO1IToufiA04wKelgrFEXsTx2DNY8+sdxI4NFza+I6+acXma86dk7mbIfOI5dJU3a1bo+obrhc18Tw/yQ20ogj+QUEfwPtIzWoZeg/CpIsg6Vw5FxycP4Xy2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750730394; c=relaxed/simple;
	bh=a0hM3LzvcBh2ClIxxUoR3sDY8ItHOMIJxycy2fnYQxY=;
	h=To:Subject:From:Message-Id:Date; b=ew3W5Z/r3tN4sTW7Ed5MGjoENSeJcGtZEbUM96/4ND+KbMnjEg7QsBCXVCgFjARd2YqqYLcL/YKXRyIwmKqOBwOvqvmELMGbaTfyZ6v7amviMZhGIeKAx+gNrtCN5HRnoLvLlt/3r4dykmwdiE7FBpDwbu0ZI50eN76zSBKYPjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaV3YxlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaV3YxlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA02DC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750730393;
	bh=a0hM3LzvcBh2ClIxxUoR3sDY8ItHOMIJxycy2fnYQxY=;
	h=To:Subject:From:Date:From;
	b=QaV3YxlRkvRdmzgqh9V5Uc7R7k31XhsPD2I2lfPQmd97/NgY/8twIT17DGWZyjmsy
	 aDY1LbC6WIKqpZxspuaE39Fvyn20KciozmBTULaNq3VJ7Ox/5JiDWryt4pkAKw6qqU
	 v5ciLcLOdz6Qkq6dSagiJpavYiS+Ga23h0Yjr5W1z9EOSHOyYUWWwjDFHzXonn+gD/
	 H55/qcBlSJ8d9YR9bB1wbh3+KfdD5VF5oyF4j6o6U3FXCLhZV+crUWW4q22uPVk5yd
	 kOmLs+9CxF5YgmKPbEJWJu5b/iNkzgqGHJ8xLa7pBU+7p5wl8FB9l+ErRAW6KnE5eg
	 szTs2LEtwz36Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9487CC7115B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175073039357.9894.11642346986257721465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b378d91f169f43e48b5ac20379e06f1c89161aedd414edd85cc24141e0aa0a26
Date: Tue, 24 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750730393
