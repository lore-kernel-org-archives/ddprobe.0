Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36101482E8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762477194; cv=none; b=JDmOMck9l2KCYCshUByW6Rqpg4RzQefD2kPn5qb8Uv+hASkNeI+sLd3TIKCk2EYfqxDfUDmt7ja17ANlD9BmP66kfgFNDKwid1GMRV82UfsiS7ZsWMK76RqNJlbEFmjgluHt8XFl7u3BkgZXP25aKZuYQJkMIYW/AqOC4jaFXjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762477194; c=relaxed/simple;
	bh=m0fIHY7y9YvUl5JsT4K758NpT7fhCooyFvQrUe1AATQ=;
	h=To:Subject:From:Message-Id:Date; b=hnyfUoP/al3Z09AlAlRDhCXMyxHymP4iIiw8V4YfNWhpyW89+/h2G7uIZDRPh7eOcT8CBBY1obv2Lw81QuaPAUjfrZtsePSRLl8nJPA1hpQOMJ/gyFGfwrGKI2VhJ3oweOsjB/LJC4vseFa/1QRxOBHN8ACGK2ClOCXoDpvcuaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNZ8h29K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNZ8h29K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8C4C116C6
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762477193;
	bh=m0fIHY7y9YvUl5JsT4K758NpT7fhCooyFvQrUe1AATQ=;
	h=To:Subject:From:Date:From;
	b=TNZ8h29Kck1JRCarMMxq6/1zVmXH6tPYz1yRXAgsmg77b72Du0EAhkjR9WNCBedCV
	 qv7tLZdSQUbOd+RPsNv2jK4JP9KVZIvltRDcl04LT0k39itPkOTnt0H5kFUOO7vTNA
	 ZzhEKnGGbWym/wiQkf8tnaKQWYns/hLmz5GfTu1l2G42jGtw/qzgqJ1WAVpGIDPt/D
	 QwxtQT2BGnwctL6jacrR6CLwwG5TR8xBjV6VGzYwooMJ3Vehn2Np8Q+IvceEjR+Ur6
	 CM4ASVG+a0AEV8rD2j7N9RbjToUww67+Hw13ZeZrTV0faa1eLC45B3+Q+BiXYfHKih
	 GVXiAb5x/KCdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA4DCCFA1A
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176247719357.3487.5833909431937073365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17081f13b26703ab0f0b67fcd04ca9178f57cc43e7450652e4bc31269e2d4440
Date: Fri, 07 Nov 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762477193
