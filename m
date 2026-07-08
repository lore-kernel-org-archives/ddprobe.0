Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F82F26738C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783534114; cv=none; b=MEznQH2WU1Pok0FbvZsjBp/0KqujdNKwZpl3k0bZtK1+KcneBb0L62gacxPBF1XSpvkADsMPc8DvjTDHG6WtYiRKemKsqHmXmvk5fxMBDMsOTcOeIq8HNTcVdjKQdvmcndpf35JsSX7RWyVz5KvkSgmprBXJ3waZL4d2OuPvz1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783534114; c=relaxed/simple;
	bh=wnBtV0NEh+Oh7y7I3PpnVRAgEITFQxHSx1QQa+ckKWk=;
	h=To:Subject:From:Message-Id:Date; b=JXpiKQcO28WGjQof3T205/WABiIjRrTV3NkgPPfa21KHdv76y0h0dMXiI2M46nmi7FlSa60021VO/DS3EjbFXePfueaq+cYVWY/ISl6CTGP29dieVM4hbiXOVYt6hGyaZKIkvBJMQm0227iHiz3NtC0OFpYta8H1gUy0RMmIjIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnYDCpRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnYDCpRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF40FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783534113;
	bh=wnBtV0NEh+Oh7y7I3PpnVRAgEITFQxHSx1QQa+ckKWk=;
	h=To:Subject:From:Date:From;
	b=jnYDCpRy03R4AErw2bAFAKTODxSdOL6DPxgvLNVrYMr4FbDDox37jCNrqNjk13mXK
	 GoOBXUEQ5hot4umZuW2mJldiTD+emHtVjAwvigQb400+rZwizU7NutgdrT601h2+gc
	 K1oyEJLf0X7RLaTEf+Xi2XsH1hHa8aFsvK8yMilZk60kl9ch7F2f3Ba5DIq7jj2jSO
	 B8lDKHFHtIKm3ruO0s8tDDj6R0THBViaW8gR2rc+wiaZinkpHkoCULtjFCcJ91Dsr0
	 rqh+1XtSgA8FgzahQvYgFHQP0VEbATa7e8HGppEjggSkG5+AALOoxH7ea9KrDwdEqO
	 JbX8HC+IUVK0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC936C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178353411369.27522.14100346232726297562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f118f77397333dbaf9ef0237891e02ad359228594fe4f05441f5e78304fe5f82
Date: Wed, 08 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783534113
