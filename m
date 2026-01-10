Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF6329405
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768078434; cv=none; b=fjhW7UqwJ9yC23fb/og3GmesPaniagVcLc5RGvNXH+oqz1BQndRahiCRpJZ+7V+Xq1WySzfSG63RLQMCvWnL8Ot3YD+4PWQhP0Cfg/BJP5zLF8Y2zmDp3X2f2NIiVEko+NE+KbF1mOxsING44sDfYHupG1RZsIxrpYuC6+GfTTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768078434; c=relaxed/simple;
	bh=1A/uJQVWSNOmqHaiuw4PpB1esnHIHUNQ+0QqSJCZTtc=;
	h=To:Subject:From:Message-Id:Date; b=OLv+9wvmK0tRKMd05OEO9UXYWm5NvSrn2y9lg793m/Eh6M84MeBjBmeTxIq2RFvoG15ElrMmwati0q5orACnUibTAxfa4dU/IHJGXtQYV18tZC6o2woTvvozILKjjXAdxxfhyB1istNNTRAZlnM6vYOwxail5mmMaqaUMiIPpNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7Gz9QR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7Gz9QR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F834C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768078433;
	bh=1A/uJQVWSNOmqHaiuw4PpB1esnHIHUNQ+0QqSJCZTtc=;
	h=To:Subject:From:Date:From;
	b=I7Gz9QR1ZG+TQTV/gMy1RhIwva7oZCOuHRhgB0PBZxhIfStmLXDG8yE1tbk0ArkOB
	 iXNLmtttGKGQmTs8WIHCPlatJLhGWucST9cVRAxPy35IGfGEdoBQckqCB/jNZwB0bk
	 5vVYocOLS7AOPsVufL2opjmTPE4cBxe4wuB1pJTNlmn7si7qnCcyeq4OznnBRohKnY
	 PoktUWpdylzy+vj9N34AO0pDlItD89enmDYcAj5DpfMbkStfmKG3M2AqMXqcB1dWZe
	 boK7e3cOLGBcQFLO2LprC8W8se0Bo1yj3QjjHK6WAZf/Ysb6feRTPjv6Km5K8jOz3w
	 44dRdE4WJXl4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EAD25022
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807843357.21531.12961085987598486039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b5367f5333ad270f372f203a3f6665a9d7778bb0662e485ba38f2d3796d6733
Date: Sat, 10 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768078433
