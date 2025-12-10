Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE0E200110
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765410774; cv=none; b=lnfhUA20UlVPJWzkqlIJlUOYkn90zculA9NrLGCLtb/IWO9VVg5WHqz7sEworkzg0tffMLVN2j2I/f6R3FZg0eavyfnM6cGvme8W0+ONJX6Iftyu4Ayo0UqEGOhLFQFD8ZTcBOiWuF/8ZzmDRGO3bJcyr6qIvaU665agMFq6y4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765410774; c=relaxed/simple;
	bh=7rskJyv3+uTQxp5ue0SNjEZzpP0J4/adttogZC0dgDg=;
	h=To:Subject:From:Message-Id:Date; b=KoAXB0rEHEDWzA1LsaFuZ0pq4VHaLGx3o2mTw83/5h1Jek59Z0WUFkbcRkh8p47v1YVXXUJZtNDWostsIUR1HNFh1XsPMugFt5vEU/WUyadRiGxNwbUYlrGNSgt2QCO0uDBN/5dKOFyULEVmTK7uGkphO9vcngyct2EicRCNC68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4Q3Hkvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4Q3Hkvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23EDC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765410773;
	bh=7rskJyv3+uTQxp5ue0SNjEZzpP0J4/adttogZC0dgDg=;
	h=To:Subject:From:Date:From;
	b=E4Q3HkvpxFmLXa/unYe5PYKteyK0sPrzaoQfGFht37ISEP+0KF958bEmO15ohTHIK
	 2SstJG1JPdsz2y+ZEeo5SxLETwWWLWitPd2MHMiclRHISSrmp8KI/zHfA9MIWOApMW
	 ZaCSG4JpW2dPJBLynl2pqqUTC9WgGo9x+MrM4fZcwaS/hwns8sc/IxPozULi2c/yvg
	 2SjAqU3zhRX72PO7858qj7w15VgIfnzzPgP+ghLwlaxPU9TaXMvwNYX0vZSF7A03DU
	 u/XronP/+rOlqASAZX/UhKqUc5VHRMdq3KfVhEp9lNPdCZfLD8SD+JMno/V8MyPubX
	 jSe3Snw0/oMMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90046D3B9AB
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541077358.726.2597564079648079854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ce088be0308bc732a65ddbc9a7d43ee7cfe314f1bb47fb00f4b22b0ff46c0e
Date: Wed, 10 Dec 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765410773
