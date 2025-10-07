Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2AA1165F16
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759829993; cv=none; b=VuNYe4zVUmrrvHUTn8ktKSdsUfGsnSzGAnaAbpnAZpBeKSaM6gb661ZL87ohCAHmlYiD0kbKqRMoNnjUUIRDv5KjgY9E41Ao73Axz4mPgi7l6raN3AS+0APLPWFZbdIZ73csxOdB1GoT3ZZG4POIen8/wm+1uVzGtYA9baJY3aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759829993; c=relaxed/simple;
	bh=9GuQgi0sqtAMVSKHR9t+kAi8vi3uppqI5eZEcz067Bs=;
	h=To:Subject:From:Message-Id:Date; b=QNNR5JRRfCbOeI6r1LfdyMM4l5Q5oP/k72IJViSL0UZC7C80d+B1OrwvXu0+8Sd8wXQrc4q+3wAb3DhnDwMJzpWvvuj4taEg6GVvNts+cS4z6QK1t0O4aQTVkRovRizyudbZpQl7hqaqHVDDvGd5/1nYRlZgWochl4BkjO8EPhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTE1Yo5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTE1Yo5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D14C4CEFE
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759829993;
	bh=9GuQgi0sqtAMVSKHR9t+kAi8vi3uppqI5eZEcz067Bs=;
	h=To:Subject:From:Date:From;
	b=rTE1Yo5N8Q5XIBPs8NN/dV6UcSvKnQ6uNgec43F6nDyVMgubUVZJd884hk5j7TeYL
	 81GHZSwTLV+YkFTzg3CegeuvFcBKfPalumVvblqtECeTGXpNtZ6hgHS80GB7+2A87k
	 Y3dC8Jv7GxE8b4px11bjmw/WZHRfdIDnTVVeOAzV6OF/St8NgyDgwbi0JTKu2KvH2N
	 vBzUPiVX/eH2O3O/ciFb4cHF82I4oUvsqkse/C3jIYocMvH/51c0qcbFO8VdltgNqA
	 zSPl0rN3goX15WkXSavIKXrInjDwWTFhIPtc66seA09eUzljfT+Je/av5YCnqsN10I
	 WeAx/RHUD4QuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2BCCCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982999357.21462.13719274757099137022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b59c975807b95c5668aee465477dceedb894f8d621bacbf475aa983fead758da
Date: Tue, 07 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759829993
