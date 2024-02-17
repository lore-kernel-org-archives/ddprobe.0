Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14506A024
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708205897; cv=none; b=XXsAV9bYAizzR6FvvpGo/BdX+9nwOfVrRtJ4AFIhaGPs6ITjEhp3rcAZHwitsd9VN5VND5AqdZNcxSxdoV6w4zbi4I7zYeysaQ0u6Cymr48J9reWMWcf/gS5/7HvNZplV3fkedLaDrp/Ct7vNiNAX0w/9VEpbJIu5Ir2oiBsiGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708205897; c=relaxed/simple;
	bh=/W5kT03hR/VqYU+NbSVsZ+WKsInCx3+0nOERpgQaN1w=;
	h=To:Subject:From:Message-Id:Date; b=Ypc/OBzLtzAChgUfHoUJXm5/Oi99JVCOrhKU9KOEbjlQn3mUu0WxSHj1FB5tqKZCpjQfWBuiBL3gcKqyu+K2cSF3MMZf9zY36iwN0JIkurU5RQx50QIMeRFkmsK6TOItRqAjSziteQ3vVoME/x+ck8L8f/3qXPnMlx17RE5aDmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A65yl+Ci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A65yl+Ci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD35C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708205896;
	bh=/W5kT03hR/VqYU+NbSVsZ+WKsInCx3+0nOERpgQaN1w=;
	h=To:Subject:From:Date:From;
	b=A65yl+CiGvk6c8rnjh4B759vyhr1vybB77m2VLyjAhIusDLWXCw4RhIoER65gdLhN
	 fX7yuYSMsp+hEdHl6O8R6f0XJXfDT11nUwv1Da/frjnWyrOy5LP6oLPJQA0cqjGW/S
	 h/5IaDezwZdPID51Ruz3YVyVrKXfaS30bFr/ffUmq+ZWke2pb8HKFDtFi8mIm+i/Ar
	 OKdqTQiOQS1/kCRSpuscLiVUzWdoOsJPOoEu0Fa3lXrb4uwlr4Nbm1AAJlXx1p9tT5
	 kmxDHuTu39H80Yi9D4VsvGKgGUDJdztJRxNf2zxGTSHoCipDW4THkRhSiVPdZJHtQ3
	 +8J8Hhn5qYQQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648B8C48BC4
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170820589637.13744.7962078146926278797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced82c33f680088af13284bfa92c274d9293c6d108a4e7a4e1358ffc6e93a681
Date: Sat, 17 Feb 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708205896
