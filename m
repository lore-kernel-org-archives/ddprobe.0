Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21541DDAB
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753537195; cv=none; b=RivTilxUYDhKlKMTGFSE34u29lK4DC/1XiV2jdoERhf/iBgXwn1QxL1EkGjFEnoVfHN5RqR/HeN+nORQJSEIckwwt8cInPXMP825JKhgjgy1JdeWpQULr0fnrIDY41iD/M7SBcoS9cMzq9oXBPElSGnh3SyzOl/zCNFN7wjD84Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753537195; c=relaxed/simple;
	bh=zBQ6Q2ey0NL8/Xqr/fgox0obn9mcsJgSo+8CjuehUXc=;
	h=To:Subject:From:Message-Id:Date; b=UqzshZwqlhjHplweW/1f7rJBvxH4p0KG8whUkZnITvX6VB/Prd8MxKO7oC46ygdV1+U/2koDmQMAZp1dJAbXF4fSTFNTmHxehIkcZepy1MO3SClNcTWB2cRP1Bq28TkgSDJeQkRBVUPNydRJlp5YEURy/q7RXx3B8yBwu9VHYbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+3HwXUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+3HwXUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E0CC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753537193;
	bh=zBQ6Q2ey0NL8/Xqr/fgox0obn9mcsJgSo+8CjuehUXc=;
	h=To:Subject:From:Date:From;
	b=P+3HwXUgZlsP0NoXyX1FCzIKAFS0K2RQxprmsf8FAn8u7T4T3RTUQZWOgOM6U9r6Q
	 58EXQENiFEgzBQRhcO2up0hvalrm2B+mqJLtC9I9/2d/fhk0EzIz869PSouc9CABDB
	 6O4fvC+wUp2EoES+5uCorrKsbFwPC0oRG3zYAI0XZxnf19DCX0IV/4rk0eA4okvzVL
	 mZ35HJcHj5q8VoO+Hu+tJWnBXKXhdxNPIU9dhW7X1t9oHAZB3eYobKqtSF9gTQhOLr
	 iALHlAMwQLvYcc1pKFm4LeiGMpqJiEnm4+eh6UYY3NbC/nPYXoFuJmQGapKHnNGp1/
	 wOWkUnt0tds4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947E3C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175353719357.1105.6965116411523987035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d7accec5d5fc530d494f4ad97dfeec2e091b2b7fb6d5520522e03f9f1561e79
Date: Sat, 26 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753537193
