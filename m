Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B592F8BEE
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775831254; cv=none; b=oMmdyNVIBgSztRLjiOlSuylzXQkhM1nRl29uRBimER2dwK2lltw8nABvjsi4utxMALtjmYwFM5onElUuYFMi4od153qegGrG/6TIBEqBaRztb8ABWFiq3goBHB7ou2bIhSuaGsMOIWNNjL+ZVGvpEHmigCGZ0cMmpTNftIQTXnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775831254; c=relaxed/simple;
	bh=t5lur2/BipClSV1mjn6sIpmvyGHpAPLVawUG9AwyDAE=;
	h=To:Subject:From:Message-Id:Date; b=pHiIpJ3/98g8o1UUGTRLGaWkVurRqfLUENCTSsI2NkEpoljP/We3C3tyqewbWPTDxArHkLPk5dCySKjYnuDpJhzVofn8yKxuXKawIfQ3d592cHH7123Aht0c0Zat6BRP9Z82xds/S9+geE+SfxTM/LpgXIu9N2QsAf5Z8mZ8l/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWS5/gtm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWS5/gtm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6A0C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775831253;
	bh=t5lur2/BipClSV1mjn6sIpmvyGHpAPLVawUG9AwyDAE=;
	h=To:Subject:From:Date:From;
	b=LWS5/gtmbZARjZpzySnq3Gk8s6EdhmaQIP78fgKlcy2quK2xY7aO4MZ+7NW7gb71X
	 PKanhoB0TI/t/4th97zbw8mU61VMFQXOYXdrIK/EzjbcKNuxlkvnyh6R7imgVOv9L+
	 btgNpnU2krQq3cSTKpuJJdSiMxPEiucZa7ugcUAmA2iOgGfD/mZGNPT4n3ZYXHGHjb
	 aj1YQUtc3yeVldG3bhCk8GcKv3r3dI1dKkTkrSafGAFluI1X7cni/UsBpBMOJplX3o
	 B1y55UE6bfpdyCT/3M/i+yLWCwXQW1YEBJEhFAU0VpX3XnFSRUPDcBlXbGcGHQvWGt
	 tF1Kmbyek31Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF75F44873
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583125370.16032.9568930492252835687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96628e580f730d86d7a79d9beb121432bbee78ac75b0ceff65314bb6f62eda93
Date: Fri, 10 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775831253
