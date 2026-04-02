Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236BF28E0
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775166334; cv=none; b=KowRKN0kiTs0lPf1JvLdaogt+V8YJHijJ/WdMWSitt3weGfcnLOld9LEBGeIiZndwu6wAh0/3kF33lFk4b3HHdWJ+Dzu4bYKs+xLiXq3cFaqQf2s+B05D7CdhewPfMTjVR1lOZH6IxA6VioXSI3Zn2citMEriYpt7JOUAh4ztoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775166334; c=relaxed/simple;
	bh=pHBC6l4V2XYLwtpUIYrqLgND80kCawCQmZNc2GiHWso=;
	h=To:Subject:From:Message-Id:Date; b=q+y8PYE6zr4bQsh/+YOf1ijE0cpZTNcFoWr29GlnbL2Uk8Il3t/mWnwe629bFpaj4yhvBHpqgC3pvuu11TWXNJraBlKpg9EMtMVoZ7DLi0CIv3TjknVwLBKtcp7QP1N+jgfS+02XscGRwEHXgVYFisYLh2iT4QrNqm2D1rj5lH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwNpL9Hp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwNpL9Hp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5B3C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775166333;
	bh=pHBC6l4V2XYLwtpUIYrqLgND80kCawCQmZNc2GiHWso=;
	h=To:Subject:From:Date:From;
	b=WwNpL9HprvOsS7Dl34g9QMQjPqvUh9j+AW8L7A5Fsdm3KJOwJ1juAJVtImMTT7kIP
	 KWDlCKhb7xILb4uM+TAZu536xBnvLBNjLtzmhSH1lbCxPjMBjg8GB+8lKvjfS+5n+s
	 4VKso0LGASRhCH8jF88xcAPXjnnGoMf8zAO8yaOiV0PR25bYclot7H53wE8FRRkP4T
	 hMnKT4VCf1HL170NAlxjxNVdfdxsMjKxt86N0I2jr5e5t4XNMdD8K/H+RNurI2DxFM
	 a4Iqzkww+XCIKxhOjfRPqo3SZMqcupCOXaxOcgpiB9ArD09S+70n7hYxUeS89vkala
	 naiq0uNH0qROQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4E8D6AB16
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516633369.398.16306982530302305004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9137ce1a46929eeb48baf17d7cef46730db649c12c2bc2fd9fea7d3710aa055
Date: Thu, 02 Apr 2026 21:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775166333
