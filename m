Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2024929B216
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774305294; cv=none; b=evM6EVXUNtWU3tbf/czSVk9znwiWXtagWCRbRplwKqD3CUL1ZMnLVHQ6pSEmepnLWR7McQ7lB1EBFbENTQcwKJ4LYdzF/pXciDSJlZV4X9sQMYY9C9OrR3TFq0F4Kz71yH/qAT13Q6a3fFzDMV3Tl4P0X7LuNbAa2nB/Q21IBRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774305294; c=relaxed/simple;
	bh=HgqkBkgsT7lAtgAzS7k9musDpv2AOoP9FEPpTpYtxXc=;
	h=To:Subject:From:Message-Id:Date; b=OGtO1hggoOJE+XMPJFJpZKbvDQVidTe9jHWbacpa+gmlzj3pRVX46yC9fhBkw3HCTyUfLItBeaMJIFUzfS3Tri5j1lI9J2B/9pAAqJmrChuzk7diwClOljWZCL6eLIC/TngPTxWEb43ej3vHZv/GRofPGGGUWhz2hyvOG7lybMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vP0qxMIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vP0qxMIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B485CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774305293;
	bh=HgqkBkgsT7lAtgAzS7k9musDpv2AOoP9FEPpTpYtxXc=;
	h=To:Subject:From:Date:From;
	b=vP0qxMIeboJ9cO4iWZCtzYX2e+itNqmZIMKsSd9fXGMT3OvTQI3YEJd9d0gdpEzZ9
	 J0bPiRsFIKOCVH1lFXrz66vtJziToYNCJQ8Nm63Mu2Q7ezlXz9UD8Fz9Tc1XPQOwar
	 xLOkTutQFa6hgke+XJsjnMfN1QvCr9yra8rIq5LbWpsAXM4+UK+FbA9hOZZCSiBRcG
	 0bPDWxiWWL/Zv2SAmcuyaz7hVqpM+Pm+IlNdvkvYY3N4TE32wmmtdVQkMU4ivbWjMX
	 zELIdedGyZjuptwXn700g0hRTnc6nCwG2MgZrveQTMdY7w2IZDq0K142gZ1MtJqNj5
	 BxQ+blJfRYjxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D91D58CBF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177430529363.28155.5497692733841734928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f962f94bc98753ab1c1c49ebc1bb981a8995cc228ff62a7e156c050c37e62a1b
Date: Mon, 23 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774305293
