Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C539223328
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769195634; cv=none; b=Gyn/ZQzo33T+Si3bq0PTQpKigmBE54NLiXAqGuAyhxggeRxP8hFDk6edDzGea8pIEMUM6p1wH8a42wKIoFBQmSCLV+aJ02YxMFdPD3CVDWIsjqjYnfMCgNEMfQRqbFxdduM7U4dzw7BECaDsMyNgMo0ci6OeQ8MS9BIdclN8tDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769195634; c=relaxed/simple;
	bh=sXFodcGJq3YrVt3V60lqCxrTQM01nEMZ0wPVs3X5k+o=;
	h=To:Subject:From:Message-Id:Date; b=Xo4jg0dnkcR0IpEiVYaO7VTchkfg3RogKs16rD6YXba6MqD0Cma6v1y7fSL6YdTVZ6ZY4S5lr5VJqnbE2e73FQabAwj8tZ48sPIGFCKCP9WoJ+I1TIRQvXr4jQ84Aiw+k6f0ZV30vxyKk2OPSDEe1BQLnIfEauo2eg1zIqRcdBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OV7vPsiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OV7vPsiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36B9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769195633;
	bh=sXFodcGJq3YrVt3V60lqCxrTQM01nEMZ0wPVs3X5k+o=;
	h=To:Subject:From:Date:From;
	b=OV7vPsiLvXp/cery9ZNdM1OhYhEo7E354+FvesldJvMyByigcy/kH/y0mJ0TFzim2
	 G+TFHGgLReq/8Z1smMYxM7hTszhuCh9m7dmeIdAvIcBWxM3paFUkW2YD60srm/kxql
	 hiEBRka7M7xdL4xHHcz10C0Qe4U+R1OTiWLFPOCoC22quWcgUADs+ceG3DU956FQCj
	 HQ4XUuqDKHi9wFyBArJ6NbJxJNxlFhdZhHVrCbYBb+l0Dn1R5OHbtUXdawc2/t8VoN
	 GRjBRzFaouGvtTmU8/3EVjVF7Dm9t3AQeuWo96cCskZGyyGcnPBIPwpf1a7eD30yAb
	 cprVlShjCSxWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91372D778AF
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919563358.3447.6175070429516054801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3f1e836cfbbf35579f116b91854f10ae83bd16788bb5368e0c6411138d6e47
Date: Fri, 23 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769195633
