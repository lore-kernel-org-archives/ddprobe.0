Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30FD271A69
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747957193; cv=none; b=pV/ygAljnEasE5VYId3SX10G26NkZpbN8X9afpYqT4XMVG5L6jG4M5U8R5Jf3BhMSgRymCeYPxSi2wlX9QbZj/RQpZ20ghJHTKVYYKoYovOkKRKZpvrZUiW4r0aZ3X/ibCxv3hwbEbao0PKkiRb0lcAFjjnwweezRjjn5s032SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747957193; c=relaxed/simple;
	bh=kY0yCl4sn4KGjg7L+K2D/IbVK0xFZJrQGNLkizTlw9I=;
	h=To:Subject:From:Message-Id:Date; b=DDWe4GbemCiSQ3+DW3ZMBYwvS4M18jHxFr8trukyifleWOJEOOiw1mnoFUFyN71J0OuUFRtohXX8HiuyC9J6wDJeWeqA6RoxaRcX9PAdxodqsbOZFahXE2c4P3a24yH0G9uN41ld4DmnNCG86xAyHIaAKwhfbNj/Uyu98Gf3rjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3OD7DK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3OD7DK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4342C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747957193;
	bh=kY0yCl4sn4KGjg7L+K2D/IbVK0xFZJrQGNLkizTlw9I=;
	h=To:Subject:From:Date:From;
	b=D3OD7DK9GRfM6Pr2TMozEJkqZt9aEUqPx2Oq9aSrJkZBkJTh33S7ehGOu1pktjm/+
	 1vDrXs5f7kcUQrMUqgsiHxygP0QwDMa5xy6bykv8YQOIHbnQ+8qzbtS4l9NIw44pv0
	 pJxxqylPx33OTVJP8QlNtszIJL48uuT7pn5Dib/R39KNyxEMkDZIwdhavdu96U9ttK
	 +zdxpADOhM7Gq977AKSiA2e+ODqPozqYWek+RjYuBiz/nbPeBkFoTJsTP5XV1jVMGq
	 /s9isngO3F0zrkurw4ep1WAYrGzAxCm44lIomVPDboOSnBzxATTCnd68KonfnffeCN
	 q04tfHp5ZwS1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918ACC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174795719357.19321.14926990965626888106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af0f7fe73d6429d2fe8ed9fae839e56ce6efff1f4911031200d6269a4d46818c
Date: Thu, 22 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747957193
