Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EDE27A934
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749545994; cv=none; b=HD0RFxUcbTU+FV/RPbqSqQQnL+kxxjXva6cmdtQeTi4XrKF29+6GsCg360REFT+IQLDuvfYc3HrXC3GkvAktj5T3xFXAS77Y8Z94umSp8NA4wIGMxAnzEPHbGLCuvWu4M1PvyprX2Qqq9gxtkFozx0cuCm9H2L+zxTzqpLjQ4ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749545994; c=relaxed/simple;
	bh=GsxMILiN6zETGsD64i1RLb+TZVyzrstuAFxbDHciuHI=;
	h=To:Subject:From:Message-Id:Date; b=Lp96H4FXB0h5AVSekpTTlFlzY8bmbSNbMltjM8V71YaEbjVQkahnRUe9homIFSJh+IAjC/KzuUmkOhDioSZigoxLFQsODhPeKS5GXYPZ3tQ0pa2XxQrNEgmMKsvD0Q3nyMbihm5cBn2uA5Qe5WKrtQ9X5RSwF64TnZgblndKfRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V04cwwvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V04cwwvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A284EC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749545993;
	bh=GsxMILiN6zETGsD64i1RLb+TZVyzrstuAFxbDHciuHI=;
	h=To:Subject:From:Date:From;
	b=V04cwwvNDu7gqTtXZRGkYd//GXnsqmDQFUrNrdGZNHt/e9TGzaTSjxExbP5zBje63
	 TLE44qla1DPZ/3cstghngLgi4QWKYUc8KTuvEzMfUsQzpHi59eDLzHc2sAYyL5CmFC
	 npTbhxs/bHjEDNxOCZ3l6Js8mGQKPHr8i4BXCkUbIAQmBnWdHT1pKwVrD5CzkE1KQE
	 oQ7qpjrUgonRAjfG57vbY4k3xx79w8/JQ5+G2hQJL66xVTy33W0hs9qyEQtd+cUAOw
	 8+AvWsgG1HV+PeXSPosqduDzeGjC+wX92I3g4xEYCEMl3HLqp0KeAk1Le4TUHUrqNn
	 PUq6VWUyQLlrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F331C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174954599357.19639.2778410617258031740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3fe95f614cfabd8cdcfc8d4cc8ca17d3a2812ee35f99dfc5e108bfe91eef5fb
Date: Tue, 10 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749545993
