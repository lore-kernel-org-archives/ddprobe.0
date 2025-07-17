Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2876A1DB127
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752783594; cv=none; b=lYW7azd+OIkKuixBvffXGL1rWifsN37Ta35K8HTgA1GAv2sm7muNSA6Nv/xDG80CUzS35Atlfc5ju4K+7RurVPuGkAxwd2OBEOS3QTw37JAeXl1zdnrQ2EeP9YDW7oughfRa6aKZuQJNK0rGwLMnANtIwwuR1XXJ6OELRPSQUJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752783594; c=relaxed/simple;
	bh=vSl56QCSo6cSSdSiYqj2z9Pps5gO+dLIgsfzCiz+F54=;
	h=To:Subject:From:Message-Id:Date; b=K9ggP86qIBgFtzSwR8fZSDXMjyXihZsg9iPDaKo7oW5rBXjj28eFsDaoOzRuwRHyXBRfP9DNproqlUUJPrw4iHV3NU/W7zRxUhagmtdAQweo52vDBOcHWQ37F3p8VI1iyyVip8UQrreR6/vz5grSZv8ht77fK9BmGxNpgcDLjD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrF02zkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrF02zkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A613DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752783593;
	bh=vSl56QCSo6cSSdSiYqj2z9Pps5gO+dLIgsfzCiz+F54=;
	h=To:Subject:From:Date:From;
	b=mrF02zkP+scSGdO+G7dCB6nmqjOwpqrl99PshruZfrmXDiH1UTTLi178ObSgQKaLz
	 vlgjorF1Ushch44Ui0RKQp2CALXlppT2O/BnV0WQ+LJjGMslex1MEE+xp7OL44njiN
	 qF4eH+2fNbpToVEyoRiN+oPUXQatOj7bwD19uH3C2Qo2mX5asGjy3iyvoYUo4IhpF7
	 81jvwTAyvG7ZpyRSEzTwtkLvhDYpU/SKHDnMHI10m7aATj2OJq9cc4CjiaaPTqdamP
	 n0T/sL7DDy5oIJrrlt/Y3Dy15M8/uJiyCr6ou9ufIliyv8/Grmr0sBQKZUlKmfprSF
	 3WNnDU+3MEryA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF40C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175278359358.22910.14606853828317866855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ce6e3d03ca9be3fb88a4df94472a97886f0a863db0d8f016bfcd820198636f1
Date: Thu, 17 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752783593
