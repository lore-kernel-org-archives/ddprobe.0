Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6BD18EFF0
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723493154; cv=none; b=rjHmwwOTY5ONJZjjplC0/OaZIUGdvPzzKopnxcM8fxZBPUiRY6+qqDHXVwuXPrIrSVmRPDWt9mrQc1iXISJ0NQ3NRM40T84hjT/EZmXRvBBlUtyfZ5r5LuVLal6j/fokXzkPL52HNX+oyES4C8jV8z/SMb+luNDCd4aaulZKi64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723493154; c=relaxed/simple;
	bh=XeJT6fWoOrvhEQ/jCjWWHMzKt0LcMjYnjIPQPyzWhbg=;
	h=To:Subject:From:Message-Id:Date; b=Tj4kh49ldoFwrjNMIKM+3N7Mn67Qddx38ViTkhyz6KXMRB2tB7DqHRTOSq/nvOO014HHkWJ8jllP5ebfc2f2AZu6AiHfNuFZfPr3s15WDmKZooVEu+VQbhjp9F2TRWavp+Dnu8zh0ALngjhbifdv/JLq0d9/wl4SK/WS3VAAnOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeWskp69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeWskp69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50F1C4AF0C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723493153;
	bh=XeJT6fWoOrvhEQ/jCjWWHMzKt0LcMjYnjIPQPyzWhbg=;
	h=To:Subject:From:Date:From;
	b=jeWskp69+hU2RiYRfgmltyv+jqOlYtZftUr0vLcgfeq6lAvM5ERs1zn+gyrhS5sKG
	 rgA9J5g0zMwDvUIoxEp+zrvUz3uznz6oOFy2dw4A0Mt+nBICiPwf/iMIV/dggqACjL
	 ix/OHEUA9FRc/72CHKLZsg7ETpfncON+tSRAPXKxaWGeOIce2+9A8BbSfUzKcjpIuv
	 2rf44avwlMe/02C3gIYYTAQ518DscGnfHYMeUCfx28TplrT4lYTaUMQ54ItRmnRGoi
	 m8cJ7q6t/FHSX7u015vJheigHhnuRfxTSk8gxh/am6hp8JkUf6n4ZsbNp7Z7KYQDko
	 OPHJeDmTcL2jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D71C52D7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172349315365.10237.9535270229031249470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3635c5efa638e1369a030fe4808b575e4cf497e9dd921f5c24ce8d86475292
Date: Mon, 12 Aug 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723493153
