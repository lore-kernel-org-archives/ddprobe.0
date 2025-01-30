Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA5CD2FB
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 04:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738211154; cv=none; b=Lw8tzC4wbqCHCCFueuVgw9rQBck3GVXY+TiBwmQNj3dbVWL3/T7yQupK/MvtjyJQivFuvLEnXNdngSPWkXMmT1vFmQo4fRPJ49DIYoN8TlHKWsm7Nv7MAAkNkrWVxwpEoFcEDohodvBzL4FwdXYm6tSX9j6LpXX//DhFu71GaEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738211154; c=relaxed/simple;
	bh=PdZPhbt2SXz/8Xj+kXhJMB51lo6czDvQ8sSgAuSXDPI=;
	h=To:Subject:From:Message-Id:Date; b=G6UjZ8cNvRCZfXAuGM8DvqVCf0GecKtanbXZaoWtkQiuDaC+b3njSsJRjmeat6rOKPF32UK09rDNiyVzgkCxucARqCEJV8wZezIkm2MZYZmkHT7FcT6ZTkxibDPiemS2lbe+mVempyLlPDYTlP/nRvJHXv1OwJRVm4yKWJM5KJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmDGejx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmDGejx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73F9C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738211153;
	bh=PdZPhbt2SXz/8Xj+kXhJMB51lo6czDvQ8sSgAuSXDPI=;
	h=To:Subject:From:Date:From;
	b=nmDGejx6+mtKesxcqYQmajWuZ31HitwA9km7NryUXyCvGrP3l5TV2svniKqB8AsxN
	 7yNPDuAYwim60GSitl5aksxxy4iT878PWy0LX/ye0gtVoiPlTNpxkCRT3swCn4G4p3
	 swHNTc76OD/+ZiPzg/MmC+E57Mwz53Xjh3PetaAEYUb148XqU3v4bjVfW2XBFCqRLO
	 wJbQO4jq6VbkPHxNVh2senJC4Vrgl+ijLdoH4qV1/j6cAdt3y9x8j0b/FFk1AZxkL7
	 /mv3q8M37NZ4ULhSoV7BC6l7lOSMi1LsR/vSLv0zhddxPKD8HrHqib7detZBrcplP0
	 2iVk5UBFhIrog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34E4C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173821115370.13818.3760120377341979685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3029bf703078bbcfeba9648dc6350afcfeedbfdd75208490fecb6729757191e4
Date: Thu, 30 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738211153
