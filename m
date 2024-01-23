Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4E05C908
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706010497; cv=none; b=mpQIpMXc40IZwBisHQvasUultiV8gWnzCacsplgz+5viSkONrrpXkevLPTmcpu/ziLGH7GWA0wK7ln4EarTBGSrgcvUzXOHrDiQ3g6vnTCTDxulozU1UJmqk39livMZ+lFSW/vJ7JUijgiZd6TuLDMKEHLh44tWsdx8lGUG0g3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706010497; c=relaxed/simple;
	bh=buqVYiur/YsJNbWcRr+pq6afp6IF5jK5HNAo0/HO1js=;
	h=To:Subject:From:Message-Id:Date; b=HxByjW3er4Ly7m3itNCMmg0C1IeoNtdSFX5eORLuWoQLPrfLtZGb3fSYfYnXntlQtEb2S3WleJAVlSyU8Qjlq4k17IUqUS8HLvSnnNPfZlLSsItrHavb8sVBP1JhFNWRyVga/w5m3giSOLN/BycEX3U8MQkRZUXEokF4nXgqBP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGSBxGKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGSBxGKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 719E9C433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706010496;
	bh=buqVYiur/YsJNbWcRr+pq6afp6IF5jK5HNAo0/HO1js=;
	h=To:Subject:From:Date:From;
	b=fGSBxGKtKnQDo6x2Lu0eajYbiosZZH7RYOSQFvho/by3Afe4On8Z+f8WEeRgMNSFs
	 LrzuYPUYjHTTz5/Ii7XYsdKEHGRim88VtTVj2tyQn2SLqZue0SN+N19L0C/VqiwPhm
	 ltKYcodVxbkrIRcg3ethT8xAueszU+u2gOTmX1ZoeMtydOWpAjBz1iY4M5eb7hkmA+
	 /fjz16kWU6ApFq6Cyyc/Tf1ISW6fS8i9B2P1hAKAT4NPbyOyk7PYqoJGV4IOawIGai
	 hRd07QZFOgz5meWsp6Yu9I2z6xVG7rJHr/P94e7MNA5Im/ve+e7HRfXlSZt9/QBQGN
	 lxLOZ/H78QL8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AE7EC47DDB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170601049636.11056.4319816365651660220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3186b8b46cac4ad121c45761e7fa7fda52290fd1b9a2d2aa24fed3181258ed98
Date: Tue, 23 Jan 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706010496
