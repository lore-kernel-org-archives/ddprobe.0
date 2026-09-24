Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A073412279
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790287834; cv=none; b=fsmCq5WCyExniIWZP+9qCHpSBQUX07uG+t0zOiUUVXDwuEXNedaUte30aVlao94JH/7kftpPQ2nNhj950AO2BzhiFsVPvT1xsl1Mnlg5Qe6CFzzuRXWPEdqRRXnLFK48DRFUl/p11d57UabOXQamsZyN8n9U5uyDaftLw9GwVbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790287834; c=relaxed/simple;
	bh=LlnVGnKODk2lDFW5dmocVbh6sMt8jbRJ1BumxdyB6D0=;
	h=To:Subject:From:Message-Id:Date; b=gomcMEy+zULQ/L0CRdEfSHksC1LPMPurwEn2xNPkpvh6krfvReI1PFfBpD/4Kj8IbAxuYv8+DynWVYT/NxqCkPdMyXNpAdPrJisUiTo5DsTHXYO0eSFK5emjJe3YGjnI57Ex1Y2ZvR1D+Vro4lRRa/iedWMsvFywVAsD3PdgqeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+Duge+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+Duge+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75EBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790287833;
	bh=LlnVGnKODk2lDFW5dmocVbh6sMt8jbRJ1BumxdyB6D0=;
	h=To:Subject:From:Date:From;
	b=O+Duge+hRNLjUM1nhMePgWp9kmezPdsJy9NHofcWVt59a4wfOdzkDi4vFJStox6fB
	 8oXo2kmC18yQFxomXLtfqFHsjQo6qXfMNXN7/7AKmRzZWXs/Q84JREYnJrRQMK2YNz
	 1sUtu470lojP3RFIqsVSnM+IX1O1aTHRLfeHn7kxWoVwWgIKsNO2AcVi3cIcOCqMTd
	 r23tq2JY2IKQ3zj3eKcv7eeQt1MPK4YPqhD0DOs8vCNa76aAtY1DcEmMvBoNpItkh1
	 QHJpljqVTNyst2IUfj9hcPTOdJMRGc1Q4yqVhHvAp1h0Lj9JONlHBdbexlHUvPRnsj
	 GCwB3TeMvLxlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE2BC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028783372.31877.9792861609126466049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58f878c507be6d46da1afaec3a61e7f94837285ac9bb51e21b7d22f73f7fb1f
Date: Thu, 24 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790287833
