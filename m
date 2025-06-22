Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B74EED7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750563595; cv=none; b=Dg3r4iggoryOX7sBVuvsAQhOXWE+GtoqBbAeaMdX8Jq69FM4o9ZpCFfWIx+uAs60UdtOfl5PcmspyIS2v2ItVmN49mfYaDnzKREGkzPRwyFhTct4TmuT9i1fht9+Wbko1i1VRORn34uTfHWy0+cCLV4hV2XwFWP9iSISMWT1gyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750563595; c=relaxed/simple;
	bh=uaze/Rdl0cZDx4W1lw81CcHj1hGbE3Bbj63Y55WXQ+w=;
	h=To:Subject:From:Message-Id:Date; b=bo5lCgLyH9FfFygE2yVeEEMKw91Yo28M0o5BvlMO3q+cQ+XALsE0jBa8DlyRBC0Iw4RuVED4qa2UBXtNEdlMEwjL03QhaKofHa2ou5jsm1CGYKgNTgR/Fs+Qor3hI2/hZh8V5gBWHLkUOjXF0KDJhIrsFcfAWRG9Ph9OFhWxUIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVF7Q/GE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVF7Q/GE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EBDC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750563593;
	bh=uaze/Rdl0cZDx4W1lw81CcHj1hGbE3Bbj63Y55WXQ+w=;
	h=To:Subject:From:Date:From;
	b=iVF7Q/GEXwQiba1PIoYY0/jNLmnby8SXeEz5Noycj4CldsSUAvLj3biYx/EV7LHS2
	 3//UyMFKRC7HDUFHxdjo3WWyC3bu/6r/98CqYuCn8FofirQNJWCvtqlqLRopX5nxih
	 7VJNSKdUenGySIzNXXnYSdJ+BI2BCId//m87VOf4dTDKpU0y1AtIhkBR9Mxt3KOpw/
	 Rmb5RVAaSv/Vv/yJXak+7dYOOXKepICDHJe9nFuw+QzmFmf7jJszxAulegaayDOaUi
	 kx4VVhDUO+hA9K7ZGzYq0soO0UthUiFneuzb8U+4LDBzRLlxmkkATyzcMuDR06aERD
	 qEoYeYZlCPMlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FA3C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175056359359.10334.14944003340792335824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956f9b3182ffdb86a3ab08e4ee4d04718790e937fa40b62f4e35081cb7298752
Date: Sun, 22 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750563593
