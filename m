Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC2A1EFF9B
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753543194; cv=none; b=uj5vi8D+csfWXrNbqhegbvUdu1lNyKszzFoZrZ0Ag4UHXqtiVg3umP3Nxc58Acp/xC5hSLIS54Smo1nlNnsXmgQOAZe9EKMwpRIAWAcOjnP6k8CXnQmhcl38hwaYed0tnqOTnSEcKDxvDmXEtOWwxXVUhT+7KfZ+3L69B7lU9no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753543194; c=relaxed/simple;
	bh=E2ddLBirDyj2YYuqY1wZQ/BBtpS7uy5DW3uKWk2jkng=;
	h=To:Subject:From:Message-Id:Date; b=Py2Cta3suszOvhGIpGprKvNahzLQOhLutxKo6/k6GViEvlWKZiuTe758CRpmZ6/Nwyldqk9dqP+yub33Q//WmmYoU6pyHWD1d2wPjvToEBev2WvrwmthZUCmSoGlnE9duocTWlrzDs6WjxqfR98nTGNAVm9En2r94EE+yTsMcyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eW8f8ZHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eW8f8ZHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66AEC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753543193;
	bh=E2ddLBirDyj2YYuqY1wZQ/BBtpS7uy5DW3uKWk2jkng=;
	h=To:Subject:From:Date:From;
	b=eW8f8ZHD5MCrdZ/tktTxieF8lWvFBRkTl4XWjZG10IiYV0GOAXwG+lwUoKnobzUkc
	 gRD3bSm8GMcoUt/72Eh6IaKMwsXE44w6hP1SyV1EV+3j5bmTTIkkBXZ9iffrVwpblH
	 9zFmNuwG5YCksnp5DiXmiXK+mUY7xUbqPmMrJndiq7WcNiRPuypFA03p1xPsTdVYaf
	 UIHFVvsWCbN/wO5VgzJK04C+N60Ny8Mo7O6w6+SwJoAxq/jqdQXBApw1+ikcmiAWUO
	 l6myKODpbqEvKJ2rDAunP+DTOhQOyeWdcgJyuGUr/St7l/4N1m1pk+3fF807lSrOsJ
	 i5QwzPIZdXhJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92462C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354319357.2697.14014637181498598659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd8254214332cec82545f0d75d74b7ade5b4e8c70902cb9977d1d9030da351d8
Date: Sat, 26 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753543193
