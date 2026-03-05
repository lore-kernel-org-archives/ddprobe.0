Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1540530B53A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772696094; cv=none; b=PW6GQzTNGwEBsdWBOHdn8f2gIvVLhizNZabcaTeEUGY6tTRZhq5qIHkHQJWAd6SUWvb4x1a/VwgRHHrnZgTYKA7/6lm9qa2tbs3KIdQGv+DiTyAXWJiYs3gCu7CnjvhPrHGzO058dUQvua/jaaH68MLK9EfVP1jFCgCvf73Alzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772696094; c=relaxed/simple;
	bh=2i5acThBbWI4+R0MdAeyyWPmK7rTrRGp1+ZJavNLcK0=;
	h=To:Subject:From:Message-Id:Date; b=YEPbzR3RYSYFlIcrV31qvKxs8Tt+RMuKlCqMr59gxDBzeVh83rMALqyte5GimPIgabam/dQe56LYDKXFjR/LsJEFrymhL1G/nXK6YLxYtLioOO42ZIb6KUis9MO/rJVa1dqCO8THHOFgQSpi+lo95OxqN75ONxv3kHwh/FBHoqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgAVT7tF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgAVT7tF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A568FC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772696093;
	bh=2i5acThBbWI4+R0MdAeyyWPmK7rTrRGp1+ZJavNLcK0=;
	h=To:Subject:From:Date:From;
	b=mgAVT7tFHvVNPSfN+s74e5BstRx2bpyCGLeN4ivRqEDlGb+hW73fcz4uKAC858NEB
	 GHzi7wy83naqHdGtVdf1iJIGFbk3mdF1LrfQq2dkHkP5GWoOiCIVQRw8IpKrFehw7s
	 NueDC2/rSjywPxrmrD8Z97YmnhhN8a1iQ89sqf/+qZPetamgPjFjeejACo02tb2uHQ
	 XFtsG8q2uPm3WTbjgAZrSCnN+IZoo9C1qtKR9nV58r61DW0Sb2Ha3AWYrocD8Mliew
	 ER8WZOYymyZjqhaKHCoHib+JYA+dNwNbaDgakUwG+fqUyMmm1huLMhqrZEtfv591Ag
	 IxTaCjPvVhJog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973FEEEF311
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269609358.11550.8784030273321251443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eaeea4a3f64770a75809583205b4fe407a53f2c494ff06de6a48691a987b364
Date: Thu, 05 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772696093
