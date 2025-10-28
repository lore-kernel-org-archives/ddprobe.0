Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2167D314D19
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761652794; cv=none; b=S/YoCBt5BTq+D5iKMOTO+QPH8ccoSZaetCH2o5m6AAC9JvI6xkWtrly97Jxr1pLhLnAoiMpf7zMr+l123wh5b8VoyOczA19/33kr4QEd7PHByOURquRDFLUF4aYyDeZVrxJ9oniZi5ZaM34War9jQiylC0aEjOz0+UZ4xO63qx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761652794; c=relaxed/simple;
	bh=HhfUIzVP8RS7yWH+OlsVr94X0dAU74p1SuqbPOZ2jWs=;
	h=To:Subject:From:Message-Id:Date; b=r47j/J7in5WpW/IdASLWZ7sFIMMcvtVZ0MCxf/iwImnfoeMwuPh8Fs107k/HjMQaDBPhyOC++MHpfnafn73L9qIOmo/cUkD+QhQXGD1MyYXhdD4pEp2sblHDk3YmZWDVCNwXj1seSgGUVX6xT9n7eVVdRVs2sy0dAEuMieYE3BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceCevBoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceCevBoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6AAC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761652793;
	bh=HhfUIzVP8RS7yWH+OlsVr94X0dAU74p1SuqbPOZ2jWs=;
	h=To:Subject:From:Date:From;
	b=ceCevBooFED0pimb2e6mZw+jpnyoudQHs0XGJ+DRJ8Qz2Fw+VWUdMlavWYS8/WIkT
	 9eizVtqG/vhsFSkQkmLluBXeAafu6Rf82RDydDMyFFGgGhpNJGyjp1U19uVlXevMAx
	 +qVPjgSCvE6i01UQMhDCMdx6aQUT3aWVoSBLIMPE38K0cgc4zAX1l0MIL7H2UOA2BQ
	 cqpho0Kp0EJKucebG4zS6y9BxIfFnOXcAEI2d5Rt5FEWKtloFs5ZqZbBW6Y22Hrrci
	 ZhhXaqa0lnfryIHGOVft980tvaoBH5sqOrCKyANy9X2/kdjEJdtaq2g2EjhbvhUmuC
	 oiziXnU2+8qcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902AECCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165279358.26117.14500373323765464207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f4a1d407247c936893d8f481de953f3fb653b4d8b7b059168168df40b936d6
Date: Tue, 28 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761652793
