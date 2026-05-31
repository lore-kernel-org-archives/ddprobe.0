Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB5F8248B
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780203274; cv=none; b=h/7LaxLtX8Yb8NLXTVHiGs1793RQD3bnVL8ftKM8rKz77mGDSLeHpAZ+Z0MK/Q9U/Pz5q5KqNV6eDHEXbw1U+lJ5LxrgZKvWJCY71TJlbAajiL79Ncko7A9Mz3ReNRYf0RtFvzEI78bdd8jkcp9Cv9nioYu3UgL76SFjJIJe4A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780203274; c=relaxed/simple;
	bh=9zSDdhafYmhFdJTDORAYdXwtXQQ6bsijP6nl+xra230=;
	h=To:Subject:From:Message-Id:Date; b=KYLLjLIgqIcDB0MEAmSscfc8RnPIiTnQwFn2IFn5JXsR9jy3FVposmJUqjjySNIKQUEruB58CeOAYOMXuzNh+VhKJQvKdxv2HWntk3E4/JJ5T8SuKNWf4mModuZGaaHF+Gz6CgY+EMZ7glqRpyMdDLBpWG3+N2hPal963ZEOjqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chrxUE8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chrxUE8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65B7C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780203273;
	bh=9zSDdhafYmhFdJTDORAYdXwtXQQ6bsijP6nl+xra230=;
	h=To:Subject:From:Date:From;
	b=chrxUE8JM480QRUndVwDxSYz9pfi0xSxR8AiPX6rAkeYW8n+BB0UmCw2qcWQC0R7h
	 4YLZcd8hPQwJ0x74ifrfhNKxfoPmDa+1bNpCg+sUk9OkDs5VSVBnRqNjYZ4hRXt+C/
	 zTWyFE3BDznBnZHFFvz+qvHy1XQpbf7nkI7zF3+WGGc/zowK0WpqGMOw0P6zLiVkF+
	 KiLMDKLy+4QXKv978oFGuRrd8U4VuS4yi7gP6U8Dr7k958LgDVtUVW3mctutZqs62J
	 D9QOEL+ZNea1NY1Mhvq93aqSD1Q0+4ybTQuh8R35JU3WlTt/yObCZPt0c7Z5/PAM0L
	 sH13up79NZA1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE418CD6E51
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020327368.22840.14956422692669343543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54007fe86d6f63a1ae2ab9e680b236a9a9f4e8e96f233f7b259bb7da300dc75a
Date: Sun, 31 May 2026 04:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780203273
