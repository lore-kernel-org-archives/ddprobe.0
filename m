Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22223323E
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758417594; cv=none; b=CHxtBnbCwVYi1wIUgaFvECYulLP6OAUwKClXmoQZoB58wsMTcWOmAHjhIjhL/G8NONlCG5QKb3bjVZW/4j+Gfs576T0xHfi72wP/v5bpaBAqD1ac+CIfYwkkigaNcMFeQqmB1ysPrWByPGWXUfHVN8PiDMP4+DxuH+QpzWzrlnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758417594; c=relaxed/simple;
	bh=Mz94Max2KRzdw+qS61KzhcWULhBhw+yxPwbzm2bHsaI=;
	h=To:Subject:From:Message-Id:Date; b=cBnyJq3Ak1AqX1VFoXFYpxzPmnXQtPZ9juCfPb0HvZntTw5YREEd806uX/CnDJ+WZm9DPF/IgEuuw3uvoazGqaKJ47T0piIiUWOEHx09ikJqGZOCtyEpVIL1CXjVQA1d916uY3tNsdFXsUheTjhq3eYPZu7GAAUm+eZlbnqzvFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Waki3hyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Waki3hyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3295C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758417593;
	bh=Mz94Max2KRzdw+qS61KzhcWULhBhw+yxPwbzm2bHsaI=;
	h=To:Subject:From:Date:From;
	b=Waki3hyHC6XUPLnIb9qDh0O8LYjTLlQ2dv+/SsBpOaXm89B954fFBPtB8p3Hbu0F+
	 x9K7BpkZ6XwVJaZ1eFSBflb95HjURBSRxiK9Dou1fUHVHEoFWAvlQjr5xQfnVlQ4we
	 8RwEgNWzd8OcUrJuk5ssnzwYzE+7EXT3uSHt8kzkdURzQSl0CtY5b7rom25RNyyOCe
	 BR6ymNwM5pJYyt75Xg0B6R7MsHHpbOjtvfdVWZjuMXir83GI43IM6ghQeovU22EUVb
	 gTLCJ79s20/rRJLd31h/Zu7UR4MJiEuBzyF4XbFh9ePfv1NkpEIV7bpc5g83k8nA6M
	 lbshrfILddqvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F40CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841759357.28829.2123686653712375722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a5c4f9ea7f5e23601a970d428235c1ea55116e37ebc5f8ad1914cd873279c4d
Date: Sun, 21 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758417593
