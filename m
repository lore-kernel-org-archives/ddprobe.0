Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83141B6D10
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729277153; cv=none; b=uM1287LH10IV+RW2T6tcoKCk9djYpiQT455Kp9vZpv0a7hapRT6+MRNTcMSa11BdpRnmfhKpFscuFLbdl82LCBytdwahrqKNiAFAYQmiNSN7nZzavG147LsLcmxVLL9NN3ViTLD/mw55+BtYWLECX/hqPIVFTEqHjA0N4vYisBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729277153; c=relaxed/simple;
	bh=O19F8/GoVT+JzjLwzKGATt92HhtoULqlkshtSb2yqaA=;
	h=To:Subject:From:Message-Id:Date; b=dPGJs4TNp2NEOtqKN12iqNmPJo5QJKf3chWWsLeUuwdq4iMf/DR8p84mi8pWrCwpPW17ztxvX/V45QOQq2XcCT8W37BdKTF6AwlTkfpYsP8FIMJiiJ00EwhKQ4tCrvyr9iQFDE50VbNnL7cnPaKOoYia8XQeTxCtowhLA+fhDSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9E8n5Xg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9E8n5Xg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9561C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729277153;
	bh=O19F8/GoVT+JzjLwzKGATt92HhtoULqlkshtSb2yqaA=;
	h=To:Subject:From:Date:From;
	b=d9E8n5XgvmKpWmp7wHFfifnHJC0St6UW/xA1szJi13EvFJmPpsrDYfY3lTDFklYc/
	 YB8RrocA8KEqky8NdD7H9ns05d/GRzkTyQIuMsiMGfc6+KBCMsEusjeLeCnp373lM3
	 wlXBcodZi7ZpY58CMiMufNu8MPpyaZoyJP+Y5yctQy1PDynX5J9OrbSRgjg6SieL5a
	 i/L8ozByViwe4QT+v7TKzH7BEiey5eW9APYYgei7iaI3+v1breGqoXvoS5n5/UiwH/
	 Zu2MsvGpbTTP/et9Wg2KZwLIbvwfM9pBLNPBuj5EYVHlYrIhpwiEBzL4Yr4NWDVGdS
	 ZYIYLbYR8ZDAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91011D3DEA9
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172927715358.6776.14985225050954194964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346db27745e1a012e1a4cbcd8eac2d2d6635678023953fc23234f2dc82e57a7c
Date: Fri, 18 Oct 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729277153
