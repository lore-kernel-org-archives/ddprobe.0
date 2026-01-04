Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3822E7F25
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767567234; cv=none; b=Fmh5S2BFWnxlmpFWxzt5cO/NVFkeO4bd/S51OL1zdw+IhdIxD3wud4ut935iRjk7hJJqTXHold8FwylRj9Lw8JgNqqt/vvCS1HL4UHz5/El4WGgoQtCxQitA0cwO0c05pXvMBPqlA3h0hlOvFB2pE2fl/4ZN9z5yODI/IsVGHfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767567234; c=relaxed/simple;
	bh=YcEzsfuAJO06fDT/65g4143BpH8o0YJf4irV0JwmPMA=;
	h=To:Subject:From:Message-Id:Date; b=nGxZ7JqNoo5bXmwER1zHDE7CzGQFhGK2gp30xhRKUz4SxijHOu2G9r2xcp74bWK0y0PiaaCFfGaCfYvf+vAm96daMCwwAsqfvKqNZ/laeEabx/bWlY4ICe6yh/j6QHm0EuRepBugCaOCDlB4ne5Z2WUHmTUQ5HNQMngMnJQz8vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5Dni7B4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5Dni7B4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D67C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767567233;
	bh=YcEzsfuAJO06fDT/65g4143BpH8o0YJf4irV0JwmPMA=;
	h=To:Subject:From:Date:From;
	b=q5Dni7B456xTne8LFpAe6fsZBRVQBmdgEOY6T/A6A6wI/8bvKe4jlP1CPMfMoYbue
	 IbSZgrLgJN6+wB451dVQozqqQIqmrIXKfD/qm83slv5cJEDGfb0YmqeGd4hUzpcfl7
	 bHHIVTtzzz6VCo8sTo/UXRYH+ORthKkSEoZ2dkxjzX9WmFHDUjggnPJnJjiRqozZSQ
	 TOsN5qYnBtvlxFtc/BpX5inGnF6qgF5JjX2uzKO1nBnArJe0ItHdZHxrDMJVGDk2WA
	 Src7talZrPKCrz7gYHTTseavmaef0Vci0uTbchuyVh8KERi+aa/LQG8oaeK/AfbwOk
	 9hgJDuWHh/Sig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94795C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756723357.28200.15604399369653943241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84e3d50ba894ee25e220c96e9d19e951e475069576eb6e73d40581bc17ed7eb5
Date: Sun, 04 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767567233
