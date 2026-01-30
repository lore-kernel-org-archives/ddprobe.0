Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F6438A9B6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769813034; cv=none; b=euaikT7GOwgnFhgOCMtXsksGQqqroCSJMjInXBAyDXSpE2zuxAGRWrjqWOdipwFKCc3wXATYrCkLB+cfNHsaF6Sa+z0jouVkpi4pdV0MaLt5yQrYDq+OCswVDsuVv58L1KIJhKzQHoR9IDGPqGHCY0n2e1KhtdUo815UxDk10UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769813034; c=relaxed/simple;
	bh=nTm3dKQVmyEcWCgrQGgOVIAiYEPEDgnc4B6xY+gqcuc=;
	h=To:Subject:From:Message-Id:Date; b=plYhw0lWcBWYOjjSdESUtH7f0sEkYCpaU4qve6ot9tIfp02Hm+b1Ozo9ZaFAxMy9OJbrovUtJ/CazAGtLBZLZcZ19a3S0muxYIKLe/y+4MghubNkt5J6RRjIi/Dm6STYw9GfLmANCcTS5DwxLSwoELi60Xc9CH4FeDaGYV4Haec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwoTBY1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwoTBY1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11B2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769813033;
	bh=nTm3dKQVmyEcWCgrQGgOVIAiYEPEDgnc4B6xY+gqcuc=;
	h=To:Subject:From:Date:From;
	b=UwoTBY1kYfn5ogioZw/m03SsG5JigJIBcfhxZ4Nzmr+2tHSE3Mqk568XQboMu8KQY
	 VK+S9VOOHoMaGx2bpdFNo6j0PYwPFXjYRLGEEyRuC13f1WyQFI8WA/MGjL3hoVsQ0c
	 bmqRXGlHZhIcjTAty7jfzPsI6CcNmczYTXGKH8nkGjO52fxeKdik+yJGO77Ojj+zwF
	 t+Ni9pyJ3Q3luhrkWIZ4Grz2Z7+8jQOMPeskyu3MQtjdlhanZRhLLq0vjauA61JR9M
	 G+HJkNWsGpZRyenaGD/uR7y5J/stzhwLxGFVDFpfARabejfZqubFzL9r32Jz1kl3TT
	 sx5lLaWP8HklQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB0E6BF3F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981303357.29838.8937673200350657369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf96b327870076e73a5b51c1b70d44aa543fcb0815edbeb9bba28d5001c6726
Date: Fri, 30 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769813033
