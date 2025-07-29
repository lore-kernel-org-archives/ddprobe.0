Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6C32980B8
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753809594; cv=none; b=k0ZbT3ipe4SrYR7yHwONaMz68W8qUY0zI4aeegdNto4cNYJqKUFQcZcmUskXg/OD1J/BmfxIeitf5tGrTT2mZ+OJqa2evw+7vZTsr5XVhMC69eaJNGxVkUfmJWb3zZuC0owLEXnouCKyfIkbTQiGkX1gbGlBIB6qINHtG+z8JEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753809594; c=relaxed/simple;
	bh=rm73EexykqVHIwtCVt5kjD5w08sIeDaCy3GeRREEpZw=;
	h=To:Subject:From:Message-Id:Date; b=Vm9LB4qbIy3XCP+lv20rDXYDlPDuaAKIEdylTQIwd2t28oplX4Oc2a8SMHyd1tJX4MiyRyDA0QgRsEHAOEpy6qW2Dzhf0JuOWnPEhC9h7SmWeb4yudtqtdZNN6IHUO6WvEe+FT79an7ZTUC8TeWEP4qWh41D5cwG9jNUeZrOvVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmgwBFec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmgwBFec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30DFC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753809593;
	bh=rm73EexykqVHIwtCVt5kjD5w08sIeDaCy3GeRREEpZw=;
	h=To:Subject:From:Date:From;
	b=JmgwBFecyDK57VpoMUhJY8P43xNZ6M7yKrasja352/4JPiRzT2zRN1aKDzBQyr9mz
	 l/jx80RI+SRX6weRhQwIxnlHCvNdBMZ2EiccuUldwix8d7IRcgURZwfTprlffRdfoc
	 o51CbRMiD+0l3XYyEkyqj2UnSVBY7UT00S8/tLsd3efGs3lmX8O5z+DH6tI+K7Pd4c
	 spNgrM+gDORWk4pfVXJby5GmxIvqQBF2Xrr7OUFCloF92boHFWga2PqU2GkMZCPPK3
	 ADZSPx/+Q6PwHpYp7DEOqgVrLn2y0LGvgFu6DFzbzyVj4uiO2ylXZ21+i4Bbaw2mTW
	 hBtISVyID0KiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90009C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175380959358.1918.6913754355159084618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c9f5d2267e42d7647196dc77a805a47680637631ab997d5156b6392dcab085
Date: Tue, 29 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753809593
