Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D57619F115
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767282834; cv=none; b=Rd2FW5ppP0zdjeXwGFtYyFG+jh7IjtH9bWhMryL6njgLrT0mDDu7RqOJvN7Nk5qn5EAv/TYieUoHo1BZQHYncehKQxgPjxhEtLS6o1iL88sJbiB4ekaaMdN67HXs43eH6vmsSH/6R4Dh3Dr0CvSQJXa0ze35oXnMcoslI4mFNP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767282834; c=relaxed/simple;
	bh=sQUQdJomR89CGTlJM+/W9mvklcYR/2+vLok9DoNuXmo=;
	h=To:Subject:From:Message-Id:Date; b=e/c0gSajQCw2exxL80/n51BbNUAjb2nTem7Er2Oa7dLHcOxiIqRUHRmEhSbLu5ZfOuY/ahm8HinaOixJ0ovrak9Z5Lr4uOsukeLWbXRW/pl7CMpuWx/wYl3hxrKVL1Y4HGKvOqjzMPMHIRHoYFtatuYCrnIde7bbxkiV7zIMbh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHtl8PSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHtl8PSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE5DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767282833;
	bh=sQUQdJomR89CGTlJM+/W9mvklcYR/2+vLok9DoNuXmo=;
	h=To:Subject:From:Date:From;
	b=CHtl8PSuYeB+C0nng7JoaA7bUWCyVW1GFb7fYb0ivOy3s9QeLWmHyRF4qSvNJu/8W
	 e6zcnpG8SZYY8j2a7xm4TwnWpldRtUpD1tCJ3w/v0uLT6t13EP+WXPREBF5iOpWvXo
	 eHCrIoT0lqz7qShdzW88kroqtsaSfCyi4mkro4qj51xmObadSPHcIYQOofcFJk2OxF
	 LwWBGAAhumPVFxTjMqpgwSOI2StQD0cdO5aMI3XALuHBTVaXh5H9hHrPNfna8u+xjQ
	 IC/jeHChgH3CjxKb108KmKPZoUwbkFz9K1tyKcPrqTAWpqqaj4lSyK1yreGHKKiR80
	 CYTf2lV4JU8cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91075EEB57C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176728283358.20983.3536782546686104947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f8bf300d67941fc287d659c56dbdaadfda9364bf4eaae4ccb7e75109110b87c
Date: Thu, 01 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767282833
