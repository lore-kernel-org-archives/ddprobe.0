Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281931758B
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753022994; cv=none; b=elkvALlMkFIXldPp7pcXPhG8GyrOhPlfdOET3b0uGGaZE9eknWDFU24OenZ5HWLgiL+Vh0CNFgN1WDJOWiMfE1d9ZRG6ymwU4BrOQ7uw82VhKJVueQFqNls7erv8URPoXk515F/DtL1go1SHcAufYHBdPmIDl0CTKo6zfkXEdlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753022994; c=relaxed/simple;
	bh=owoKnJFFDZ3b09nbiVfZnA+BUUCm+sNVb4jNkxynHx8=;
	h=To:Subject:From:Message-Id:Date; b=PL2G0dct2mKts+FvA1Gu5MgOgzSgv8Nb8sQk9bOGZdcPeos6ozneveUkqSOHboJFiZiYlrXot0e3qF+Dp0swTDZn5zCFhDKbHf2gPlnxzlingvTXsYNOGKCyQtmdwaqLuVfzvBrzi1D46OE4tmNxkwAwdBq8hiZKet5J3iVRrVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAdzT1BU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAdzT1BU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA71FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753022993;
	bh=owoKnJFFDZ3b09nbiVfZnA+BUUCm+sNVb4jNkxynHx8=;
	h=To:Subject:From:Date:From;
	b=GAdzT1BUJ4IRDqN23JN8EUNA1SRj5ADuOYieodRF0KIfCACBXBTm692THDg0YE7mr
	 XKVuWbHWlv45MGV5fqYcpl538A8fT9ri2/hl3vt3Vtcc/pPcxzzyTcoxdh+LCRJ/Qf
	 U/lW2sZgAtQHu8YDjA/IMQNws3OlfV5rtcvi0rBKINJCTCIH1V3a+xRmJytngdGQsf
	 unyHOzo7y7HqfUkYnonPI3Q3HwTdCgrw9OkjriQM5a0qKy1RS85Ac16Fx/9Pca8pEn
	 APBW48cffmyAx4v03Q/BwN0u+g1B4+4t5GLMYPJJ4TFTq9raG5iFtyLVifD7YVl8kC
	 TTBqVzU49789w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9715AC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175302299358.635.12412380268446781904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2f794440cc27fa8e20a2cc3e4255c51c3a58d02980b947b6e50403312158fb
Date: Sun, 20 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753022993
