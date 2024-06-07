Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C7813F436
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 14:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717769843; cv=none; b=urxJkjhzoT+koGrUnswUgjkWDejV7mmDm6t1h1h3TKhN/22EHNvPHvF9L+boHhIWcy+TYGJkgQ0AruVAD0TDqsFS/t01uooLRA6/tnykKKpmJdZlqeI9DC/Ic2tAGCCEYVEs42UWFtP0A7EYUyVuqYHU2A5yGwYJ1tZ/Lh6HAaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717769843; c=relaxed/simple;
	bh=j8UTus86APnCsUXTmk5kv64R5XuTIGqA5nAaytE5dgI=;
	h=To:Subject:From:Message-Id:Date; b=hbQNYOY0+h3UerDWOnL15ZJLJSK2TKtibLhiNKbtWf//f8SNHfk1zU1kdfqKM+/seHsvjRbeL3I6xAFlzEtTDIT1Kx0gdf/w6jl6jDGFEzmQO7pWwdjuUP2CHOephh4FTQLvbe+7Ksmo+YOaiEX1TwzxvDSrbmjvcB21k9SdgnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWOQKP1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWOQKP1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E84C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 14:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717769842;
	bh=j8UTus86APnCsUXTmk5kv64R5XuTIGqA5nAaytE5dgI=;
	h=To:Subject:From:Date:From;
	b=jWOQKP1J6AigOPFB00iFzQaCNKE9QSIDQoR5RMETHYvOL+VNqDFpHHVq/DxM8ARKZ
	 Y2Cv3drvncAZp6CI7Fn7o0AKhBl7Zmk2LTcezWy+p/ibmCqsdJviA8GWU7t2xVa8od
	 VUIczFIBua8G23cJP8BNMJbypgzrMYq1ha1t2MlO4AefDVtqFXZaUggBpLC7o0+i5S
	 s2oAPZ1LjkMB2lmjV99qTQDaGAlhq9Irsr/yVvK7dy32/R84eMv2JOAxRLQB15+gWJ
	 w3EOMojVaAOrhJkDrvA0S+OZ1jO8PHjxEjBbZ9zZaAcmvD6vn8JKyjvZAj6ZZX0wSF
	 yWyV8KddcZWoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AD0C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 14:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171776984278.18042.11919307641661029415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b427a420a6c0696a09d473be02e123d4389731f6aa995e83e0d52309191a45c
Date: Fri, 07 Jun 2024 14:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717769842
