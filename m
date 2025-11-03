Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31FD1C8631
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762204793; cv=none; b=RlP2e5CxEfsrrqcmpmVe5cwPhNS/4jJaT7YOJo/NHE0Eo+yNfZfI0X3uNL4JxLWMTkRsQyfZBVT008xE84AZxJ1Gsvr6vyeNExF1NVRPQC43E1qi2oZ/zgHWL3nHYJuv0e2lBqkG7daCc3b+GevvYO1qPAFIGvsrX6XmnzOpN84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762204793; c=relaxed/simple;
	bh=unGAojo5ARnDWYQk551HM/N5ZzdRBKzpGfUaZmjDfOQ=;
	h=To:Subject:From:Message-Id:Date; b=V5hxNT+rcnovwW7aFgUuUq9UXOVN7RwkdAH1gRGCzzC/n9/5ru41mbXJoH7aqjLuJgXzvGjAYmAMRrZTXKhK4YFpWLA+24qjfxszqHg4rz05dvI3KCwg0Drfozhj0++fRFDiW2T+CPIH8RhrM+FKedGNyVRz2/IKcgjhbmGIyNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzeEdTuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzeEdTuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28E1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762204793;
	bh=unGAojo5ARnDWYQk551HM/N5ZzdRBKzpGfUaZmjDfOQ=;
	h=To:Subject:From:Date:From;
	b=PzeEdTuC/+2oFU4xtr7EKyGGKaGWYmYc/fBntFPMoinPHcg61wJaC4bsjuFk21hMS
	 QBMSvht7CTrnbxmhPAO1v3cLQp9n0c0T4ZWdOK4vBGxgjjpswX4W8OWDDG0ZI1vHAQ
	 GRwvN61q19tcJ6YPBOofPua5PszUxnTZS8NC6u1eiEZ2rOyUlIeQM9DxHkUJrLsOML
	 zuvJxCJXOldi7aOd1zhb0wTf/rv7HDw3mFz9cyFbO6TtPiMoUx469CxWWalou0/c+1
	 BFnlcXO9jIZ8salzivsEX+qquRwcU/l3Yd79fwLNyY1kP9c+F8aoOx8WHm/SALVX31
	 0bU7IWAUlpIMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC7CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176220479358.29226.2327442930396048154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e147cbfb789075cefb9e961b057d0f49f49c299ba5aeb9c32230d533cdaced
Date: Mon, 03 Nov 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762204793
