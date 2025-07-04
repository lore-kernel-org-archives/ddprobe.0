Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234334501A
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751644194; cv=none; b=iLCHlrpHshauHN76P2tv8vHKKGSL1F+m2pxe7iI8hJGlMJxHUdgOEnYGFHwRVBFy7c6Hlp4+PxMjBGBS05Wl7dUkqjo9gXHLAyBLPMzJCFu88m9FDtI8GFwYV/a24D26vck0y9til6XORRjmFmQKHrxICumf7pUUupW8+xaf52A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751644194; c=relaxed/simple;
	bh=udPDj8kV2s84sewxQGxepN/uZPKfCP72yPQjgVDIJko=;
	h=To:Subject:From:Message-Id:Date; b=H1HyHPuIbpZlZuCz0oYSi+7tJELKrulkMdoHKNePmlEXI0JN3kYjdQegCuoVH7UUB4YeDMA14B0dPMgTcdfEOTJYwFBv0gfyUrgyAKzjSlMK4PMvfp8aDyRU9gpvWHX0SIrNcQ5nfHMs5hwlBXKKNlVYqzFJSuvKEw7zzO38OYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtaGqWlE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtaGqWlE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E796C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751644193;
	bh=udPDj8kV2s84sewxQGxepN/uZPKfCP72yPQjgVDIJko=;
	h=To:Subject:From:Date:From;
	b=MtaGqWlEAfea2OCuVc1eEgUvbJ0VcvUYnK0OUdPUrNNxTgekXg7eGlDQnHiZGzKpX
	 407J1BJke89BgSOtiwV8QI16ZS+mEVKPiZ7rNdkNfUOpKnbNVlh4S2AylK3OBTw6TH
	 WbH0vE0KdXQlZBbjSngcEzrHAVhRFBG3uUDCDoLBwSIZ16/y28qijsCebEic5VHorD
	 /P/+dQCsXbptUo+BYfWeR15J/t2dLU0e2/fUnJlWL2+Y07YU7em8aIAqdIxBbGFRZs
	 TdgyYmBnLMq5gE0BzcVazMirZbeRp9OTAM2IrjMBvdkCDMAbDAVR1mRlKeDN2HKDAC
	 J2EdlrsPZ5wVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F7C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175164419357.9798.17433442817268196505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 366ed7242c747b3843d53425f42cd7851e4d24bd208078cceefe1a0f8a5bc620
Date: Fri, 04 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751644193
