Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F240321275
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758621594; cv=none; b=DGegWmyBrjOqeZNET4+Pn1VV4yyU5tE+P+5zBlr6xM/NtDj/VGnwhlXVSdUAjSaUuGaNrN1+5GvxeVaj8IHLYgZ9QcE3xtD9fIzfstxQjkaujvbRy/SIR+wih9G5YzDSpuDw/HYqDnT/OUM6HtD1yYb2gqOsSkYaQmyMaJdPg+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758621594; c=relaxed/simple;
	bh=urhu+DXgISzIYqpm5Hcf51VZrp04H8pvrCG6XNg75nA=;
	h=To:Subject:From:Message-Id:Date; b=Q4x30opn83zK9+8HUXXPCIg0FKVnU0mzcN8wXZkuJDpm7NfwNLuZgej1Us8btTqiYEdEsdpT+8weJ0THDrrSOahtINPrHzov0t3Z/HhuEwztPdNX1H/4IVO7xdsQVIcMZ1t8J+oxZfr7OoEwJU2rhA0V4GsbUknneoBjbVSS4u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXECfDkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXECfDkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3142C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758621593;
	bh=urhu+DXgISzIYqpm5Hcf51VZrp04H8pvrCG6XNg75nA=;
	h=To:Subject:From:Date:From;
	b=pXECfDkTDpTXLqZIrc82YRU3dVGA/Z5y90iVnoSVV5oEBFyRIF9ylrYtMwWLn0rll
	 kWJ420Gug2NqYSDPLW9J7cgiovbg7RO6YPGMH+RVMgQLQGblqAfJxHrFwmTqRaZXAh
	 Z7YN/rDoa90Q0Q9Y3Gx0PMSFCmrFQK0B1SYAMPXrEMFfPT0PETM8XwLlfcsiKHjn8i
	 ums6AJfJ2LJWlUUPIPNylFAGZAmlwoJ9GSAEpKAXTp6z9qhZIXF3ngUOw/8eMZv5GC
	 lOgIDqZoM4V6Q8SIN2/b8YQuxdX3bXy9YOlmDbAnoj30v/6EcnF+1dDhbUEn16aGBm
	 ynsIQYPanhWug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C97CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862159358.4073.3202093544004785460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe2072811e5e862f7be174f7990cfcaa4ca30e5b0bc4c2f3ad2bb7d488e587e
Date: Tue, 23 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758621593
