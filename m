Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E572ECEB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776446854; cv=none; b=Lnu++Vegu9AYO1f9rpwppfpE1mWcXKTVmcxLVG+wYNE43XP8cgh2Ub7dELh4GHoxvEhNU+A0290W8PKp/Soe7tSH4sTE8+jImc9I3gJWWTSmH3EJOP9X4eB159R+H38o5uxo9X9dWaENkGKHqNEN+rJnkWFBXwL+aVn4zYsFljs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776446854; c=relaxed/simple;
	bh=wsb+sIG3/eYoRVy821YLmPTYD4xVjzisuyq51gkeJtg=;
	h=To:Subject:From:Message-Id:Date; b=o7ujRjVaOqd+lQq3eCEwnYDqMNxMfP/d+3NklVYepyQDWEaS8S5d0Yrgwok73jrDO8PPKHTYCDeB/aOYDAmKP1725/UOImsQSpxJkKTzC4zVMsq6dAZUUA55do5dZjaiTlxBC66YNbM7ClDLtvFNWIvwXJJpIsYQEHoRlkEFzW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3vlzKIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3vlzKIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C253EC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776446853;
	bh=wsb+sIG3/eYoRVy821YLmPTYD4xVjzisuyq51gkeJtg=;
	h=To:Subject:From:Date:From;
	b=U3vlzKIxjVPfgrr7Etbs97d4K5zFSQaQCqytAccPuFV7Gj9wQnsgJhmolvSvzfU06
	 CI8S1mK6B65/JM3mkQ8+qb9whSsm8caFZF8IEPp5EO1WnSV5eXan+uD38lx5lUsNMB
	 0RFyBaBjdX2qwb9P0SUrUh/pwUQpUjddaHoH+x6nC/Ex/y30Uk/FLIfEc9kJ+P/vR8
	 APlSynDBOjhyH7vbTI1vVGgrwDZdiY1+Ncq3QL3a+I67fBmF8R1xHH9oBWJu3sMkkb
	 r7ZHOJDQsfV9MXiCjx1nshzyXQm+nJwdKadB/n5yaJSM0CzWubtWaNj2n7IXrzOEir
	 7T0Vi1kh45B+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD6EF8DFF9
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644685368.28067.13869691890157397051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f68a9c4e2a9a234aae109d4c6976d5e62dbba1d769cb861f0e6beacb74393451
Date: Fri, 17 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776446853
