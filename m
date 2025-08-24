Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9D31F099C
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756065594; cv=none; b=RLC9MGGSKfuGU3r/9sOtIqSc1lSGryOXUiBA+0/gZysJPWWPFjfispq49psHlCt1jL25tiEHjp2W3TE+47nBBNBXZ5HUGKXq9ve8qvB3AQ8HsYfIei7LX4N/JVhE4z9nsXH0/vOM1hhU1YLIJNQ4ngQlRh7aEorHxLk+UwCTEgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756065594; c=relaxed/simple;
	bh=wohM9rZ5xwk9eNmY8j52m1BesOYCVoTEx3YFhGz0oUM=;
	h=To:Subject:From:Message-Id:Date; b=iuD5NW5lYcuppOQ61Ve77qd8MYzOq0WQkDLRdgvq790A2nML5sSZ8V5kyxN+99LPPvyOc5H1U1ow1rknomaErbd1ARPIN9H5l6cdj4Q2SH8D1M/+twEqHyc9Y4WZErcDCjfoXm46feAmIy7By5nsw9Rto21e8/Mm1ATKZtKcCuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+6nwvGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+6nwvGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2348C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756065593;
	bh=wohM9rZ5xwk9eNmY8j52m1BesOYCVoTEx3YFhGz0oUM=;
	h=To:Subject:From:Date:From;
	b=p+6nwvGIF0nUn/aDcC/SApOyURsdtb5gEngmyFZo+JJgN9xzcjPWSqZXqdjPDCOgp
	 w8QmdRI5ZC8qPbKV+/4JyJE6eAo6+JUvyK2ok0iXdPi7KcjXC0hCXo182GrlfLoEEU
	 uySnEiTCkVWFn/+zSEeFOH0O7W96+t67qV+4pP+x1D/Hjydy6ZDn9qXg+/cIK5f7we
	 AMRSBBKg+N7Lo59vUFwOLE2iOuvER/e0Sa9Az2GMkKzrSl06K/sEe/HT6TM0bA18KX
	 Qz/0ymGE1X0TN43yBP7spIS8RmQlukUb3qVJST38QLJuwmRdzDVAx9Y8tnq0VR/JWM
	 iONfnWkInKJMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940AFCA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606559357.3442.7029824777992701481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc6e57dcc8f68ad735538daa2131362cacf107a6127942d7553e0a68fb8b73c
Date: Sun, 24 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756065593
