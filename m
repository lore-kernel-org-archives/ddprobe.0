Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF39396B76
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791124834; cv=none; b=u705BxIDIFbmkmIW2Q1Ep40AEWh0N7GyKcrlCmopEMXTAsFUiu3q2AxcMnZjqgRi8IwxJ1LBIqNV1Zx6VYSwPcKZtsrMvonSS2KcmzMGLJmgOPn/xcs0o4juSuBotO4zL/ZDBuvRTd1CiRlKhwaBDa95wBT5aZYoBxSJQO7wY/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791124834; c=relaxed/simple;
	bh=/Wo4bXpIJDA7V6GTTWW3/MiinWjhGlUoMi8j9MqR6kY=;
	h=To:Subject:From:Message-Id:Date; b=t8SijPQququfSwFZ6XjcqxPGFBquaPJdT+lpyagfc0SvY22sLnOPc+s7MmCk+dEOwk90zzbjebf1eup1R6hWfzYBfaLc9FEaAxDsGJWVPeBX4BFrPnf7pzwKkgYoegZhZ3Qo0KoghZpSpv4cQNTbfA32HrEqawRmUxQkjPztv2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vR7+avzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vR7+avzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2173C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791124833;
	bh=/Wo4bXpIJDA7V6GTTWW3/MiinWjhGlUoMi8j9MqR6kY=;
	h=To:Subject:From:Date:From;
	b=vR7+avzkt+3BtkN/oa2ak2/hk1uRGbnMQpkCT3lsOfjRMHOcRvXocHZknsSwFPy++
	 VrX58Su8D9a1bQ6awtotXr4X+HaFrFFBTtxsXCXjcfRnibjVEnSpixAP7TDyZo/xfU
	 2yOTie/FckBydkVhGiD/VXG8rpeuTBSZ8DIx6ayHoMlfQZWhRX7n3fQuA6sC7YbQSL
	 d8DuuP+V5fFk8fcqC0IEu0kXaB3PrWz/b9jt4T+JfqXbDRsGXL6FKJjcFzYIIKnAU0
	 CeDwnNHoqljXsqDWNInkTArVrwSDVKspsyNr/XxCCwGeXlaRZNA0UGfrE3bbxqm75C
	 l4tVSWoX6vTiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD14DCA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112483368.23697.5205097153358781001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f05878b32bbd26690bf9828cd4eac33e5ff628dc48ed2d22325a08766d1e4c
Date: Sun, 04 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791124833
