Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC5612CD89
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 10:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715682143; cv=none; b=XV6F+71KzeFBqY8xfVYXw6XTUIg6+CWbOzcVNlDXt/JsOJDXO1FaezfDmxEi8UZtu3FtUlUjI9U3uKQ+/uf7XInvbD74LTxLW4PlQzh1ZNyMao0m+U7jgRDgqitvcRJnR1rWJmDMmNzygd0jtduOmxXeyrvr6lpTkdbquBh4v68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715682143; c=relaxed/simple;
	bh=xqBNUbMBfAjOBR9GGJ93D0Ssj/feZLR738zB6HfrtSc=;
	h=To:Subject:From:Message-Id:Date; b=cAY0qK+yVcAUaJp6ee644M9vHMWuP9hYHbDOJEHOQJkM3srZa+D8bDIT7MMO3xU2lBjWSn6bp2mOYgeOz71l/CNFQjskCCpb4V9BEjQ8uqtzNbYHnaNC89rD3ipL27x5Lg7zm0YjV8LcDL5IdEbQ2w5JyiBa5PwpljTRYtz+mds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgZgAVUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgZgAVUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB46BC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715682142;
	bh=xqBNUbMBfAjOBR9GGJ93D0Ssj/feZLR738zB6HfrtSc=;
	h=To:Subject:From:Date:From;
	b=PgZgAVUxV28Pkx67Pa9ai20o07cy36Q1XN+ruKBP2Wxbieklnb+fuV7APBWUqu+K9
	 cT8EUKzQJ0xWYG9ZR9Zj8F9NLw9agl0gqfdzBU03ggl72CVp9hJa/OEmaV+uw48v4p
	 wUizw49iI3/izpTgUgrrXl/9xIRdxsa59lgSeMkTC3kP5qK/itLUpeFcx43netkX5C
	 j5GK47tFwnalTUAshh/q1Tnebo426r5Zb3UvDnsEwYQy49tyC3vil81Nc2YMLCED0q
	 +xpDrA6HwioJHRPldu5e74UxfmMmO+XEDlJb+X2ij7fusDMXPi10DoFxj0WO/icjZQ
	 En+J3tvn+Rt5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A76C25B7A
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171568214281.5484.7091247174298566517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a27e7927e18e1ea2fd7e543af3bd01205ef8b22d316ea3bd63d506b14f7662
Date: Tue, 14 May 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715682142
