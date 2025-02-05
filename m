Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58CB191F75
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738767354; cv=none; b=CJ9VrBpEAJ57Y4AiWPMnLo/QlW/gEhxrCvYzLVe/GzwO2QKDdQbIM7cn36ikG3lHuf2BbLKCt+bVuF7jwMsC929Nu1qEzudZotu3CKlCgCDl93N+u6K5sl/SI21QrG2vs6KgyUOywyUBfKYSPCPnMjXRvkjt4oJsvIThjzZsmxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738767354; c=relaxed/simple;
	bh=MSGZtds3A8Z9ldNx4hWzGYXOY25GW49thYlnfl74r+Y=;
	h=To:Subject:From:Message-Id:Date; b=CtipZTQTFtUQBhVIYBlgzA7q0s9QuSijo187I1E6WrCM79USec4fbRzvXyZX0yxZMfJDeYbe6q/NweXPffEqPpQZkDBmWywUPrMUVLMQUGIPqouYwKyWwRyintO7Lc3q+bNy6LUUv2K5XLXljdi5FnhKQ3oeUy2Rvr1gUVhxx5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXemyySj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXemyySj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF978C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738767353;
	bh=MSGZtds3A8Z9ldNx4hWzGYXOY25GW49thYlnfl74r+Y=;
	h=To:Subject:From:Date:From;
	b=WXemyySj/UWEhBfN6nExNxAi2agRoahEZ+HkTTTO+A1/Snx11hIWL7M8+/hAMDGNy
	 21YiE6fK2d7SFd89mh/Gj4vnfb/NMt8Gergi1OlXl9EMtPWtJ4tOWytOlbbaVjiCrx
	 RP2nT+DMZ1HHhFsPdUm/H8C8Q72MYToqxuw8z9WPMtXidaVlBrs1ahqWw76dEh+aD6
	 ioeoILOcILZZdkByb25ZOrHf4dkSrHtPaW3hr4Ad+jipyioOu/I8brQXpdRcDKAUK9
	 G0BPgnpe1/fvNTHgSxxZ53YMhHf39pna68GW+OlHM84ozMqjAZnMWnmVXSWq18C7rf
	 b9P5fZ5i8Ij7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCDDC02194
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173876735363.15340.1905552227787402979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6d3af299370506ee058af12b51c8cdc5cda4adc3f2fb48943ac3cee01d44ad
Date: Wed, 05 Feb 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738767353
