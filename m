Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3577C625
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745453996; cv=none; b=pRgFtKbQEwZcCMMQDbwbHX6ONQl5iXAxoZlw0ZDaF/s7ARVaPSB7fUV87mSxr3RAlE7xIiux0P8poYxYpT+SmPC1BL8dzlUZk1/9v6udnOwP1/pFDZ+FR5IkguBGHopA1297dKI9Lu/6MxPJSHMTkjQOBFtuuTTJ2t5UjBXpBME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745453996; c=relaxed/simple;
	bh=QvcA1NZ5jUWy2FdTllHxgbxnvxYnGrBSUhjNpC7089w=;
	h=To:Subject:From:Message-Id:Date; b=Y0a5E3yTQPr9rML2IVFX0XM4RIHmQV3PxI0G/27++yfF5N0MeEYyE0tY9CY5MAuqwCCEh0FCNAChW9YD61rDqCMPbwcU8EXYswAaxZeHq0Wb+jhZHo8ICfCVKYlRJCJtKdAv08IEPQJ5cUeyVggmpOf32CRa/msaHtqZfmpnG5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZsiDydki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsiDydki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E5BC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745453993;
	bh=QvcA1NZ5jUWy2FdTllHxgbxnvxYnGrBSUhjNpC7089w=;
	h=To:Subject:From:Date:From;
	b=ZsiDydki1VBEvrPf/iX4SGJf913nGRODoVNrfPTcQ7UfmpVZuaKTlV45zJqxrHQ+s
	 h2//Yzp4hs3WIROLOS9NEsHG6LUlOis/NViqDA1figsXRhoitAlh9aVEKQl+SC4/tI
	 8NX/7FWofu0tjRnKPsJ5PRTqcfhQTnLNjEORAe4eMUwgQaNWLkxpMA8KxBtQWQBLC1
	 9tIHyWS1k26jxM4kqRMNEpr2zAktGnAibimWyfgIdPXgN3lhZ2qru9mXZ2BjK8kf0D
	 wmM9h18XR+c5UeE6Z+k5uBVb+452qPCZuakXA9rsvXknPNlKomVq6RUY/If9j2S267
	 SbnVRZe6PQubQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91327C369CB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174545399357.28590.9961173248468878002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79eff9fe7569f2fbfd92fc0cc7eb973612ba3dc146a09714f3d8d276c62db3c2
Date: Thu, 24 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745453993
