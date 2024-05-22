Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F6044374
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 07:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716362003; cv=none; b=oc3r3DbHJ0QoXbMjTN1IrmYgF20MpmY4wm+9LD6LLBegcHJkjnHM9IzsyYyY1Zow4VQKIdHQq0aY47KBFLbjeNZ+SsUghf/CHVF/Z7xSZNAmPQMwdQDLA49QGV8zWtq7RAnYhTUS7tZpTaLQoxnNruD2jqIxvh2XD/NijD4mmuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716362003; c=relaxed/simple;
	bh=uKYKBvLqyGa0zHv534GegGqRY9C8wMC2eZT51lYsJXo=;
	h=To:Subject:From:Message-Id:Date; b=U4utDXBPlSod5BhzzkyE9qcQ8b9xB3ygYuSAPet7wZIciSSNBKHYLwdYwWCcrs6N4ta8kl4PEhYzujJXuRqeagBPr7nUto3878KjNMGkRpBKDv18HUOjStU1c2Y2gPtLeOSNukH0YP2fhItMJOB4LfqSVC4TqnVbIUUbkCeOWFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1zTACV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1zTACV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6ADC2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 07:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716362002;
	bh=uKYKBvLqyGa0zHv534GegGqRY9C8wMC2eZT51lYsJXo=;
	h=To:Subject:From:Date:From;
	b=X1zTACV4UaL6O1HOjuJBczz7QVnCbsqkbyrPbLlEJV4MC+mK4kLP/zY4RwcdBuSWQ
	 7UxUD/Y9f45G4uBVGxGOEX29h5sK8Pt2G9xdXpfKhaGkUAjHPzu2iPayr5WX4hJ8qD
	 fFzbbuLyHwixNgaNi3DXK5Bn7dHGBOvi6iecw6RyjwFTVck4MoN6W/A5dDY/8LrBlo
	 d71hPCysnObBiIKBvuRrVM1TJfdhzbXG4cdIxxJDTS2wefBVCb/PGVyHYX3p68jQNW
	 l1cD4eKo/7xKvnF76oYaxlbaI0GSYgzTRisn68JchCpbUbLU3GGuTi991eOiy5lQdG
	 QZrqcDI8bwOLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F8FC25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 07:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171636200278.15304.4761570598659699070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf49c98146e3740823e007a8baf7fc450505330bac3180eba2ba1d190a6002a3
Date: Wed, 22 May 2024 07:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716362002
