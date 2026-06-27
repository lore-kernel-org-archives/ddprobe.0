Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E71A2AE8D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782542314; cv=none; b=BJVhITmGlTQI5Ib22EoZd9sY/wAU6BXCDHyJtJT4bO50nwMYpxAOnT6Dk6b+nqZcDkZVKg8UJ3/ze+iFQILuo1760r5xCvi4ddoQgGaZMpNArn2uKGK+0vAY2PLDBFLgImVKWajey5yxPQy0WEejdIKgpUXHQZgRom8djL6jq5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782542314; c=relaxed/simple;
	bh=P1NszTqXvsgHUdfNFt6xXgyhaDpFXN6vMJ95s0hRUyM=;
	h=To:Subject:From:Message-Id:Date; b=UXidn7Y+4G7o38YEx6SZCJB4fQb+rAss/YoQnZO2fO2E2uYcP12oJdxklr1Y5DvKQwRWZVqJyp0C+QO/GxCkOCSMgI1fhj0Yw8N//n+fKietjxIu8elfLbENdUD5t0e/fqJcUtkIVxGXmlNzU6iQDOBNFbNReSKTgq7pydauQCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbZsYsr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbZsYsr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5ED9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782542313;
	bh=P1NszTqXvsgHUdfNFt6xXgyhaDpFXN6vMJ95s0hRUyM=;
	h=To:Subject:From:Date:From;
	b=mbZsYsr08RfOmCHEfBl/tfrT2/lqMmY0wPkTF1gEf8y7mIkF68839bmHc/QueboZf
	 yQm900/4iZ46GrSasY0vlO/HJ1pRR4Do6UlZM8T7D5fDsRtyjeNw3ZFRUSlIC9qE08
	 U6lyD05oo+BfgU+U5UuXI15LdaOOWAdm0+GQ8nqyUcVJB2yq7yWslJr3/EwRApCegR
	 FM9fi11wM2/0UnT+QsMchklkPl09vzcjnithUld1VrBsQfJALplMrkqjYT6yIDLjRR
	 vuwpSZdN7R+++Lv6uVmfx3oth7UemsLeD/A4mAaegbgqm+q6FasU/5gW6l9uI5wEtJ
	 EhIYT+1Tq9hGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD26C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178254231369.21413.4660591724685939153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f74067354b2b729e0d936aa7fd157ba28695b25d460582715c5fd7e6806267
Date: Sat, 27 Jun 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782542313
