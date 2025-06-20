Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1728B22CBC6
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750448994; cv=none; b=Zw8HpfkR2epYgJUu8YZjyitnEEkA2CE8mbvtaF6Ls0zYF2dcVIrR/EjoAanWd17R4nrSxxHF00aqgB5XenC43+38SaKmZneOvpTtsV6cn+sOdASONcIdwzIr0lYGt8LxynF6/RPyJu/I0KG2Qd3wI06R854HyNpzxzHTcwh+gh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750448994; c=relaxed/simple;
	bh=VJ7bm4i9hAGpG2+Be56LTcfEgXWUljnt8q4BKeQgDbQ=;
	h=To:Subject:From:Message-Id:Date; b=RecP9UXkGDxISoIDdoxqB1mP1H14+3l/bCFtLDJR3Q2KYjT8fbpSXv7u519WhOFZMzeEaa4P65BNE8/Rc4iJCsCyVBmnqdWsqg+cjXr2UCnaqu3BwpoCdwXg2CIPR/2uK7xgdFyCzXfWCuY9eq2+eAn+fsz71FmED0E+ILwn7is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxDBAVWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxDBAVWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C10C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750448993;
	bh=VJ7bm4i9hAGpG2+Be56LTcfEgXWUljnt8q4BKeQgDbQ=;
	h=To:Subject:From:Date:From;
	b=IxDBAVWOi9g7yZBTuVKHfQu0lCyU57VTS9YMn0BFmkhSN4N8la8mzB6QsyslkD1SV
	 YugsxrnyOFfE4M0ebITSpg2EFoPJnDFuNlFqGmYY8vejgx/SnLEj88zisTFMIJYTK4
	 Rnas6yBRHpUGyDNsj3WK2NWstiCYXpEXh52gAF2MQuCYRzQL8TIAm6zhYLzAYdoupf
	 00ElgtHjs2SfwMxRBovpiyG2Cg+5Z8MByusnOU+3ha4S1EHH2lTanLIPNKxEXwTMvQ
	 fUd7wY00B/mjiFGPPOuxBGpdAl6TX3r3cEcDlTHNmTx9g9kTPmMg59k0RA62rf0yVz
	 zc/zooiGHqVfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9360DC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175044899357.1225.16795991788468635026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3def6cd35d31702936141c13c8738db0d27634401fa0d19fdf1cd4ab0b849f13
Date: Fri, 20 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750448993
