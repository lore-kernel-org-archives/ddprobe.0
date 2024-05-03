Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5018251037
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 22:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714773743; cv=none; b=gn2YMe2MrkiHx7x0IOErC8WkQqGcxrxPSFlbCkiWSlYmzdt0SD0OXWBEzrtLNTbhPSTR2W/wjeiI4828CAFSXfdk3TiHdsP1x/8nry5fmr1845LhPinQayAXJkiwPvsGa7bd/wBVYiLY2nGe3qmmDHWGAyIoxECH07tIYQXjlNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714773743; c=relaxed/simple;
	bh=CCY8C7M5xiFsMHZ0k3GjwkCJEJKlqderScqkawLTLtM=;
	h=To:Subject:From:Message-Id:Date; b=sfZrHtI7Rse+EauezIa4onRWPupvdqyJYfz2piCgEZMrHCFyZhs55bmRzRTfdP9qRQsZRujrB+lf93XVEms4DjaZug8f0ZPGH908qNAuNcS6686Slo1EyspadIk4zuR4QvudFUbx1XA+toddYHf6gmv/tqVAzDLX2E6oKRIo+VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urgSlAfc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urgSlAfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E66C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 22:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714773742;
	bh=CCY8C7M5xiFsMHZ0k3GjwkCJEJKlqderScqkawLTLtM=;
	h=To:Subject:From:Date:From;
	b=urgSlAfckcmHPGdYIRJGXxP/ovnE+/DBfwsEtP4EteZR4oG6W+0VzrvMg2NRDxjzn
	 p7QGblnyH4oK4BykvjHxzIEcx3+D6RupErKRkkr7B3uyAkOmNPOL1BGqIJm/5BUnHt
	 +lRNTTkxedfxxZ1rox6V9O+fBhcnlW+/UTV56t3mI8Rq+PGH1RqywoFWMnjC3OFQ9V
	 cC3Ua5gcWxi+uvvi3kMRAPvb4hILx0BzpON5SuB3DnPxhayJeK5JAiU1UxMdAFF+FP
	 YoQNVXcR3rwufqiAYhp8bDgYxf9bPJB062FViBE/128qIVSnd/2eC7e9EB2RZ+S3jB
	 Ciy81Cw857whA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD182C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 22:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171477374276.26775.1653784769064501344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef6d6a5aa4d3f609a031a2315c2a1c3d667f0d972bd81eb5eee358e4b270ad2
Date: Fri, 03 May 2024 22:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714773742
