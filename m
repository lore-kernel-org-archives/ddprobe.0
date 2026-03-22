Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F3F40DFD8
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774161294; cv=none; b=RsRYrRbQZy+jzyJ7zLmSGW2UR5uZF0rOQcAtYWgQXN0DA+YBHwsenWoDQD03cr2HVsCdGtqE6dp6bqlkzLVssYuPHgydxUWNWYiOXH6xf7BxIKiqFnjcmDDWanIj2XPueqcIKY7+Ayn9l+NSLnsrlcyax7yRQr6DiJinSsuIHQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774161294; c=relaxed/simple;
	bh=vgIy0bF/XSZnSPTBPZ/bfoWC8Wg+4rcfQb6AQGIJWdg=;
	h=To:Subject:From:Message-Id:Date; b=re0PW2EW4W4ntmIM9O2am3tASfgknjAYhxEe7DPsqkGCVA3skDlvREyCbCG7sS4S+zLxfF3f/cPZJcdZAdqVADY5SXPGpjgVQD+KLxGkJlPE2QWnhSwvByNcqDfmGRaDq4YGCHctCgiCStjgRk4rmXhs/E/d+4gpuiqux2Aj6bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRNPML1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRNPML1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AC5C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774161293;
	bh=vgIy0bF/XSZnSPTBPZ/bfoWC8Wg+4rcfQb6AQGIJWdg=;
	h=To:Subject:From:Date:From;
	b=lRNPML1hsv7jeQBrSZmXNBfT8TaKumLkDg33ILmDGNcrhjshgRAwBPFfnUw4ExaTf
	 3ugHFSayqEX/545YIwR66qmwzKcoDbUs9PPWx+HsLzaLSIjhYUOH1X9/p3lCB5z/Rd
	 UrSmkb2k6tNsJd1NPkuxb9wfS69T7UEhkZL6VdO8mOD2daPQdSkw+sK/35FwMwaUeT
	 hIydz7MXhZS+jM8ovUjXsNeY/p7Fri2Y90jbK2c8W36chmnMyCjBxTjX7LLrYyljyo
	 OTuhklnxQ3QMZMprkvImLKiDIfdTAZqNOQjS8XAokBytt8E09g8V3Jua8Km5RSDlH4
	 v7oM4iilvmhTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FDBFC72AB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416129357.20377.5794876698955179128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 749aa951408c808e6c5fece14b656d34b86aff32cf553f34506f7a98180d46ea
Date: Sun, 22 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774161293
