Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07AEB2E1C6B
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772892894; cv=none; b=soSU1Dh3TMpKGIWaG76DCVEJnAX1TddkFvZticUPUNRHlaQaHqXz7RXogo1SO4JygRQgspUw5SAvqGTdO8j6w6GqqV0n1QcVpRK+w5+OvjjeY5QELsFBscqF4iGmqu7kj8uhHH2DEP3EycRPI3DrsVKMLFHfLWBSMzIXfZstSbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772892894; c=relaxed/simple;
	bh=oIu5jsk0YbLouatcycuohW/mxzffjNQCik1/XrisTRg=;
	h=To:Subject:From:Message-Id:Date; b=COmWMVuStVoF6W5to9K4ap6B4jtRLDAsa6L+V5RzBI+H0R+/hsG0PG5RFriQqxehUjPlY4aUGeToCqtQPc9ZQ2lZYzqwiAhZeNqYwQWnjENessWc1DDxxBsXisMyfgDStMd9GUBeQgo2ZBWZ9gfswS+aiaer6WJ6HYibfTAXL4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4Achwhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4Achwhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B015FC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772892893;
	bh=oIu5jsk0YbLouatcycuohW/mxzffjNQCik1/XrisTRg=;
	h=To:Subject:From:Date:From;
	b=F4Achwhs/nZACioisusbFWuStsOhI6W7uTEqHdhXNjHdz/zXups4aaFob1TdnzOrA
	 N3W15RfeXzUWZM9HsH9Xw89lataiZDWKlKaWHSxwP8i6hXn3MNqvAdHOZlL8Ue4XRe
	 x2B4C2wfvkMuBfs2+qWzJUOyuGwXQ7enrWRROK6tjHeK7PkkJZSeaPzROO1X0d23Cv
	 Ni40vnTxCbHpN7GOELVY06Ju5tBgFY8LCMkQHivOvz1bgNA1jaH0cgaMIxbUXlW63W
	 z2vZV0P3e1lSlFx+keP2rJH9vwiwAp87JZDJ9RxfiT8ioZjBYYTSy66JzX8qVrr69o
	 efB4uBjMwVMOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95543F513ED
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177289289360.32249.10860209378658265926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b581cc3c38444a7ca68583f3b1c456441b355494e4d65d8df9da00d6272638
Date: Sat, 07 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772892893
