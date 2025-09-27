Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228DA1F94A
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759015794; cv=none; b=WJtIDhxqudg26XwoClVMy6T+VYH4x0Whtgo0dif8cfq0+NzvPfp+6LME+lGwsFNN5KjESc0IrX6075CLxp0qWjP6iesHoeyxoglC22iPGCfZMQmIaTjCIa5eRT4EzmiIACbl0uWJ+XDe/wRuTbe0jo3Wgy6LhsqNyd9LEBZaj4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759015794; c=relaxed/simple;
	bh=sL9Ab0+lsHOs3XRy0/KHNSdWISff1QLiHFQsohUDDec=;
	h=To:Subject:From:Message-Id:Date; b=WJjNeGXQlPnp3ZoLmdMFziOg+UvBimmAR2SMphwaRIILDGw4qr1s5KJTehE3GlJ823hwJfPdbpUdnT1gIow2YCahDwhlysZwcKbKLPLaDKZb86GxHNQ0VAE5gw8gnoyrDbX2q/NJYlRzozBBbPa8sGvBclcg3FKB1YVPVdtReuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIlfsA9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIlfsA9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D10C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759015793;
	bh=sL9Ab0+lsHOs3XRy0/KHNSdWISff1QLiHFQsohUDDec=;
	h=To:Subject:From:Date:From;
	b=BIlfsA9HlheOha7ASSmc+v2Tz9OAjKbWh6jUfBpVgvPe+RuZJq/Mec8YLaUe/5QNn
	 WpaFl/T4SOY+PKqroiVInaouoayBtrUD3unLPBDennhyX6J1lMDzgJpAAU1qVd1xnm
	 CxmbIgRepfkfvp9wO01wiE4baSEBesaAuTMmbiLZkt9jzMUJYCCxK6aOjp48JoCJ0s
	 3pDXn7BUINLE3GUcco7QzCDiUjPW4BR5iAD2VWL+yy2Qc7XeoI1sL0+c7BaRD9AQD5
	 On8JGLAOYonmrJ4z2SWT7FKTx88BYc/1ujSA/GcKj2x0NwQjjiNMxlyafou05CeFq9
	 7IEIbOMAeeI1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959D6CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901579358.11847.5049707420913493006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6148d618c6ccadfe09c98f13ecae5630765eb2f9d53d6be4724575c0f2a373d
Date: Sat, 27 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759015793
