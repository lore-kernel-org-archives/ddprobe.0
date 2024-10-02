Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F7E212F0E
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727893554; cv=none; b=HV+3OnPgythM2osSPIkBm8e6Y4FyesqQStC5xvCbU/SmWJZXTOKx1tGED5+MhhpBNmAFAGbHGBliWs319DB0QVWRqy2QT2IPb6yMKoe5U7Mx+eC8/yA2kZ7TF71yhlC/PYVamvzmIAGt2+j3vE3NTUs0l3fcmo1RR7yBT3/cfzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727893554; c=relaxed/simple;
	bh=PhuRgT/vunszqLWMIdqTz9fwZ4ieV2ZMGxgUs4r6Xvg=;
	h=To:Subject:From:Message-Id:Date; b=FysWA1xWAfgLTIoxJlbyMYGO6EtQWeqA238h/Kxr+pVUPFjn6FiKx/Gfrke3EJd56xJzZH6AvEGbAWG0KkyhQus+drHh74PMrpIktBj6vmZbA+vOtZ9asB36G7E4wNwSJ7ewppu3Te+nyopOTNppnMtdN0aR5NAwJ3s6jt1igpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIt1yND1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIt1yND1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9606C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727893553;
	bh=PhuRgT/vunszqLWMIdqTz9fwZ4ieV2ZMGxgUs4r6Xvg=;
	h=To:Subject:From:Date:From;
	b=OIt1yND1Se4RRYcpXdQAPMtyhmWl/aIjTed3WbggxxZT/uA7a8r3zvzrlhgLmNs60
	 dgaFPqQQUZkhRPg1iHaUjw6gdHj+xOQD7G1r8fiPz7v+p1RAgRoc/P0z534+fU8vUq
	 z2pyTqhemrpaTv4A9kDd4przBd8oUBKEUEPe6aWpsKyGFtuuY7NW3EWZ/7bN6/PpfV
	 ToYU8CZGc717zrPDfywnTxidGLQxPy7dz48D+9w9ByZc33SfCH1oCcxUZLUuxRWfqT
	 JyzgIGRA7Q4F392vL0HsBI5/bLizMUmDZywUfbr/BGRo4AqrjcE7VlgL6QMG34zoXn
	 Mqae7Q4l3lB2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A840DCEB2E2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172789355367.22558.8045200517778308557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df08ab6064f58b3a610998a5f86bc38a44e987a64e9460dd12c229b9e013ef94
Date: Wed, 02 Oct 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727893553
