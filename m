Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD6518C31
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760218794; cv=none; b=accEJI9q1KcXdL326x5xO5BZAvXbpXWwj/16XeVM2BOEk3Z5epYJDPZHZXTkhe8ALgnPzJKk53WWpGJ+0xt224O7CEILAjd9+824rmc5slO2XpXWiIJTtTEiBOpgzfcn1gGnyI5ZoqwDwBrfVRdpYs0Vux+b5OmOFVLhBDIeRdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760218794; c=relaxed/simple;
	bh=O5f8tu7cQa7QKUbaImn4XhsJyJ5tyMeSgl0Jc3357GU=;
	h=To:Subject:From:Message-Id:Date; b=l9THT1LjJ5zCD0WUuffrb0omE3MjoIDYCig2ORekwqqTubaDTUhXpjF0lSHdWAyPoveD9UGAGV9eFEV1q9A9lKllPmSHcV9xz3PUGpxRR3rx1YZBFYp9Jj10XzvlIzgP6dmnjqADg4et3mrNCDdmdqJ89u3TLcINEGF3BkcTk9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNz1uAhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNz1uAhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A7FC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760218793;
	bh=O5f8tu7cQa7QKUbaImn4XhsJyJ5tyMeSgl0Jc3357GU=;
	h=To:Subject:From:Date:From;
	b=RNz1uAheqbaiNi1d6/k/EnhLEkmjfuF8JFW0D3bvXX8u37UEhEy6fY2YhJ5+CkTTY
	 y7Yxm2qgUYRU+jiCMLD81yizDcFpob9dRNc9O+prh91bkFGfAg5IBJsF5Q8lp72GVt
	 APU9lp3w6/x0dPxUEMCVLuEN1atHLAPhDiI2sW8bS0jpqCAAT7HREV8cA3b36qEo2Y
	 gfmo+0tg2XS9WDzd2PDuFS/8QKeea4GD3kjD3vBtSidVKL8WdWbdf84sE22vpNVckP
	 KiiXutDLbBIxpB9okMhizExlverHoVZ4o8sABR3frbq8m0FYJGeO37JjLGj99dSyOe
	 wdFcdO/wbsA3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB6DCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021879357.25629.4132557282561868234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47bb46fd13a9206c4915c49c5df0c183c95ebc59f2caeb2a8ce7f35dc2a8251
Date: Sat, 11 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760218793
