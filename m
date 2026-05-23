Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628AA2836E
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779552154; cv=none; b=D0C9DC+xISOYWsyZB41JEd6qIy7oye4fq9AGDqvkID3UV0hAB3yyOfi8++wdlf62+W8iKywxdhq0bEh1G9LqzPoOMDHRKU9PRZ7ysJoA0dnDcqkarZclGKBZ4vdeDMrhaHRvqSjPciW0yKArYmtvOuoSmS6xtwjKLuu1tkqCx/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779552154; c=relaxed/simple;
	bh=FXtYSswX2DpcNAjB/Tuc3hSSvgumFYwX/9p5tGRfiJk=;
	h=To:Subject:From:Message-Id:Date; b=JVukzK8j6GXrQjZW0hPrL8XT8UfvwhKw3CF/TRTLPP3VJqkvKQfL0a825gbHdrDU1vg5xeltHqz+LYykKtawlzOroiOtAsRm6EIdvTKsE44hSRwC0h12Ot4wZVyDdag1OYGGbFFCzapt8Y68qJuKvEZeRX1IO8HJQ9J/lxppF5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9uPSYg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9uPSYg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1407C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779552153;
	bh=FXtYSswX2DpcNAjB/Tuc3hSSvgumFYwX/9p5tGRfiJk=;
	h=To:Subject:From:Date:From;
	b=E9uPSYg0d67CiZC68+bUY/nKtKurB2JtS6ClopPniBeFbaK25EPmMXZt9D5xHSZyz
	 Fyy72SBU04jR2Hhc/tjW8CFA7VQxCJYRQ2ZKQEhBbHWBeAMmve84BwAGrVO/7bvSFo
	 zvn+sWzJ1rWalqxlxI4vvemvsUPW6MrcBEevzAt75ZGPztx8zLLpLmD8w3d1JkbjyR
	 CVqBgCOn1WfWMG4UgeMzOAZHkfbNaXp6VQPmxRPXAyzp60rVV2VBXH+uQdE0HI1fdF
	 svW+fw8VfRKF4XPTRebp94XO1DgTuOKBslri6beCZWZOPzjc24I0NSDKAAY4RK1te9
	 T/KqoBgHNvGjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88C5CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955215368.26528.17760211535215323098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6a1436c4d004f19ca92024e8dc1cb20b4ceac8d5200ba995e07113344f1807
Date: Sat, 23 May 2026 16:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779552153
