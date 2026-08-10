Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6AB24A067
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786334434; cv=none; b=bW2H2kzhITwBd/vSGqOzOAwYfn9I9tHKWveH2Fg1ID774rl3zSnJPW6T3Y5A+RKALlNJ6JLq22LXtiw9ib0Iwnq8ZAZTmXYrCuZt54XqqT2DnChnYJ6k6qaR8KONns6eoVtZ/9BI/ex4eRm/OUw6UCKVp0EEP/5XThezpPxFB68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786334434; c=relaxed/simple;
	bh=ob9tPXmVsomC2LHRItbX2SIJUCDiK4fwHvp7XuYWenQ=;
	h=To:Subject:From:Message-Id:Date; b=OjbQ2+fhWLuagQJvyH6eueNI/IhRM20VULubVAwIYSqKkc7GFf90HA13K6hZT34awR2lPkotIMnZSkhTRKeNsJOWcX6H4pKvaXqCPOSuAiddz/0q3Gen+JvOg3XR6fxipiJFFuhElM2H0xWMHa1HM7EbS+1updhlX5hLSIG85kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UR/+WEls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UR/+WEls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D853FC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786334433;
	bh=ob9tPXmVsomC2LHRItbX2SIJUCDiK4fwHvp7XuYWenQ=;
	h=To:Subject:From:Date:From;
	b=UR/+WElsDtW4NhKunOwhkzblzNx7WnAqc7L4G/AQGevLAXQ1QH74WzUnyLndkMDqr
	 ki2iV2gWwZoMzEt20Zocjv5Pu/ERJamqvSq34fk6aWeQ7MfPQ0j+w7REr2Ak9XwdND
	 kgHYUq88yXr0aMFl7SpO9tze3nAmnZO1QRHrZgJqEZZoCrWlW5St97K6OYgceqS6QH
	 +29LrCpnGMAviB9M1VHadYD4FghiO+USxAdqunm0EPM8woWUUw4/vAdvFX66VYlH6O
	 i9XfTqwWFnNyETVzeAQdul/7CMiexn+krrPn6bBNnE3Rm2stynh+IgNVsbqufPrDGY
	 2qDqMm9JjSFKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B8BC5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633443372.6277.17260111947422579925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e42c95c7da15ae5994b820c788892d900907d2be277c9ae132204bafed5e713
Date: Mon, 10 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786334433
