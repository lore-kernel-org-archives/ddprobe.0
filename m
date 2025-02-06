Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3315122257A
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738824954; cv=none; b=TjamYcmlNqZVJpsTQSlH+4A28eUAUnj+bWJW2wUktembUTLPcJDfmilhy5biHt1RRADh75E3iwxIqHsUvStM2BxeIq8CGeVukcR/alQN9dUVgtRf2aJIBzPus8fGC4yFG1ADoaOe5vo6hCJHpS65Yi6ZFV6Gv8sqH5uNT3+larU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738824954; c=relaxed/simple;
	bh=wZcPT+W/hHwc72q7V3pNdngrUvPXHRzyHqI2Oqx47xA=;
	h=To:Subject:From:Message-Id:Date; b=QByliWoPz9l5F8mP3ClWN/2HLFYc2q0qXR8DDxHXdPjTeMIWnTCwgnmyOM3Sj8QGBYX+nLbmhp48cDNFUjOzNCVNr9DQmy/AxQGJyyd4+2xxncK3NaL70DuVspoelYRLfRoI6l0o/MlaDUCpP0OxWH+kNXf1YtyRLQAGaCBoAQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQWTSaCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQWTSaCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F2AC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738824953;
	bh=wZcPT+W/hHwc72q7V3pNdngrUvPXHRzyHqI2Oqx47xA=;
	h=To:Subject:From:Date:From;
	b=mQWTSaCq8p6QKgeFGSTguVFY+8GQniGTUB0gZuZzhmqQvmAlGejEo/peDL2+aOcLq
	 HDhIBSnDCOj2vDj8p9Njw0xH9AQJsUD3XYzp8KNnBy4GlZPk0qGgzP+/88cEBqC3qV
	 ES9jceNeEf3moHc7o48xqRoGgnbnevSPOUP11pRW2FTMHRbugZU2ACaJySjJFzSsBm
	 bJHlPvVllCD20Ee9p3czNeKE3PjBkJI39BdKeyIDwfGMATQsU47fEEnNARCNqs+SWS
	 z3uIyXhYRREDe4kZ80KFQivZR4K5lmazeT9OSKoTI473S6iPcUlGSXlP4miSU7GE6W
	 t4K+jVrAZlFBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B08C02196
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173882495358.18217.13626723605699692431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ccc8c356ba1469678802b01103e1fd37e3b6d20231123d986bfaf7540aa252
Date: Thu, 06 Feb 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738824953
