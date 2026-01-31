Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AE21A0BE0
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769877234; cv=none; b=NqeZNBAV9ohwuDl4HYiJKgdbJqM1cVojkzSHCQBx4QKOirCMwAMWBICAOSil4ubWlL4Z4jV9dkZpyeojf6rjnk///KkvOP5ciF11oBRCjSOlL+vm9xiX8wlED8jcjdaP6F+YqD5Oe2uGPAKkO9hdZrsAu7B74AjqBPTrQRgHWPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769877234; c=relaxed/simple;
	bh=Etup14a+LsZY9ojAbAT4oVtuKGcj3yEsXELOAUVHjOQ=;
	h=To:Subject:From:Message-Id:Date; b=BskpTVHvEGKBC/nyTzvJbvfQp2O9K6d5oyDdzZBvws8HbDnW95oaRYhh3MAhvvgMYyrYMFpgU6ugW6hsccnwEDAa9QK/g1y1MWnsJvIkEndEc/Ont0AT3YIayOQE5CWfhMzxF0gWrBTBd/mwtFzEB8VCSB5afJNeK31uzmG/E0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hk67p1PZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hk67p1PZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4836C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769877233;
	bh=Etup14a+LsZY9ojAbAT4oVtuKGcj3yEsXELOAUVHjOQ=;
	h=To:Subject:From:Date:From;
	b=hk67p1PZ+UZDNt1Q93BccbnuH+8SkJ9d9pWMFYWEkRo4TifSeoi0O703Jy1XJ0StQ
	 stQ0geiKUyxlCZOVduDNr0NClnOxThaRFbRLaa6J9SB4ISTmidXVUnJvU+L+gvTzLx
	 kgm9YXezQu8lnhYXHGtrH4vNaO/ISuUUTv/yOKofz533Vf+yC483fW59sInz9hDdzs
	 6EjUzb3FfnNpq1JzQQPV/3RO0BXgEEX3aGgZXIPfJuSeLbyhuqS7Smb9P9JHCxl3+S
	 reee7bTRwim33wWd3e07k0W7fmabGez3fFolJYjOiLYF4WA3b2iGQvGfI17VjhN/yZ
	 E8vtDfWM5lLxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92427D61037
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987723357.2447.10060202054833752432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca938289baa110792bde85b65724d43ab63e060f623288f66dafc3716af0495
Date: Sat, 31 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769877233
