Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAA92771B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782565114; cv=none; b=Qdv5olE9wabjpRYf43O7AU25UMpEwYP6KXOPlKE0t4z8FRerCJf/Ly9XM3LY+sXvb+U616rqV43kL/UyErte6wbsKg8hvW8IiHpVLgN5pekvy5rJhuaEuUbgVqg/Lw9XMqSb4aTqp6SZ0onFJ/3KPxnXNVfQ+clrlfKEZbDOg6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782565114; c=relaxed/simple;
	bh=dA0jlKOuGLUM8oDF2u95EsLwE7gZ8oRk56F3l7L2e7U=;
	h=To:Subject:From:Message-Id:Date; b=cFhb7vkUHc2fZEJAnN6H78FULYfpir71m20UwcpqG101D36MWCOLln1WylYFIou6Fmr2IuqSZo8VikdDCfP7lVvrJxVPIrqUUpEHtJC6xzlee/WHtGhN7pUvYE1p+QpOHLmQzR85fD3O1GjkkDzf9ykpacgBdP57vY8ERhR9gxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgw8N3ql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgw8N3ql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDADC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782565113;
	bh=dA0jlKOuGLUM8oDF2u95EsLwE7gZ8oRk56F3l7L2e7U=;
	h=To:Subject:From:Date:From;
	b=sgw8N3ql/Ck+hZOSdlJu6PMbvNnFcgRqDAUuYkpDG77ZiP3qv8zZM0JSN6DubPkwu
	 4DHYyYMpsW6+1WVhoNTzWlBSZae+D7sgR1s3VJ66pTNkQUrXrFwGDBzzI5oE/d+ILy
	 dAD6xRo1Yj57ymDpG0E0coeyT1913SgNG+bLZaGUlzvmi9awDKWMD49ZolCkoOTrZG
	 wu1SR4urN8e05CPo2hxpEqqVNKxufwqmQxdnr0lc83uaUy0RLMzAQfMjPVXfu7o2Ou
	 CbA948px4mBr31YyX/LwveSnKSOFoKeeVIzdXYVpFWxZ607u1NuCyuMr4L7XUWys+g
	 RskGPpl2JT4Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F41C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256511369.13240.13450621726885161397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a55cfabb7bfd02847959a7a12a13858b60fbc7672db484af08715f0c0737c1
Date: Sat, 27 Jun 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782565113
