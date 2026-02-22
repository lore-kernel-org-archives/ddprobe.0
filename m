Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190493A1D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771802694; cv=none; b=mP6zo0wMJvWgOJP5vwp7KVGSwvGiaKQY35VOmW+m5VmeZL1ScoOOYMdWMTaSdsR7vReFw0fhqYogkgXCrPScNWc9Rxf6GESPxmwHg7O0JArRQ+w06yfwsxotpr6CWCOLYNBw//ZTOsKnO5M+VOjjJnZLfRtcr0TYHG0p9hHqZ1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771802694; c=relaxed/simple;
	bh=WITpzzb41PhZQDyD2OQplowPdCKm2yajjSbTrotHbL8=;
	h=To:Subject:From:Message-Id:Date; b=dU2+eayg3+Oausweq6hugeiqjx2U3tsJRDOcZoOx7PyUqeYNb73tnhGWJFAwAoGvX/AU2FodUupUP0goFt0wAMhifR+JFtte4fp+XnKqkeqsFpRcqeXMMH+NWS4buLX9dMfUTjBUtmhylplubqhAqH2qPx0tUqNdcwmSUsZmoMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6Q21A8e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6Q21A8e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6605C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771802693;
	bh=WITpzzb41PhZQDyD2OQplowPdCKm2yajjSbTrotHbL8=;
	h=To:Subject:From:Date:From;
	b=g6Q21A8enGuYzH7DsqzTyyMCP/ha/b8ffM7P8HvHvFVk+TeCH90zXFX0OdXuovUSf
	 7dPdQYVT/Y+jwsU5ZWYEiiPoeotzrNAsyWFA5UgIUD8beq72ztVqbpYLyT0PfmTUln
	 gqoFwTOBT8s4uwLmbYPEHuwbAFLlSV267o8gIpfNBHzPsybuB1Tmy943IRhlIeTb9+
	 PSUEOmNQFsog9pwAE3zCPOaK9Z6RKXXHGEq9dHtskFT+6RJ8zgP/3LdIlhHNCWQl69
	 5A4UdlLXqBdf03LtdWc3GsJX0uv9JAIg1YBeFfusEzS7HsZSYAQYvTaWsaDmSbPJlt
	 joirBqdhA4VFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ED6C6369E
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180269358.28188.5724440347242903342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4bd7d6e40673d6f072ceb0ea612e408bbdb2aa2e63c237e42f36e51331be40
Date: Sun, 22 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771802693
