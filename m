Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0386F3D7D98
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772038494; cv=none; b=rGYySAn/68+dGctvRbyte4qg1NTqqNpQNYoGgAoSibO8Gazc6LaeJJfW+IXeiOATEIKy3Yz/SbpJgydrloUZ5JCO3kzI1ox8n9f5Aye7Cf7QrZ7m+0Pi6vXb3sS8LE36HeslIUROSHxxW5fVUwrANVJCZjEMnUhxn0Wc1rDKxzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772038494; c=relaxed/simple;
	bh=lFmMQys8+LDB92PFz3rFkRxJW/ejsWxqASeBiINejhc=;
	h=To:Subject:From:Message-Id:Date; b=afd86v2zsbxfDrWE/UFakhCX18vuwW0GVVr25l0hoX0rusbh43UbIMQjJiUyUIe1JgKp9j9pkQ3VJpwY25IDgzMkVdlZgRy9W5dIMp8uVK0GVkyCZhW03HZ4T0u0PNyKbGcajTg513MYQD3gngEvaANuTzkar2PAA+xVfjNt5Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpBYRCQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpBYRCQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FD0C19421
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772038493;
	bh=lFmMQys8+LDB92PFz3rFkRxJW/ejsWxqASeBiINejhc=;
	h=To:Subject:From:Date:From;
	b=DpBYRCQbAZZ3Fh+Agxs5HkIDvohqLedsVVtV1VJRNlBPMjjjtKGoITnTK6iu3QSWF
	 fc55bBsgjwsboOgwHV3pFL506uADf+emQvhitiWEFEp4yCFb3bQk3Bb2/7a5QYAGvK
	 JXJmA/eA2XJN/52S073chnZm4+fDoBMOlI1AkqudUVGsg5Wz3pYF+y14QG7MHK2Zwr
	 MZ6fW/+55dL1UaitMgWVQKaUsS8hTi/NsIRcJdE62dCHYps8Jg30FxolAirtD3q7ql
	 vUllOiaVX/DnD2yTDCMqCnGmQJMnI+MVHhS50Ip1aKhc/4Gdi9nknkFOpzL1iWg0yh
	 FpJ3TT6lqh6lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915CDFD3775
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177203849358.21674.6850877376192236911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6856762e3ed39e10d8569764dfaa1c1d3acd126f622d9d329cfd907d0c0da141
Date: Wed, 25 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772038493
