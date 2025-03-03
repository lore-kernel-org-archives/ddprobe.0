Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D02218851
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741022933; cv=none; b=U0/drEtahmD3/DOVzBz76m7J2AOOs1SSl/7A6yw0NHLfcExeO/JTiYWBYg7lTjEsV8cFUPfsS9aL38HQ5jOonaDsRyM2XnKBSwILF6vha6I7g10819WFgBCAFX7qCwd/nukxactk2R86+gw1DdMJcpVoalyJ/z3yJItm7EmRK/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741022933; c=relaxed/simple;
	bh=lHWKw0ZApXaDiuN86utJ24xckp6JGpOfzdLaK8hk6XI=;
	h=To:Subject:From:Message-Id:Date; b=CejJvRYo9YvUGkjc2kVltVrqARq9GZ788dTGbqizrYaJ1kQ6MgPtoVdPuxmln4CiyPc7+6z6tPcU0Vyg2Zao13TH+ubeTHqRjLUuSTal0Mza9uDlhGBwK0l25EjFKwoxnOd/U8Hw5/B7DuiMb2D/BjsQNRAXuM3EwS8RPV+iYhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7jopsoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7jopsoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B372AC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 17:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741022933;
	bh=lHWKw0ZApXaDiuN86utJ24xckp6JGpOfzdLaK8hk6XI=;
	h=To:Subject:From:Date:From;
	b=T7jopsoh/1mEAhbafNoA/gysz0Ubk9VWKQlB9Gv5uHGGlPTmjc4JBjmsjIvXGhuSP
	 gPphg7gQ0r7W6PbPZ0Rz6/9KbqCla++oNZurUcNAmJDvDfLO3UQuDzmYVTaHjzdO50
	 U4WHCBOhMYmRw91eRCF6bIlh9hhl3MZfrhIV4/nEbVH/5JqRrkFh+tSfn/sGRQx5dJ
	 Q/oGsyDbXHlocQL22Jjvl6+BL48hB0OKoib9aDQQo6NtUVX+th/egbazE+VL2NFgg9
	 HeKRp0aeGip1c3xO2KGtcn4cf3IV4s30fyebnUWO95RL7AMN1E2OYT8CDfpCdQklMC
	 nHOoOx2ZqJyTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3272C282CD
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 17:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174102293365.7567.575100753681710135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d76a6b362cfca747b11de93b6a3a174501a0429ecde5f1316666958a32a05cc
Date: Mon, 03 Mar 2025 17:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741022933
