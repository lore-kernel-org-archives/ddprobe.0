Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAA34F96CB
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790959834; cv=none; b=UcqpOyHyBOMlFqN5NV2Gh3mxDcAXFy7mtpI+lJeQ6vU7NvjYLYFhuOWm8wUHH2ktIyqwlPPCMVSDiiMSwLS862zxjgQQ6NHkRL7f4mqUxpmizW81htEieA5fNQ+vydJioB886tK98wlnIhGfqy985OqnkuAphPm4wTPbGeEru5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790959834; c=relaxed/simple;
	bh=+EX2qjPXu4VsxYfqPsDgjkuqXmboifzzEeje1+XalFE=;
	h=To:Subject:From:Message-Id:Date; b=absbP4cUaT5+VCddEOdDI5FiVYhLxMZNjPPFAXW2Nsas3rlCrHj5AgZi2nyRH/Tj2UCXwD5JEWAEMcA7kIF3MSlWyYXHzC0J9LKPItHRFNlkMZ1raauikjaH0UFmzrxl9shwRnLAYKvRU8A7hR7Oy8jxoNKktgteMc1DkmhUkek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhO5eUPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhO5eUPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA683C4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790959833;
	bh=+EX2qjPXu4VsxYfqPsDgjkuqXmboifzzEeje1+XalFE=;
	h=To:Subject:From:Date:From;
	b=BhO5eUPPNYvA+QICTANChhgsHlHu0rqBsGPNWyxACumoqV2dBYWSdd8QQFPBXmhYf
	 odfm7lH8eoT1ERkXuisvPDosnLLuP4zsLfyL37ca2tFkULiIFLw7VDc8ubIDnjruOD
	 dkF+ALM7Eadd0sQ+DpADZPWp6hvxFou2UVvtMqRiNfsJTmwKoyUETC3ghlnVkAhCv/
	 XL9aGyeXMNSYI2z/CC0JVZwu78JakqSCtyg19hz/ZPXs/ynkIBZyv4i5u2zAcdHUvB
	 wfqdRh1YF7ZHfu3dsJMEjnMWsrloMSObUaMmvyFj1Y4Y233TGtfIqEymGG37ME7i5u
	 fQ+GCBTCMylww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D6FCA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179095983368.25896.3081902575699152352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbba7be0c9b0d52f8b27d0fcd05af89499812455d72847c37755626bdf8356e
Date: Fri, 02 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790959833
