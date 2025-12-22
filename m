Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A14230FC00
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766445234; cv=none; b=TQvq9hodvDUsP0g+Z8PWjFriqnGpIfVnhU+SC+fPN8MWZy6NN27763rEEMUv/t7fSgfUvytFlb+DItmQo0TJ69sUlVt6w8E8EDKBl4BNVGjKVt2eFNPfo4RAttzajQG0WhGWEcnpZilt/rPq052U3J1rBmqdgE46r/Cd9KPzkyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766445234; c=relaxed/simple;
	bh=zmDq5Eku7VyCw3L1RLqmLQYjaiESixZR6L9JgB8vtSI=;
	h=To:Subject:From:Message-Id:Date; b=U4tG+jeFJX/ii68rZ+J+dyluZ1IdCEMgJPrrREpkeseYJTfQ3RuEdIGda+2il41H86D8Gza6wB4kA2XYfQkdGEJU8zt3hBe/7fn6I6NykB6LYpvKTzjNU6HYuh6GXqiM66yDyRnUilh+bZXno4gj++T0OeBN1I9Vs9ZW4li0RtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3WFCUww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3WFCUww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE60C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766445233;
	bh=zmDq5Eku7VyCw3L1RLqmLQYjaiESixZR6L9JgB8vtSI=;
	h=To:Subject:From:Date:From;
	b=F3WFCUwwZPe7ca8PKDdaXsLykMf6XwrRaMcFZK3qX/8vljGEXn6bD95CLxNZ3G06L
	 gL6SKq/D+SnN9zPhi58MPKAbouKMiwH9VOPx5Ke2jxEhFmey/fftyW9gVqJa3hz1Zw
	 GTE/jiloAatEHzw43YkITVrQdyn+8am16U0aGRNEARSX4ntQtcpBimDNYkbX3o21Ot
	 2b0LfNFmaKJ+DK1HxqPFFFk42wGZm3ND1kqWRLea9uhf1BI7yozZixpL1EtGDUiD4x
	 +LWl/vDNIGLDT2oceMJobpoBPzSfL68wKe7NxCNGhqYKIsFzriMJ/fTgigi38/duUx
	 CX6XHtehSQTig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC25E6781B
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176644523358.17468.5916837797244759121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea84fc5bac99789e33cbdd8c3b91c16b4b267f01c7d65e0d3233425b3b5e5084
Date: Mon, 22 Dec 2025 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766445233
