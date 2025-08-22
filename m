Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0D5329B8DC
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755887395; cv=none; b=Ggow99oEk8HqpVkEZ9kiezowzlWIWS/L0/SsyGpPDWCcDmxubLfxbIf5Zzh8nYo5N8oMhvg70mum++0aXWu98/bWNT0xNkvCUXJ1Y3ZCQFuWEYfPu8JqRJVLlDAHoM1oHgGEIkvNzuO+IK3MHE/PXgbccCNAMpxP1+lyP726S0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755887395; c=relaxed/simple;
	bh=5h/8Dmkce6/bZXcdVkZpj2ok5d7AJ9viyC54mrS1KtI=;
	h=To:Subject:From:Message-Id:Date; b=TXZ0Ar8vOLCkwaxm+3x0BHQkV0Zy9vNwA5Tk0P3iyHGOIYHzbOyumDDV3OJwybyD74kMu2+udsKAhFn3l39QSLOkBVlrhuQlizBMtu+iW4m7fUwCmiCyNAeo9aL64XxfOouegcxgzxNXZZ5mZP2o0pCardEhYKPs1nx+z9djNaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aESup6Re; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aESup6Re"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27C5C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755887393;
	bh=5h/8Dmkce6/bZXcdVkZpj2ok5d7AJ9viyC54mrS1KtI=;
	h=To:Subject:From:Date:From;
	b=aESup6RemraZlW+NrIO6il+5x4eangtl6g1++0Ln+c+avjFD0GwXMBhZUBs7R0rf4
	 r8Q29EcO/OBTN64XvxA+hVgQ3Eo/1RzJifGV/lWsTw8ZtfjkiX0zc4rTYuvaaqk4du
	 snN8cTZS3QXU8yo6p1gcnbQf5wapmbTTmThqh9bgK/luW8c4Sxhu337uIjTMAmDme+
	 ZAhs0xDKoeEydLdqnxhRd7Y0Gvo4XtJ7Y17GXVQpJ9kF2IefCOg8+MLqs5On+VBofh
	 INDtsLuH6QDU/OmVMg29rFdxjTgismdB6P/bWFvEfbYdfup3KegC3O1xoKrwm9KPmQ
	 VC/M314aEroIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD8CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588739358.28086.5560884941888831545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e20cc2567ed8301403b26f7ada7923618bb3c1ad26e89b2a180e88e8baa268fe
Date: Fri, 22 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755887393
