Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C102330338
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772058294; cv=none; b=DEWgfHo1d+fBUP0wgqeZ3li4nS3Gw0GB+DEkjlMNEBZfB602ok5BnNbwamkRV23ZYXFZGY6QyD0sG6eLFUvocZC89mzgSTxHCG76P63W1I+JkqoPCVD2OMx4kY3dmCSIkXR5Lm7uuRtgrZhQlzAJshcErpQtR07ijSx4EY3LTAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772058294; c=relaxed/simple;
	bh=wsslMgPRVMAAfS+Qa61bnYndTnFF6782dTHp9/1lBk0=;
	h=To:Subject:From:Message-Id:Date; b=OlXJpbrNtrUjlOIJhWlqlN0J2mXCDPabqU+PB7l5I1DHTTlfv1gV+k9A32D65+o4ZvkxVi8YEze/S+jq9Gs4TkfZKRCUE8MpQgBhysvFPmqLd586j8cpWyHuQXaTr4F5dRQPmiAQuwijyiiprui8EoFxPFujB+TBm6qHbpN08gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTen7gbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTen7gbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1436C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772058293;
	bh=wsslMgPRVMAAfS+Qa61bnYndTnFF6782dTHp9/1lBk0=;
	h=To:Subject:From:Date:From;
	b=TTen7gbDWxPCOQYLZ0Dcobs++v2sFYnLf5MC9M07L9cg99hCc4zCM5dMMALUB4NPw
	 HsRZNmknzE8QzY0f/pX1m9iZW5Agj0eWFW5aZxA66pDxLGZ8M8zIUfU3WwQEeDxBZm
	 657X2OCPMo7eqpNZNImAkxobGTMWUciYb4Avfe+hvN7PUjftMocl2A8KOB8p/TUmO2
	 FSGbanSwJRZpFoLbTaMuB428tZwJIm9jzHZwHl4BVFU1bYkkT8V8vRjnv8Fg7jl99W
	 ZlqWRK2LJuxv3OPepB7lWmLFSqwU5Kmq5SkiJnUD1k0BZfH0h2DBGxfeKjkcNJHO7m
	 eKr0PLJzW3v6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F4CFD45F6
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177205829360.27864.10953458800527175253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcc8b81541a19b88ac44aa6ff9f57474facd2fedf5f295ca6981588a49739262
Date: Wed, 25 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772058293
