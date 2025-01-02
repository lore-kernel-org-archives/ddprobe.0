Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DF71B6CFE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735850154; cv=none; b=cGOITdHinCTSTg20B3J8UrWQLX18dwDaswZaIfq/zwHF2abM5xVriebc3OFId9CBoD70xe0LIN2EtjGwNrpbE0R2HtgA07+KsqRHSncpsZmuSq49GAryvP7lDNasliuGY7RmsA8M+IZWTEj5LdCSPm1esFnVT+VU8NLKNDeRoN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735850154; c=relaxed/simple;
	bh=JDnRly5B7S9wmAOYR8cos54RZaDaAl6nRzcZXwdRJDM=;
	h=To:Subject:From:Message-Id:Date; b=aVSUNoloN5e+nlc5eyPXm++Ct+4q2b3mrw0so5eM1eCSCLJGGWRMBHVX6arQH3Y3AuBjHrFPN0GRik07oFDP//7Jo0R28LcJHhcZryZz0fUk1M834LD/8WTjgEDwBcONaV4+ZK5/JK0TUuQehy94XavDssxKq2Fig9esDYmJoKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgUUqTVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgUUqTVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B811DC4CED6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735850153;
	bh=JDnRly5B7S9wmAOYR8cos54RZaDaAl6nRzcZXwdRJDM=;
	h=To:Subject:From:Date:From;
	b=CgUUqTVrO78IGE8z/YgocgFujaxbt6hNdmOPT50CWm7DgL7CobcVP4z2D4u+r4Pxr
	 uXMVlulSGqy0u27hP4wrUBtk2ojWdA5jqj8R96t3KCeBwpkv5A3gHKVG08vVZKdOQR
	 qv5H6bD9oOJPCQc5oYzGZknggD7VhHmc8ZNcAlvP8GbENqv3SxyPB1AmK8CXCuZJaX
	 26lmXrN6iX/Lc5B0Z7DW5zEK14uaLxmy7avHfrRo+7fXyWEbAFdaxNYsR4vwY+17dc
	 gNYK7+G6FpL+jb54f2fKjqPm58/omDP3qnz8TmtT4qpALe2J6HlpoWcUGRMYHjiPN6
	 QUpKRAXeR2ORA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3FA6E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173585015362.683.13468314835472951574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8b832d729cc511d3b48797a4efb447d3e502dcf2c93374d04384e924c3de16
Date: Thu, 02 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735850153
