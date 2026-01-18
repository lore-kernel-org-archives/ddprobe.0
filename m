Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B13E19004A
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768726434; cv=none; b=f5bELtza0FT/5l1gWs17v+2QK77hvKFUhXKHapQyJTa6Lazee/2EU9IIqCHFAjraM/Q+vDFSnXTzXKHQfsm1WMrIz4efo+L6e6nk0DZHwgkg+OgqW4yLmrmM0g/vCmv+/aUEZFqhWw+OHhmG+Q9PqgxR39JbwBpFMR3hnowlKao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768726434; c=relaxed/simple;
	bh=J6obMk6e5nf2d1JG6tRe5noPbnRYXFx5GT4xnstHLV4=;
	h=To:Subject:From:Message-Id:Date; b=WitiIQonj951Nja8egbbG4aEg4wOcG5QwJPGgIDfyIRKPR62UwPqxJYANIwWewDq6vW2wQf01oNZ9I21zmItbfAQAkfKS8niw8+xMh0oHyWIDxdWiLOzlVnt4SS2gLkDgvBS/OVvQDaQM/h8zZf1PdUBbkWlSIl5+uNfRQRFOio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DylWQbLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DylWQbLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23DFC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768726433;
	bh=J6obMk6e5nf2d1JG6tRe5noPbnRYXFx5GT4xnstHLV4=;
	h=To:Subject:From:Date:From;
	b=DylWQbLHZ8WlnWQ3DOLVHQJrUALDsJbY0FQGdQIluTRlGq2jHMAyZv4O6SHucYGxz
	 WwezkxZ9FATiCqIP7XSc/TCqEW0NMSb/75/AFJuJ1A2hIDzJDE6tsjqcfCy7eLbpOR
	 G8tSLrHi33Le+OoFhPUD8jcyRuUzvwMgjmkpjAosyW5nbC0fRlxL/ZKEskxWjqY0T1
	 XD8TVldXb/BMFNDNk5UhTyxU9SL/PkuflRFlU/zV9nQ7ExCC9jC9ZOve1/znN/HkVl
	 QfuSRF0gj+flpA2v7hTiLigoDjXxCCyOvJt93+tdF+AYgpxmnojgb3IUg9trRyJrFx
	 buEngJSfjbTqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96087D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176872643358.28037.15476403933068679204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d85aa17cc9a0ef3a5a55d3254ed441932a14a472b1ef4fe322bde9fb5c9c4f2
Date: Sun, 18 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768726433
