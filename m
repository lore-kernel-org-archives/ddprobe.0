Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476261AAE28
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781670994; cv=none; b=ATTQWbdLclcRI7xxRvMOdjOKT4abiZY9m+rWbrEMgyAgw3SSp6s2Z8xWKHY8jRZVPvr6NgN0hu5sflFXhUWMIL9fQDDcds03utDE5xPlfyjwVQk5q6UFujdTkNlN2zgmmt9YaB0glNEAfC0ckaKVok9aEBVVBrvjyAs9xeBwVB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781670994; c=relaxed/simple;
	bh=oQoAogYYvsip6m+D3Q2s2F2OI/nPqXfvkC76ZW+zA6c=;
	h=To:Subject:From:Message-Id:Date; b=sKhmVi2oGxpmLJBy6wcUNdFl/IX1pIJoVYsQotj3SWHLXi3AbKRI89h+BfBAIfHpDzuj9Ne+5Q670l4J8T5oEQVe+0d5yx+kUaIq3EOJoJllOlIMNeid3HsTRfREQbBCiPW6i9fyA8IVqS6SK6KkFMDEXNTGEdhlrdzAzFiFpY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AS8FQcCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AS8FQcCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC8DC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781670993;
	bh=oQoAogYYvsip6m+D3Q2s2F2OI/nPqXfvkC76ZW+zA6c=;
	h=To:Subject:From:Date:From;
	b=AS8FQcCymYg6livRbyzxHqwWiqpBUC72R4IR+LCNPwk5yfEVR1fhvSd8pdupRnXpt
	 P1IgslvqRQ+lpJegi0eZZ6FNIQTBxejr2ApMj2FlfngozLYSylQSoI6WjmKisprSS1
	 NTjwAX5fWWYUKDTiOPazrIdvvgU+Pmn2y0vDK2FJ+VozlSRevO1kPIHhSZtJLLE9sU
	 jnXzRylDb9IjvCmEPvErCx/98XWc+vxFWtc8I22GG1XzFhBOXHV1LBtUBBJSCyyO6V
	 629UDaXgG9U8CxfopsdqSDAZxL4ri33DWku2PXxYYGMikk+WVglcp94ScwGV68Bz96
	 m+BijXBr3VZoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2797CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167099372.25551.10303931719664187088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd1a647a9e89341d728436b29ffe84447e0ffb8870b6827ec89a950a64b1d2c4
Date: Wed, 17 Jun 2026 04:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781670993
