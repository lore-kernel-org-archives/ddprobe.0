Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D10E1DFDA1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783154314; cv=none; b=ZIHkYZb2a1xeUzR6e3Kzm8c/k6UD/kOTvmGKoIBd0ZI0x5qu0zz8JjAwwY2jqjNa+9JN1I21p2QZGfvCSDHb5m4cDwzDr5fKpn4B9+E5vuwgo92PR6Um1SnLwcJqS8TL4dck2FslWHKeEy2ddl+21XOiC9GSYqZgLHTzjcBFHV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783154314; c=relaxed/simple;
	bh=o5x+1Lb4MQnP4rFwmicSUzhqcAxz3CQTO0qvDIaPNeg=;
	h=To:Subject:From:Message-Id:Date; b=X2flM++2rafWnkVo9P5KpXh2voOHRgIF0Gst4U3RfowcSWJ2nsKheUdetwilkr8Al1rlHJR303RQ0YFAbi8fZjM6n0LBMWEFZi0hpdRzgGYfnF2zCRIutvlRLj3MVdVNVxl0nodHsY7eShWG1EQ1EJkKau+CyoACJSz5bNVX7Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEdSYQJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEdSYQJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3881C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783154313;
	bh=o5x+1Lb4MQnP4rFwmicSUzhqcAxz3CQTO0qvDIaPNeg=;
	h=To:Subject:From:Date:From;
	b=lEdSYQJrrxrm1pAIbGGo5p/ZDVzX0mO5Je0jPnU2RZaTHCu8wsoXvLCf8ub5tFjBl
	 Z8KTGaPDjem1XGHxeEdRjJpCcClbHjWO4jnIMYwd4HOrsTWFw2DZdCxzP9ch4vsjeo
	 f4NVe3vO+3CrsoPy0Qxpo0oDX1oGfafY4QHk2VLRJn9oybgUL2nti+bWzpaUmLpmsK
	 ubwEbJvq6MuoDF+32XKMcVZ4FlIEhJohvyEISfwBRXUrJRGhwDY213QoOnCWwFJeqU
	 Ct7iGGjhj3Y+/Y7alLIMvv3OCzy6BZfuthWqNvrDTPjH+4ZX6RrBl9uChKbke2SKgj
	 vdn2HUeLgTzaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0C8C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315431368.20537.10108843900475382984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a07429abd72b12d4611e29d9e0e8dba25d247ffc8e2366a877ebcaad8e8d681
Date: Sat, 04 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783154313
