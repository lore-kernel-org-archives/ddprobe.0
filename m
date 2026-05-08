Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BE539B97A
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778278654; cv=none; b=b+C0ZcTXmjwWf9bYTgK3XOIg9Tsrq/7ynaTR449wDWEuqeOTJN/5kvjCpt+iS9BWn4JDxMacD3EkTfazPpQXQfLM2w+pt48FMaU9U8zdM0g91ISSCqGvOELp2InBhEmDmh6yEOs9r8CiKd8SBqAuU39TeYTCiagRruVfZSiLYWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778278654; c=relaxed/simple;
	bh=fBjfudU9s3RcON1FZVzsu3tYP3jD4T6nsIi+w+OwB+o=;
	h=To:Subject:From:Message-Id:Date; b=ZvRgUOCLVnmgSko1YsKZnVawfVduitHs1rEhpoCpNdKvhydTfveDlHa8lPtIexMfMOfFubYvzPzGVboi5wmeTCf70NRBTyY166jFe8JRxIZng+8PJ6SeieaZGif4qgaM9eYPTcZ/t+bVDFkKwzFVmcB7iUnU6Jtp9nn0vMpoOiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7VqjBOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7VqjBOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA367C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778278653;
	bh=fBjfudU9s3RcON1FZVzsu3tYP3jD4T6nsIi+w+OwB+o=;
	h=To:Subject:From:Date:From;
	b=Y7VqjBOFgZRyJTimWAzhow4kFvNLbN2eyaIvvLr9vRhChaZzsqn/9EsrNIjMniGV4
	 mBhdnMeYPvssxpopz+LC9mE3ivdkQXd0ryjBz3OStzYJ+itDQT8Ll0RjXu29a+4qju
	 ed4NqHU/IA+v+nF5k4YBIbacyk2jttvehBO+byodaeUW4q4wZ11dEEMfugTn4L6btS
	 lHxSRFvGIh0OYrd49zGalkSrwnpzFusUnFiVQKTWrlPeKJra2f4aUEovPnyWrUHeab
	 Z3rA6UK3h5KLpZ3cNlVJw30pEZ3unjkkvubd45bQ4V4cYi4pkudyjt0pJCdb0sDNYl
	 k/aG7htYTZ50Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E2BCD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177827865372.1361.14504852882798539051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5f1a8c6f2c3c9157983386a14414d8b933c2afaf2f8f8dfaa5a2954d7dbb2f
Date: Fri, 08 May 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778278653
