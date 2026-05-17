Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33ECF3B4EA5
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779033034; cv=none; b=DRmYO60bJUdOpjNhkvu2sKxp4RDmbAndvwpGvQ8Ftn2F9x2Txqgn+4E0nKIXjhB37pC/aKYrljZIz5G6K7sSRLqx7Ykq/6NL9Fi7C3lxPMJ7AV0lbPxSQbgg14NmmQtPprWjkYUGv4IRC3Ru/alRQ1Vap8y7flvPyYXawiRDM8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779033034; c=relaxed/simple;
	bh=ZB50aapuBPfTjB7e5LnsRz5G9z7QvtRoJiU2orcM9Yw=;
	h=To:Subject:From:Message-Id:Date; b=ZGBlttWvjlbN3kFWdlIcpI4oxky6fj5I9L2RY52ZqPb9jGEbxKl07BqVs1BBgjq+jR0rUkCl+9VBFnRQIdLq5G4mkiZ2cBKdrS/Cndve14ZPw/+BsnpYny/gcdcZTiLVYgLkR3UAl9Oo1trmYy4WejsgMvy6MiDgykUuZ/TYLfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpheRBTf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpheRBTf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98C4C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779033033;
	bh=ZB50aapuBPfTjB7e5LnsRz5G9z7QvtRoJiU2orcM9Yw=;
	h=To:Subject:From:Date:From;
	b=hpheRBTf4GF1/R1fSb3SGeLP+1pzXPimXKlR9JIjFTS0cqWw/REfgPy5HQWkStYJH
	 KT12PZrpSzMIHfRVzfks6IzfdCLR1D1VfXa1+OFFlOAzPFvcC83giWqp5sT2MLjxFM
	 7So2NJGCazEvi1Gk7I/jSKhh1epsYT1PfSY+2ew7qogKp25tMzMwpugi5Rh2Big2jC
	 4VYBA45YngbnKKszLuACzd3S0lNDpGAuZJAkT+wizX9NQx2CZb/GcOZEbQaip6C9Pn
	 2Tj/awnk0GJ+29Nyrge64/ugu1k8rFs5NWuj/tOIcxjXaOmt4KUMzxwHgyLFfs+Apm
	 hcaXZGM9/X2iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1E2CD4F4A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903303369.17246.8931100848222217844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a8d45d5ae8a7f141d194552fd3621a4d51f40fa898d4bab1392a73ccac58cc
Date: Sun, 17 May 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779033033
