Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1982D333721
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764097974; cv=none; b=MRU9Dv4e6owX0wwszxC+2NRIJcrrMbVEdV4Y5IpyslXy/bnFxSqZh1YVPU9JwIbkUY2yo7ZC1QZ1YymY4N9n+K/2YG7UOz9bJX15YJ2BBue7UWe56baUqoXpBDIqpXV9rbi0BDG+ldHWjTnmSqyaVkwzjeOSvLZRG8YSZGcOvl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764097974; c=relaxed/simple;
	bh=cBzPDZY+Q1lWd+DW9rSWr0VACb+JaXFNKT24SGT19SA=;
	h=To:Subject:From:Message-Id:Date; b=RKSpzxbSfNg5b7S+tmwx5EdIlYLACcgZakB5voVjs2oKzHhQpxpnpcKYSge25BOtSzjYk9sfGx0nJ0I0Z7MGSDLbOFd57jzirRWgJ+P4xQQsM2akZTih+wxybCrNGLWtDCcm2+Kdi3oDV59BVx68qIinTebuuMa9LSwi14Cv+T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kw8wnlCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kw8wnlCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6612C116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764097973;
	bh=cBzPDZY+Q1lWd+DW9rSWr0VACb+JaXFNKT24SGT19SA=;
	h=To:Subject:From:Date:From;
	b=Kw8wnlCZHyAm+0sRNYbcLGHV6dPm/uAcSFX2rYQTM6knFcZEIVRIeZbYcxjpjHmO0
	 c62vpoT4ji12b0KmPanYnWoH6lp4XIos07fIptSJAYfmOFdvSwzRDXKQC+ZS56mftd
	 pShiDswXXk4SLpvLPpq5NnbTQcceq6yqeoq/uawnHrS2U1vtJ2lV5IexBjCS+qbQn4
	 6E2RzqD4fTUZhV4Kn4+KR8F9o8nCklkhJDWE4yvGBOmMWOhxbqbJTWBGwLDSe+eFMx
	 gHrmNR+RJg/qybhKHDf0P4pIDUaRm9xr6Z8vGz2gLub0oXYGWrZI8BO41XpUI5oDS1
	 tRE27rpkqAV4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F65D0EE14
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409797359.6296.18358449574256762347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9559df8e6bc455c7334e31088ff5aad8669a111363b6b79fb598cdedd0b2bc77
Date: Tue, 25 Nov 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764097973
