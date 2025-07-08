Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272DA219A6B
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751972994; cv=none; b=gVQthCIdDc/CptD1ePRsSZ56QIDkKju9im977HPi0LiB6GBwFDHIRwhjP4ZnVOFjK39SUxAJxFWqvjUbrT2VgcJO+a+ttWuOiQ/w+cmaGl4FTM9VaVABoVBjH11+cnRdfhBmStbKB2hXVoi+Gp1Te+6VLxr0lLO34jiF8SdM3/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751972994; c=relaxed/simple;
	bh=pYLIlwbA8XNInnQb+uvzlWJwUqxZ0s4Nao6B/kVtoXs=;
	h=To:Subject:From:Message-Id:Date; b=htgJNqOxazudbYjZ1zb1gn+p4t8RN9sx4kDUy1FfkZHnDlw3qtWBevMiivMq7cj8kS/2n+9tJndmUJyUcrIO969gNunnR0o5aAAFCNvVIUemcRq2UuvYO09GCnTFu7kmqZOCV6odKCm2+sCG45XHkMZT27c/53EMWawUMLsiA9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNxnTLng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNxnTLng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A292FC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751972993;
	bh=pYLIlwbA8XNInnQb+uvzlWJwUqxZ0s4Nao6B/kVtoXs=;
	h=To:Subject:From:Date:From;
	b=iNxnTLng+duNCLHApMZnjzudM8OFOIGHX1Hj+C39K7KRuILEiecHE5F5W1kiKlkOB
	 pnu1TBTMoU9eyzG2zbG9hTOOd1EkaYqGyuCZifEQEQNdfpB+f7VqLl2eFBn7op1nFo
	 1lnGeWpjieZbNVGlKPcmOlhTGwr6ktQUWcHB6gRHjo+VM9um91yNCi6T36uhbptK0D
	 jHrxwukGhGFwhXC4gO41vTpxiP4+ucMR+Lx/vM437bURSf4yoHP0+SHsdD+mJts6J0
	 9svGmHvoQ4qKIGncB3LSAEAASMmOlyEAaOG8QANqm56WLztlu5To9nHNR6frPeIxIP
	 Ygu9MkGixFK6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922C4C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175197299357.8439.14514713033686042904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2066d554ad9c2b09cd30859ef59d0151149fcee97de3ccf676d56ffe907c41bb
Date: Tue, 08 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751972993
