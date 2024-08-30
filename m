Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283A914882D
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 19:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725045355; cv=none; b=d+44HYx9Fas40/njq2Yy7Dh4lZ8m9dTKuGoqxY2EmDpmUKODHrMVFk8qwj7m7+Eh7/aDhuVMTAG+o9czVHmtwlW/96cRJhXTZZp9hjMJpu40NygX36tmbyy9Iso3xEP69uTWObYF17zSaDX/fvrWmR725w9hpb0eS0QbyvXWh0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725045355; c=relaxed/simple;
	bh=pKN4cBsBzMx2a9mW4q0df04ajMWU30FEW37U1yhW9J0=;
	h=To:Subject:From:Message-Id:Date; b=eUcdeVO02ao8ePJPn/gidCBAroZtL3yLANlqIaRYLpMXDxSxSaFV1hPYZxwod6gIaXxr1dxoO5Kqm+umHuGDMUV355j6835SUZD1cXFuzH5LzLR0745I/0LD06hsF46BwCaZbCPoAnEwQ5AisaMWJcDppgFcVbsWYEbJ8ewfvZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqlpfGNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqlpfGNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C9EC4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725045354;
	bh=pKN4cBsBzMx2a9mW4q0df04ajMWU30FEW37U1yhW9J0=;
	h=To:Subject:From:Date:From;
	b=KqlpfGNUglGXYR7XkupqQOsaHncJVIdARFXwtonxlsLtLbLJP8FDqPVhgGRjSpB2V
	 OVf9vbmCwj91Afb7UooCW3P7a9KglWS1cqCVc+Y2A6iT0tYvGcXVovVm4wCDUhKH61
	 0LIyPrs0uiub4zOBn4lNnSaCtXTOKtK7KAnY5FhD3EZA6TDcCzF5ISKtW+RbtZm8Wq
	 RXyVo8z1UKfzksV1EXR8aA92mRwj/QbWsXzpEJ1qkyXt6vYrl63I6Z6ezBJ8kcrP1W
	 nKyuULgXz0QMjq01RafNZ9kLX+wae0Gn639ItLcCyLzpALRZvcsFerwn8Ik4mUrXp7
	 ZuReeRVHcwt4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CECCA0FE8
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172504535359.13653.3275338699785745277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317454c410268371bfe65ffa2e90d866a12c93ef8d44a90a27d57149c3c743f9
Date: Fri, 30 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725045353
