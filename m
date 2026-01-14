Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100E83009DA
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768367635; cv=none; b=ABk+Fbx+EVUSA8xgLue5JESPh7ghoHY+GLVFCQD6VW6ArICFaIHIVBmXW7dWmKe6vN2ofwd3YgQSM2f6TMO458l00m/HW7QtpDevGbh2Eowrlu9++NXIwAN/7FuV+t9jsIhtKlXFwA+7eSYi6B7kf8nGsKGlfflKBWpdONcDGT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768367635; c=relaxed/simple;
	bh=k3uXYU0n7qAFIzd7JcSHpVPb+vstBDwJRXpFQgI4kUk=;
	h=To:Subject:From:Message-Id:Date; b=YyZvkozr+9JZs+2n4E9qesJwFHGQbg7YkXc4X8MAb9+oTa+vbQgjkpuc48R/K6FI7A4K/lGiAdxmyHcc9jPBBo4mzmY2gy9vkm2liAFs0JeDl4M5e/yZzlZApFX4DUPU3CNGixdSnyaNEQQGgcTNmA8i2d3kDbSdssfU55w4YZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQ6dVRuI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQ6dVRuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0B9C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768367633;
	bh=k3uXYU0n7qAFIzd7JcSHpVPb+vstBDwJRXpFQgI4kUk=;
	h=To:Subject:From:Date:From;
	b=vQ6dVRuIDcgmI1eM5igHuDqZK6mox1XujIDdYnyX7ApUXrTJTj013/mpt5QIvX4sv
	 pUV6Fc/Kc0gTosAs3TXW6YzdHDh5/LkCHPFAfuC5qJsdeufQnNdM86aDPkGLctJ/lW
	 47ZFGg6k6jOk1ukVsX+XKgs5Dq+OJi6Gel14XgFhh7Ji1QkH+OEpgZV43gpeY6FwIA
	 Sr3cydu263l3ZoVKsfLfPg6IIecdUq9eGV2HdoI4kixApIrvPuZvibfBGbJJrnVvWh
	 yo3FovFq5mRtbTMQ8tYdLSwe0dUch7YXKZd13aoED7rkPeqjfZ+3E75uHsAo1Ubchp
	 UjhJQRH7thKWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDECD31A0E
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176836763357.30384.9286306991414970484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96423cf426537eb6a6e458cf6fb2dfcc64841a4bd95ac24ebdeb3fe2b75540ed
Date: Wed, 14 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768367633
