Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102832E0902
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781108794; cv=none; b=Y6viKy2XSU89QXQtdKjg1h8LXh5TA66hBKGqUJ61w4f+S4OQ++URJxQnc+MKQ9dw2H40bW5R0atvqN6hpBXL1+vQoFZIb550AcPAsE0zvPhM1S72l8I4gpDA6PCKQtdM7TtbY7KYv5n3V72Qb2/UdMafyl1YcS55raIwK+F5iBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781108794; c=relaxed/simple;
	bh=xuYcc114cUweWGAbxkpSx8L+04A8edTt9Dwqqhk60sg=;
	h=To:Subject:From:Message-Id:Date; b=MqF8R+IT06xeD76xa9tAdQ3kFsdwwSNVW+SjJWgESI95kGkbohqWWI136tX6ykspZD3aHa1acIRKI9n3+K9760r/LCtx1ZCXyf48wnvWAn6HfLCC6huWFxJrQvSBShdib44jnPmNASzcK3HGgvJ/XDutYb6bJHmOnkfiJFeGzWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZkNcrl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZkNcrl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4EDDC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781108793;
	bh=xuYcc114cUweWGAbxkpSx8L+04A8edTt9Dwqqhk60sg=;
	h=To:Subject:From:Date:From;
	b=TZkNcrl0UnGaH4V2fnVI9aWbou4aYdiA6xc6enomSfV32m47EZTpYExH/+aajJA4Y
	 x1fKyCrVR1E34ycrsXowwn3zdIh018ao492TwgWAKTtnxIZkkuyWElF6PiZA0sdWeb
	 h23osdrfRZN+rjJbjdmPEGWJ18VWfCG+24h1Ew+wz3K2D/EkP9FZ2WEZqv+3s/wm15
	 td6Kibi4+UaLkOzOHxWhVIBpe6Emy8hJ98mDlDGbY0jg11n6pP4EpmnHof6kNK2gDr
	 0LehVgUeV3KrpipJ6Cx5+suJjGROGDoQ5kxynS8glWBYDpMnCwQVGpPx/t9rcPw9IP
	 1CfkYyQZkvl4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC940CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110879369.6401.2680389250831599256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85be20ffa327cf6a45fa5d6a188899bc364d79c90502ef060e968324c3baaa66
Date: Wed, 10 Jun 2026 16:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781108793
