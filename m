Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9F81CAA78
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766333634; cv=none; b=SpJhqXHQdtdFt0f99RQqIJLcNnaLqFbolvigKPvQaTIuidmplpmSMlRMoi/KO5gRdazojuMkDeEVuzLUrkdu1X48L4q6wrGMsoD0zCLSK2TC60pY2g0T52AznHwVKbwSlmb/ehjIXsmbWjnL9GhQhYrKfqXXEyyo2iVNklbMsKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766333634; c=relaxed/simple;
	bh=Lp3H+lYnfEHJKKR2g84HVeuKt26wn6taX91Iwgb8vYA=;
	h=To:Subject:From:Message-Id:Date; b=tjIjZsXt089NnXk9y0SteQAt+8MOkqPCyzhPwhJ5aCGhUAGa4U52YrGtQEsbNDe3dYvi0xmTbZ16FH7KoFzaZpwqRbSXc64QtiwKHMb3vGwVYCqeQeyByCvpLaK4Nh1m5MmJuNOzePlaypCfjAxzgvXumoz2HpdPxqVaLl7ROyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHSRPQxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHSRPQxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69A1C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766333633;
	bh=Lp3H+lYnfEHJKKR2g84HVeuKt26wn6taX91Iwgb8vYA=;
	h=To:Subject:From:Date:From;
	b=NHSRPQxwbMs0NA1mkzvEI3J5iclYHmXp/G/e6moUjqWpkX2hxt68p7bWK1JvZyGPb
	 +l06jMQB3k8/1VH+nXYlSwr9gbEkiDYLTv8w7WJ5CS8jaBMluDoDU0PzL0kIWW2P+h
	 t81z76E1Yb1b98p8TLGSdTTwZ3Q4VA3T5OAT9RUUkC2TjtwipLy6JSjuAohmcsXwyw
	 8YnMamtgHvgactI0vq74+T/h18I5mBA7rL2Dvi6erj5WDYbIJrmw2Q2L79E7dDV/IY
	 Q4PJ2ctn27Zuva/kdwpqXJJ2ffFfRl0Bo+IeRvRJC3V1RN76YSQJ9Ni5ns6osVMwbG
	 ZcbdFnaWPpP5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954DEE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633363357.7916.5495682040387715292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83817d8ee699ca8d233eb8d82206b0b33dd9a5cfd8fa4a8071045e0b8bfeff63
Date: Sun, 21 Dec 2025 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766333633
