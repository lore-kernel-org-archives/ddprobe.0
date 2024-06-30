Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5855CA47
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719717863; cv=none; b=lBuUOhLmh16TKWE7pi4XllTqehQ0J8GTd9mWpwFrj1dpyx9QO2D3sGsvIUBc4gRWjFX+iFbVjFHANg39rIpW9l2CWIK0kSrJoFienx/0jgPRVR75pgIR2Pp1x1AB7/k7GVhhirjKYFPygy+HxNc6pxYnrtT1wFIFAW3Sh4dw6Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719717863; c=relaxed/simple;
	bh=Nwr760hh4dH3C8WoyEBbI/fozN1BYh8Qng30Sosm9rM=;
	h=To:Subject:From:Message-Id:Date; b=huCXtOdPJzUxo2JJ2sQeg/2WnsRbhP3Egx2OUR9ptYzlS156wQM8socutAjowfT8JZZOcFvizYiyWsm6vjMATC8/TH3i+MHnd30rE2ObbHgrhUvofJOdyhToct6DbCTi9agK1iSTk0TYvhZFJckF0o9KOthbz1I4N6VLXLelmyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUzhZikf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUzhZikf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE89FC32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719717862;
	bh=Nwr760hh4dH3C8WoyEBbI/fozN1BYh8Qng30Sosm9rM=;
	h=To:Subject:From:Date:From;
	b=BUzhZikfRf5zxFAdATwukA6Eg7TYEhb5pOpUuqmbYEQXsVFI7DzKGdapEv+U+ss85
	 w0Qru7S5Y/VEE3jbukxh9ueyPJE75CVQ2wvkHhbuB7aN2kcAmlAaHYWCyC8vuh1ACv
	 wE3+VteebnDCO3QoYo/NrFLV4uwPJxNKn6ePSnGi/ROMwXCyidLXn/N0WhvV2H8yUJ
	 STJfSmYqKtdrJobo5Igv0uFqulp/Zum9v/+ZM71XfiqAryoFn/LYyleT3VkerOZjnH
	 ZvoSgbxYTFis+OTpWUFgStPIxljmbeLd9gOdQ8avdpGDvyl4Nm9je0kT9IIywx76GB
	 4S4ff5xfOLVWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0AEC3064D
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971786275.31927.7632647001592492230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce028efb1052ba27adb1ec749691554c5d3e576a73c680cfe2ea35ae5ec8bf39
Date: Sun, 30 Jun 2024 03:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719717862
