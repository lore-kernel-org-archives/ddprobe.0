Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FF51BEF7C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737717354; cv=none; b=eMHCcDHV4Dys9JTtlSeaE1DDYd+iuedsKdGWOtMDC9Ci4Tn0Phy7XAs35F+D6L2ozJ0UNtkuvZGNv7l/fPBXFUqHovyW1DIcN4OlSdnfunSH5VXc+Yafcyda53e5I5+qJLFF8CpejOCuZWyMs8lpsrSW5+PUZaY2mY4adTR4Fac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737717354; c=relaxed/simple;
	bh=wsKR0PciM9kSo092sGtQpdlylqs/yIIcde/u49rqTbM=;
	h=To:Subject:From:Message-Id:Date; b=m+MVqtPoWC1EECBS8i0g4DmCvrz+XW1hMLlWqc4sHDlv67FxuDwGlwhXLXCO5CQm/otzb1MAH5o5u6W3So95/MQ0HfmuNRe6eULmiqHUGOZzExsAIcuZteaBKppCYlxUdYSlOSKeZwVRe5BfafbnobCxFCgLnVhvsg/yRdznD8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apXdsPbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apXdsPbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD396C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737717353;
	bh=wsKR0PciM9kSo092sGtQpdlylqs/yIIcde/u49rqTbM=;
	h=To:Subject:From:Date:From;
	b=apXdsPbsI2r1l5YNCdymIH7/Hd83L6Hv9Hox5tl5StrH80cnz/2VuYyST5oY0QDP7
	 Gxyq7hUaCrehonEg9Y9uH2Lx+gW+iiwa14igQr8WyQniQhcRfCgDp9FUi+TQte/gpJ
	 IGsUTLRuyNdqQYvh6I9FQBQ03LItMkuUxUIcYENbWqcyDzd0nIqCadQGg9xETnbJ0P
	 OKZU2KRcCAj0A1lvaG1hwUVOFFrGS5JW8m+toaTxr0YMCJkPEhpp/JuJ13R3lz3RlM
	 UPIOGatgf0GqQIo75l2iojC/ygDzhp4v3tgxnLpNbyJyvAR302UPiR4Hcs0hzB1WOt
	 l4syQ6D/t2Piw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E60C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173771735360.28173.13928973653940833118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa13aa407e0ff9bf26bb6919d02a0539e96d39dcae1a706033c65669b8dd3f93
Date: Fri, 24 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737717353
