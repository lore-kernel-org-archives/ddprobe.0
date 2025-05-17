Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5034777102
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747452594; cv=none; b=XogU+MwaT0tFY+A3oS285KiNnGjVnESXb8dVW+ySHzO7iOXE28g5FOe5tzUkqmsxTECjgUaAtzAzp8V0Y84txTE461YKWf/1LRYu3jw+8MYIo2fLtSIaJJ3OtWolVAksYcyxjeKyq7kHTzciHxW6Vmr/WgZrxsECuUr1VUfGnb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747452594; c=relaxed/simple;
	bh=QI1/wTm+cFn5GJbcwuRVIWB0+kVqrj2X5dRZYZ5taWA=;
	h=To:Subject:From:Message-Id:Date; b=fQolluD9MYqwihGDVByK8kwQrrleKOOCSSKuC2A6o5QK6lLhBPP4R4uYt+3NdqURYJn5OIhmV5CJS94VPoqgoK4KZakV5ZCxpL24QHUOuRLkMdteY+qN9UcR5Vv6s42QJHyYusOs4ZG8aBwgDLwvYRTH32BrhyhdiIj2wtJ7onI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/S7Yo5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/S7Yo5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79EAC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747452593;
	bh=QI1/wTm+cFn5GJbcwuRVIWB0+kVqrj2X5dRZYZ5taWA=;
	h=To:Subject:From:Date:From;
	b=P/S7Yo5/kL8JSsjg4TXmNTuHuSrbyVftTee91YBUkJE83SHEremJZDB3eJisyBJqx
	 6LuBInxamrBjGBQCeEe6M70xjXO4HjVNw8xrezsJlxhUdOvCSy2i6aUiOsjnz6XMpl
	 Hr9sk9oK8gSFw2dGgWxx8hXwaTW4KBWRknGoFt11px5R2f3OCtnaSYcBOMOue1Ho5U
	 m5WDbDpVvhl+sVQ3P9hVmilyczN/kzGOfJibM6bCTeKsHROjkaZMbRCLHeuDX3wN4x
	 N+BLTtmTcYkLlIrwF2ks+LlEwfFll0ylsix2Ol3QWE9jU1dmYRd4U486RXym2jicUC
	 c+QnDx2T6qm8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D5EC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745259360.11443.14878781242944115371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4c47481b9d6ce94f902a938d703dae7adc3402dfdd92360104efa2e543710d
Date: Sat, 17 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747452593
