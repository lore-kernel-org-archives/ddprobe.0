Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3367C22F169
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 20:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741724334; cv=none; b=lglKDzy/2bbOCx7hY/WWm2REzw2GNAetiXR8nwbEnj49+4usrozGzGr5RGsZbPb8ep6WR0XPymkUH2Itph6tmSimxxCbJZG/efBndxAYrdjiRkvvmjRqlS1cSdRc6I0Fhmo8uzpOGP3CcYFFqhjBuxYy6T3rgX2aqeCGfjw6efM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741724334; c=relaxed/simple;
	bh=A8KZUgjUXSLhG0QEAFaDcURmOxW/qfi+alB+d8jXEWA=;
	h=To:Subject:From:Message-Id:Date; b=S6UFa8Dk8hYd72Ja3Icw4MslBLe01/pPSIFQdEPdzI/bOr6wKNiVMBxmwQjyZPj9wtr8G0SCVp4XfoD5DiwowW33TOHDA7kCqZOYkmhu/IJZ+RAcoAv6H7+zjjXjNFozsqpYkx6Kv//Pn+PtXN8uGgCQhGFYny8k0j3SrJsPWOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFFKLjui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFFKLjui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE04C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 20:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741724333;
	bh=A8KZUgjUXSLhG0QEAFaDcURmOxW/qfi+alB+d8jXEWA=;
	h=To:Subject:From:Date:From;
	b=NFFKLjuiVtxzeSUN3gq9hWXIOjirhfsKdBX08o7l8/xZ+CWuMpmOlXMdqtwvhe1+E
	 n13OhNWwM+1ZCwxPSkbFGXCTRS0eaHWah88VSFCxdBOXNMuQK1JoVn62PVW882Hqzf
	 Cmd9e14+LhYHBFKbqvfuDdCea2eJZAQ5T2/WN/ztjHGrBJpztMh079fY6M+M2Ei4pB
	 aFXlFtQ3+1Yi+9/wSmGKgyNtt8ql/mEiVvd8ym830AFqejmAkAGINVq+OYqt/NO9z1
	 Ii/B878TakG7GXAxhZkHBGy0u4uomNa5LZ1nELagdm3wwbUQWJxu22wHKeZhZgofl5
	 GesxzASgYLIag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9284FC282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 20:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174172433359.20104.16602043314407023075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a42c851c4557aa02abe17920b6ff69b08edb233370164c6c822507b68865148
Date: Tue, 11 Mar 2025 20:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741724333
