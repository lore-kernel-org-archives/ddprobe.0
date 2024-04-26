Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FDB39FCE
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 23:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714172543; cv=none; b=ILZ0GenMu1PSUfJj5EbZeFznFZ9q/DhHwiawoYcsHxGbxc3fVYxqKc5btrx3cKSZVk3cPZRlS8ObYJ018ieMpoUnSwD+sCxlOAgbXw+jEUeEaRVIYZpORR8/N3SDfkL/7YO+kqbUsADDtQ9pLmMQIiTLtyKCFHihhYn/kzsc308=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714172543; c=relaxed/simple;
	bh=2RUluAciLstXhheKcIGxoJ0AdNEHR4wVDhBN2rUE2MQ=;
	h=To:Subject:From:Message-Id:Date; b=cSboOACtOsp8iX7/MOTsmI5wMrxqcQhm+PReXZWe31aHdpjYn76oSWGENGSay457Teq9O41K4EldkmbjUe2eg7qovNk3P3T8/DOAdKrSI+ShfI7bjvLKncJNvR3VqXq2e0PCpJ9dFwrmauz42ZD4H3wcRHLXFx8Z2sx24O05wG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fD3cEmEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fD3cEmEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74D7C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714172542;
	bh=2RUluAciLstXhheKcIGxoJ0AdNEHR4wVDhBN2rUE2MQ=;
	h=To:Subject:From:Date:From;
	b=fD3cEmEy2NPjE2R7NCFUY2IIdv0cObSXkXaPGGMzTcx3D6Yop5Z/9Xkby+m7DegBn
	 aEEx+zrGwLmQvG+lGWBxkBhpzeiMsy8d2cHCm5v09RsHP1ZW9lZ8c60k6fOOf1MaV8
	 t8pGBtV36rJF2CM2NPEYZZ/i5PamR6ISI8IiuK/WD5mby9ZuNGKecNGq3k0tNH5c89
	 URjOlBA0yzeqOz2wM1C7zm4fGI5LfHc6OT/a+Msup12R82dW1hDwCfyT6LE6l4rg7n
	 z3PzX5wwjvJxjboMaRMUzhKDOmxtMGfTk/n1YzbjVDnxt1bkgjafe1q3X9N0+OotAU
	 wcRbuUHoyt63g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B82C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171417254278.27398.17908300103520092276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f02f613974eb451d569f421e4123d8b3e2ba16ff2ca9f43ed8ad5e1c75ed0a5
Date: Fri, 26 Apr 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714172542
