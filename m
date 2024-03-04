Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BFB399
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709514497; cv=none; b=S9oJ7Y/AWoqa8B9byOzUce4Pc2cRC/ldnQSg2K4X8CrYQn9+t3B8n91QyrdVMwuhlJuOoFykyaYOw5rbmoF7CgUGhKw4ueGFeXlmK367KTQ6WxWlqIosxWlzkBEbwwIiIciCocRvDJVyTeWNvCvb8zlKoMs3pN0dJxGfS8fydm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709514497; c=relaxed/simple;
	bh=ELpvuSMvA8eu2qrC8a//NHYSHxdBLGsoYMv+hVPAmeU=;
	h=To:Subject:From:Message-Id:Date; b=UWb7Ep2uFx/Ue73kT5/u7cgMp7gotcUpPM4WMXqC6xyUdiTLwjSZ19rPLt09WLLU04JfuRxyDGQI9FdStkFoiwYuS8Ec6uxfgW4S0Ey7sesQHZ+I08ma9UWBG6m3yTqsoI9AaRknZ1RRLetJOkLfmHltZKpwyRxF1gyWhKAjIyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sokvlTg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sokvlTg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B2A9C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709514496;
	bh=ELpvuSMvA8eu2qrC8a//NHYSHxdBLGsoYMv+hVPAmeU=;
	h=To:Subject:From:Date:From;
	b=sokvlTg4fgDipUG240KgZ1kg+veWYyWIzVY2ro/SowOR1apQgSBDFcSDB2FBO25uv
	 4TwbGuWoG47EO2gubPn6IiXWnQCEh98HDrG4WQqG9gUuBQBl4jvHCvNC7aO6MQTKcl
	 lYwC6yBs6S1sYMty7qh7hiaQQFN2uXAnwcvtenclPHPHOVl5qPhmUCdJ2EVWKt9KRa
	 2JgyWUpJouCNVNFe5O05LJ0jkbeWZLRjE1wA8tNGk+HviM0PBTnnP4VYxIi0dvA/eB
	 wvW7Tabndh/8j2k6z1p7goXVl+49bYUKGN1frhuorZA4Cgw74iBO/v1OXHR+40Y1KF
	 Ku3PXWNlMApyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D0FC48BF6
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170951449641.32099.1405608874570396756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed70c39869727eb4b994fbb7619abf692ef4297a3b86a9d4442ec925b408bf0
Date: Mon, 04 Mar 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709514496
