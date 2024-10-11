Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399F71CDA19
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728631554; cv=none; b=gxwBFY03dXOKsb4VsBhjHbUN6t69rSSnh9EHUjOoN3iCChad4HjAh6XptYnE093qu4JDCh2UWplUjKoFsfouyQqNCMm/knRV+ESFL5Eqf4FanhRRSmhQnci8cx0VGhC+Y9HXzC7AlZW1vGiKFI6iJF3Y2Af6pIjm4Lv0HTqznxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728631554; c=relaxed/simple;
	bh=vqx8N+L1RsuG/zndVaKPdcje05J/FahknEiZyna/2Co=;
	h=To:Subject:From:Message-Id:Date; b=G0E++PAmPc2+iU8FeICQvcH4AF9lzzyJd2c4sQrz6vFbJFEuD0EwvXWZNaNHpjTuPxfE0XsAG9v3gVJeN1pdBUrm7s3sqy04V10zBDy4wDBTs2Fa0ljM4JbBoLZggBGuH0mHlT7dLmM9aAffv0BjDcZGQDv4cROJtMq/vuhfKOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAGwgRP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAGwgRP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D61C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728631553;
	bh=vqx8N+L1RsuG/zndVaKPdcje05J/FahknEiZyna/2Co=;
	h=To:Subject:From:Date:From;
	b=hAGwgRP/pMbUOILFZv+1oHz/Q9/b11M37QvRvcl+95XnZTM2MHxL57QHuYOnMjPvT
	 1AwyyBi9dhGVqhjU9GJIq4sBDvrwwALJO8A9T8wBU0h2qseaqlER66BIGBhi1mNLm+
	 /LnY2RN3bFwfh2+BJ4V2EfhD6ZdUo4aHJ9AsDT4eJKAhkULiy8EPG3rbVl1IFKgCZQ
	 EVIPRvE1fR0r3F7yTVugZQ4GvS7QILYLMx4aBw94LXtaJ0617QjFyg6g7thu5PJSmG
	 itrf00lpEF4IB7xuKui01tP3Y3SXSJWx0bHrRIK+11lJ5mxlez8lB/QjvHld4Q5xN1
	 XL5o4j4Nj60ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E62CEDDBD
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172863155359.7796.2176503130157153574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8667ed23236d220fdd532482092f424ce98d9eb29460f871184624a7d630fa19
Date: Fri, 11 Oct 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728631553
