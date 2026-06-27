Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5334D35975
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782599314; cv=none; b=a8xxlqxSxOXmz10P/9RGL8DcV0yw2W60tm6e34tj3EBMglZPkJGrs5CB7cnoP4ypcoWJ9QgsjoazzT4ONRLLurK5hZ9TX0Hrn/YxIxqOsq34wyPPRp9OBqZofZoBDVgT72UXlj5f5X0WKnl5+aJbhzUBpFUfm3QZm/y0IKQQQFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782599314; c=relaxed/simple;
	bh=A3eIla1y8XZVlDs/zVtDgBJkkGtow+z4eIvnRD1fh7g=;
	h=To:Subject:From:Message-Id:Date; b=RUESJnsiW8y4IX+W2wyPNx0RikLxIfkhIuf/xbEF/sXBFM531pTY844UkGUyXp+vmhCEHg5Kd89aDeGah6CPaLVOq1DRBr+60FEgbVNvfZ0el75sKZvfunD9oZ3aK7vKDAFIZVfA+SmE0Sj3Hz4a11EoEErkW9+4iCaa1OnXF1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/9Krgrw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/9Krgrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3018C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782599313;
	bh=A3eIla1y8XZVlDs/zVtDgBJkkGtow+z4eIvnRD1fh7g=;
	h=To:Subject:From:Date:From;
	b=e/9Krgrw9FcjIc/QfA8KI/7VMrv+GEnVSWIYL7wok2pMqhzAlWi9i7vQ29B0m8h/p
	 xaV+oWt19CUmlxkMSEwq6iGVlTtnE8Eium6X5g7pHbKuK05oHpZbayUsEN2I9zBWPn
	 01VBkrDUjqhcgjMKZtgjNN/0gqZIlndc3XwovI/keEGbuefeEW+e0oF/O4neDFKm/U
	 7sHHJSti37E3Hm2N4vkVsJHbrildnPHTzZJB2PkB+eZyv+Kwgjb6CvgnDbWKSGSUN9
	 J1GzTU4xC+X4NBwjUnAn9xETRkZ1NBF4iAY9jA1SsG8k0IxG0Pfnw+vsfDDNslYhBf
	 kneacTvY6FTZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24D1C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259931372.8684.10624076028863490633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc74124cd2d84fe0827969dfe3b0c63bf2bbc807a697cca1f282c9156b5e25da
Date: Sat, 27 Jun 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782599313
