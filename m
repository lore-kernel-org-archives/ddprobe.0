Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228CA7260F
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760584194; cv=none; b=r/Tx97K/xnSrA42Yp8Y3IY4qElA/JjTW2N+ydmuDixMTjRsQDFhPs8/8ZMFWloutkUIa1uw+j99vqRvwltJB9FISgTE92+1zS8tuHaurhkKrV/8U+o42kUoTmBJjMuNK0lvpyVfeZNP1GQr8XsuDEgLfB1OBWq9mf5TmGoXGQUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760584194; c=relaxed/simple;
	bh=nVVd6Zw4ZnLSrUeerocOs/XUrxJ63swgqRy6T0JQLZQ=;
	h=To:Subject:From:Message-Id:Date; b=tbJl4524UaNTVJNSVFWtrelJWY9db0ekDnQjX8F6c/6bF6R4YP07Vi63RlcmJ0sVCXM6U0PGTJ4npsFEjOImpKzt5N5WjJHTQPopfjWSRzFMxt/dmDd74J8RMx750gmiJnYS8/0P66ApdrgTL2HoKJgoXIH0FsIezr8j/jFCMIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehx7yweA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehx7yweA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F306C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760584193;
	bh=nVVd6Zw4ZnLSrUeerocOs/XUrxJ63swgqRy6T0JQLZQ=;
	h=To:Subject:From:Date:From;
	b=ehx7yweA0aEFJixYNAGQSE3O99/R8ELOyzG9YIp2Aftc0D8nHxs7eciaVM1UP3aFv
	 z/WsM0dpnppcP9I0fDkqFLdpn+LOk3C1IJq3FMXs1ivmfNG0OTOAW/v6wX6ZWfVd94
	 7icyXdfEZoYkKqob8ow1lGrsBq5UuKMulz3hWuzU4vqtkhMVMtouv+9exs26w1SbZy
	 h7UfYf9YQHSSX5Hw5bINh0qcsS+8Xfuy5UX8VjarNJDkpYssi7zXaUvs/MruVhDeW9
	 Iy9R1QrgvIL/0+BDPi4BoN1tZljEiUG7tuqB810A8hgze6neow5d51Ug3zW2VULbWa
	 ndlAJ7LMlCaPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0A5CCD193
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176058419357.18403.5586996152974820032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0f6c39af73298bbe0182198707acdda7cc6bcd5e522d0707fd6e1b5bf5ac47
Date: Thu, 16 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760584193
