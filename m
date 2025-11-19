Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E6732E5B27
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763548914; cv=none; b=NWA3muISkVq9YCrfHZVhT82HjmEuV6TWGIwPYN0m1e6/uy+cZFm1gjugp6aLzw7qi/2zvf3U2CiQci/Fsg2OI84S9zsKt0nMY/Q1i4ZXp63O/TIPwY4JufnjK0X+CqCVOj/NIUZYBRhOrUiov//RV+v7+286CME6tATkQHuYgQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763548914; c=relaxed/simple;
	bh=7KGIvGO8b78Abq9H4k6g2+36leFqry3JtGqYPU68TF0=;
	h=To:Subject:From:Message-Id:Date; b=kWltCJSlrX/01r/3sQaUE3iau+KUH89GROV5IH8q7heajXsPoPDHcOXAEPWiqp/ahNe7YuAJWMm5z7ECMQF1I/xCSoYr/0CLA0Bn2+FS2QnwX1ppqn4fVU2MHQwm2izVLr4aCzq4Q7gdoLTOVg2iUYCw2BfJ6wlET8tJNZHeUuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAMiuQDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAMiuQDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2334EC2BC87
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763548914;
	bh=7KGIvGO8b78Abq9H4k6g2+36leFqry3JtGqYPU68TF0=;
	h=To:Subject:From:Date:From;
	b=pAMiuQDL9aQ6kchp8uN9FNxRy7QcFOkmf6InzmOSCjSw+DkJrxr5mKyXHUb5/SbVQ
	 4T9o2dj+1LeJ7pFY3aKF5IlvguQ9WLoeKIi5btLrn7FCm9U8icZivfncCa3mEvOTXP
	 WPHDAjB9cAfSyJx6oKr37SjdUzi8XhdIBNQJUPkJHnXJrNz0tAzFHCAtjhJnP5fZZV
	 Ppbk3fXmLhgjWHdJaNGXSGw8XBQrDdylDptvBk8OvR1DTu6hWQW3ElihqmK/EqBziT
	 twkJ9Zq0UucJOwPJj8BlX0GiQyckRr0ikNfjpTMDwlDyQnLFQSU5BFiQ42jspBvcVo
	 Rol0igHOCjq4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9345CCF3185
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176354891359.11586.12551930365138827643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221e706e1228e1d488d29c96579a59a223fc8deacd0efe2f554b3ebd38579cd0
Date: Wed, 19 Nov 2025 10:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763548913
