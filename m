Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60F739CD03
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788591635; cv=none; b=kmmrpP9dZauHYQTrBBRm/sPbGxalaNtOFLtNdpmDKWlEuD4b6PrBCsiTW0wwHAveXFWPscH/y5XEm6ei/wXnhuJ2eL0iynb39GCR5YckqDBjUgMCl18YtcHrPhG6kIpPA8bllorJMgCDOBFazMLwX0QfKKjA6Rp/p6kvcJTDzEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788591635; c=relaxed/simple;
	bh=sJmUdZ523mKm/oWaNNJdB+IWG2a7n9cf8nzt1xFFARA=;
	h=To:Subject:From:Message-Id:Date; b=VoJY5FPyKUGzNC4YZwtrGx4c7xNtdBVVcpYAsycuD5YuajpnbXWR0c7XXi76jolJlYL2lLbjTNWHKyVZFpOIqysbWyTUdQJupkJCyLnFoXVxydu5YC8uGx6RDcvb49WSv33n5X5OBUWzl9qlA2E8cGBNY9Yk5iPCrUTwr0I1D38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dif1fz9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dif1fz9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9A1C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788591633;
	bh=sJmUdZ523mKm/oWaNNJdB+IWG2a7n9cf8nzt1xFFARA=;
	h=To:Subject:From:Date:From;
	b=Dif1fz9Dcnp1rZ81jLijzhGDHJKPSBPhzw9OVOA8RZbZtvTyjA0qnQevWhVc/hAKO
	 sZgry54RV2wyJf5cpvPFpuPcrmRSAS9+gJhhAP6LOF/ow8tTPRJMiwl37EV0THGy+v
	 ZhH12uGg98THT+2A9lK8y2juRfIY6RPqbJ41A3kR3HjsXMnh38ySm4LSX2I+DBENNZ
	 6gUv2AJpa8CSuS0nO1i3IFwl7RaFRmXOG4gHSIQnpr5G+osWWKd2A4quN/1Uhct15R
	 rvIXXLqfDPKPRQeio5zXG6aqAFVyvqa10AAgmZ55izEqIYSaOfbvbNqh/Spq8HRmMF
	 i2od4eYcm/QOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7601C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178859163374.4913.13622678728181580693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60868bc97ce02af31c15c7c542633c42b543ce0e68291657a16889126b6901ea
Date: Sat, 05 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788591633
