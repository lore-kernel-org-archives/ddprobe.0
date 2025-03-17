Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516A52147F5
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742198394; cv=none; b=r5JsLmWNyIhUmQK+5yML3CoX6pdRzefu0jrvea6E4lAdJ6rj3GedxC+rJFeXQLupu9fSLuTpCld2dxxWueWSZNnPrY5iGiUy56EtKy0bKu5tkTipRnOc0KBzP2/yEAFV/GmBUb4q0KDe6CLStt1bm2HhuJye1xhXOopRDLrcLR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742198394; c=relaxed/simple;
	bh=uQUw4zU2gAtsf8ylOPpmr2uTq2puOzWE2UQAqxAaWuM=;
	h=To:Subject:From:Message-Id:Date; b=CDtM9tGfB0ypjGchp+OBq9Z36qp91KNTeCsMJoU4DPP1F6oRTMUKcAbRwAi172pP1o98rikPAtWSREoNzYjbVZkOYIZ5HvSLtfEHaZrDgYpnRqTbRCkCO65VqtjCrJ2ouKm92xOxl5IojPfvMDm4TIpv1Aj+fmBZSiHdlQv9N2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/irc8uU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/irc8uU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A955DC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742198393;
	bh=uQUw4zU2gAtsf8ylOPpmr2uTq2puOzWE2UQAqxAaWuM=;
	h=To:Subject:From:Date:From;
	b=p/irc8uUUHdtwtU+2U+GMjtWSPOZ7NpCpWBmPuAJTYq7EpEP9+wY4TIGhknqtJ2Vs
	 DqvrDADWeMtbc0miQ7/SwaWQYc2ZUSIrcwDGt89FoJVV2KYs1xgB+ERmowOI+EzY1Z
	 vi8YjiPmBlQqXOWtdsL8RzI1GRiQFTczlq5uHRj4XLx7nAQc9lp5wbdkX9FtyDeiCu
	 s6TC5++w3bnnnwoHP0tAWKjhfzes1N2ebuNqrJaFWf+pEOxIu59x5Bg6PcD23Ix3x+
	 rNVw5sklE/Eb6UrJnN7fJzmCRHnCbaIiEZKT75flX40tp9p3FOQ286T7788GSQYoI1
	 tWVGWtgpNH3Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96623C35FF3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174219839360.5730.1042765194315335160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8317b04c4b00c1ff057607cbcfc1be05a161ba65acdf0ea47776379d09ac9b27
Date: Mon, 17 Mar 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742198393
