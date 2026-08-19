Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47ADC367B8B
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787128234; cv=none; b=YHSFcp1WNoJIYDDUgqaWeOYu2MU1O6U625QkPMhigJI9d3SpmCPRdj4wc7FVrQqJamnu1f5OTOoW6ePbghEPDcg7iBJFVQlL1cnFe9XwbMuaLma30wNmloVVTqEUtTnZzNFLJQYsRAIyscRTxwYogqGxfGyj5iMJvgJHoVw74po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787128234; c=relaxed/simple;
	bh=dWpl6QWzXL3Zzdbs5fdx451G10fWuVBtbzSWrDyb10o=;
	h=To:Subject:From:Message-Id:Date; b=K5C6gby21BGPewmBGibOhWwei/dOzVim6YdZ9r1sIe1+J4O5u4EP532p+2xYBlm7BOzrXa9AHP5jnBr8XNVbXXqXoGEaS1yABhYbjiGsjAseiSwoSrEg0S9NhoczPjcRb/KG9oil/kZ0psAJ+SE05eon5/xeNuBDyvbVepQg15I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iitCDkZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iitCDkZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6B0C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787128233;
	bh=dWpl6QWzXL3Zzdbs5fdx451G10fWuVBtbzSWrDyb10o=;
	h=To:Subject:From:Date:From;
	b=iitCDkZIyIXcWOOryFFFHqylvlv7YWVLhGjbyl+kh8/4BdDkrO7uETlv+9YI2Exkg
	 qZsay72tdHr1yX01CL8ocft1HJ14D9/lLk9aqoVmd3K3do14jTnqwqOQkns918ZZIz
	 aGQpivY7+7Rijq1EmKb8ov74GhKvh1J1ougJhu910CLSyYMedQxJHj8iH26q7R/7NS
	 3PoKXKeRXc2s7oLNIMViQKyHXJPvY4qtlq5Qtw+EHZ5QeoyPw7sh8WJmOA958cPDVx
	 thxkwvr2hHaAJRGQHBfOADT72NKcxTf1bnx6xkH2/ye6TBeZVUCRE3f4IdCgwc2/S5
	 IcE46JA7W2otQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7ECC5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178712823368.373.11634858451576003082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea87397558491a016a78fa394ee43e518cceff090ef51f51eca60bff73518b3
Date: Wed, 19 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787128233
