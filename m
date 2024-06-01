Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185E712E48
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 05:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717220665; cv=none; b=M4uN5eSMgd6hc/c9wvgUQ8ipompPyooJtLFH2HmAH756B1UuULPCDtfxY5Gk9Z44VIp+6t5GFy5O9KHpfavWYt+L52JTcuK4dH+jqBNs5moQJiJ8WRzJY8Eg0A7Qu7Hy0ajCqX0kyIRRtQfeGG3pwTJDYCVGtfplns2RynJW074=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717220665; c=relaxed/simple;
	bh=Kk8eVz6ItePNfippOXCaFxp8ADAbKz/1d8Td7LEI6D4=;
	h=To:Subject:From:Message-Id:Date; b=GtQ8zyL5suwWH+UJFkGPukH2Yq8mQG6M6tDNlSJ8iXk1nfYgnjC5zJa6qrL7qLImERD86f3AhWXNM0nIuUllkxKdJdeLw6gmBfF4aNNqeaq+C6E/6cPiyZMJxcTBMFsX3Uj7+CkL6tyzFK4bFx842Osgd+tSYl2SGhqmGU6oBLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGS2bNYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGS2bNYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2DEBC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 05:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717220664;
	bh=Kk8eVz6ItePNfippOXCaFxp8ADAbKz/1d8Td7LEI6D4=;
	h=To:Subject:From:Date:From;
	b=jGS2bNYKw70b+z/Obo/JekF6x4L/q7AvLZJR73ycWjnXtj1eV6XwkdBoCMv+cRPqr
	 TW73DavRh+eePBYld+w2F8n4M9cSe4qUZc9HyY1oO0cUGvswZ6eRTWbs0e7MEC7OaM
	 Eg20lnNI3u9BZUxVXOEgS7SLU1EK4GIMmGyn3RyLT2953J+/RKlPl+GnJEhIIsR0Ko
	 qvC0GGd/mdxucs0XCyKDIN5719SFwl/smKOxfG8Sdicq/WLy9GCcvi61Pg1lwSw2hF
	 4izrsiBCbbWEieNjIno/b4bKpbCsJd8Ey8NRlUiSVw+ysBTFtwxBKoQ8LGSdM3ofsu
	 idQNYorU3R72g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB697C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 05:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171722066285.4311.11140102410784068287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede85f4c7ef3da813777128e0d96385f814c177768cc50ac3c4d8a597a695afb
Date: Sat, 01 Jun 2024 05:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717220662
