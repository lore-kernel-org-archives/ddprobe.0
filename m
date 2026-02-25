Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1F71E98E3
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771989894; cv=none; b=DmDjTShu9QXVKjksXdUFOXIIf/kYcdwexEADcN4ns8sRB+fPWheJUXXDpBRPRqK/vHKfX3AAzarK5ICBVhcXWGFwH9fnWQDpmOHIADhhPkTqWIMivc4dvealErJztCBJ+Uk5Quh/3jJ8eCFMDfq29YUWEeGwr2RKcR0umZXZomI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771989894; c=relaxed/simple;
	bh=MgwLOSwqrjjRW1ogtD/ClkpFwfcQ/9xCXtouPlON8NQ=;
	h=To:Subject:From:Message-Id:Date; b=q3lHT/yScsbgrBc0FG3CSs+c/AuY83qRJqS+nY1afRWU754Q2Irf7u8KCa8XjrThBM7Ky+aWLJl7EJaa7TaVYt5M1W6elEdXi2muRtv1c5lFi++Z2IRFHF4DXqS8iMZJTxgXV9OaV67KLNXY6MnYc9nUM97n6hng30f8o/j7JP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkqNc/+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkqNc/+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A862DC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771989893;
	bh=MgwLOSwqrjjRW1ogtD/ClkpFwfcQ/9xCXtouPlON8NQ=;
	h=To:Subject:From:Date:From;
	b=gkqNc/+eY+hIsTmpGGkKziXM57P2Cqqxm3SM0cZsGUO1UoW+i5rQNmXpqtWKjOAUy
	 ARFodK26Vj8ivzLKvETMFlaDvcsSgHlfSQZ+vi0kGsiOalHGS7+bc8/7O1XMWk8GqA
	 kY5g71bJ/ZnIcXZu55IZJng3Ch32ehTgtGUXtqHER0zHPJo8fj+tVpywoNwn+PSXV9
	 7H6HBBeenSuizZhhpahrZqWed2rhQoL9CrZ7XYi8V+HF10iSMpXu28PF/o+CYlsF7C
	 8dNiUfHZ0AsIXg5OLwukykjZOUka1v0xAKGlZ3x6JM9m1XzBlLECe9eZSm1MwfaSNE
	 Lao3sdthfJppw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9309EF55449
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198989359.13287.7898968816012135845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1879d7262fb7d5a62574bbf2c4799d66c742e7fb13180fb4da61fbffbd161c5
Date: Wed, 25 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771989893
