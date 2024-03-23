Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B421DFCE
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711235297; cv=none; b=ti5S8GIDLDVjGpbkZ+fre+FZuJZto5A0KXwdtt9ur7COhn9mdr5Q2EV6l85rSqatlG88GmYr8Sf/JkOhouJn/9DaMlJZ6g3+gFX6ZBOTItNXFYdCAk9NdH6EHVShZFTSZ7YYsCjoD0Xe/2FnmNvFZe8Uo+UDit/kyZ4xoC/9+aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711235297; c=relaxed/simple;
	bh=Zc2jZ9Aab+lccqEKzqdNVrkhmF4mFgjyPQYdOdhhk/M=;
	h=To:Subject:From:Message-Id:Date; b=NVMIvtHm8oIjpnh05GPo8Qi20WxXwr4AsfnUBo1u/LnFmxHeMoEmJvwnfxDufOGs22yUfJwIOcyL8MqoHozbDevXKDxEhQMgrvOz2D0sFKjtSR8T7PulU58opg/YdCnh/ghBZcOU0CxHz7wCu2OVl92y6DnkqJMdag5UETL1pXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vj95oPtn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vj95oPtn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 885C2C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711235296;
	bh=Zc2jZ9Aab+lccqEKzqdNVrkhmF4mFgjyPQYdOdhhk/M=;
	h=To:Subject:From:Date:From;
	b=Vj95oPtnwfZQ/jWoxvi8kjMvWVs7eLhpv9wC+6RR7rKiFzgR31TbEWJMvZYfWwOck
	 oZEejn/wN80sDQZF/ezD7ZtFS+SgpOGYVQXPDdgdx7vU2Z4seP4uMKgEGt8QdwFIFl
	 FR2NU9Byp6W3DJqSBj0JlaI9IAzR+mfhBoCe5v4DNYYS3/80bNH8szttddSugZMNYH
	 qyupnEkBpZ5QHi1xlAp+DnrKsSdVbTfYu1ejqOfDNAWcCnPHVwDsiEIw5xVR9PeXWJ
	 1ycOpLCCA7lH55uE6SchYuHVl+5p69yD0cVDEQYeYgXuSBEHjrtw5dbVN0YxHKK0HX
	 1W93M6fC/HyBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A75C54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171123529641.1887.9456771484213181391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c31e0d46461117271e8e3a0c73d56cdc7665d00563bc2ab62b42ec04bb11276b
Date: Sat, 23 Mar 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711235296
