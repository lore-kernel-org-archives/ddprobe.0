Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6AA2DBF75
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789418434; cv=none; b=ESvCHvGzPT/gH2/soVf2jI5p4inQDxMnfI4ogK3i5rfJS841xq4uYJwRWPBqS/PL5gwdV2Q7sLsL38snC8BaSeK/DU9QmvyyeuFCJsUqlj4bci0MNzPuszefcQJVDKrIIam6C7Ycfx2T5QOKDyfl12O3VFs/inHy+8V++CSRzHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789418434; c=relaxed/simple;
	bh=+dvg6nxh/SGHxWKhhLk0Uw4dfiNiHURRAmkLoSYuhHE=;
	h=To:Subject:From:Message-Id:Date; b=PlGw1xtsdr/M84/LdN9AGtHsbaMKQcUtA09KY+3ipk6ZcTJUlwp5mbeXvtkElax6sWjXEwLPGyholf0/RrxMAK3+ZawgFK+MPycszMYKVAzwOBZtSQtqJBS2YNRjJdn4lEosiBwnsREwvEPzb/ACfqVF4Q2kcX2llug8DAv5V1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7LdAzsv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7LdAzsv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7511C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789418433;
	bh=+dvg6nxh/SGHxWKhhLk0Uw4dfiNiHURRAmkLoSYuhHE=;
	h=To:Subject:From:Date:From;
	b=p7LdAzsvRh9pU96cC75npRM4b57SiRA8mJFqkq2aMEUXtGOKsFniQfvkRwMk1QNmG
	 2/aDsUbgjSHetsKytfpW5fWrnQ0spxUV9Y5e3uvKWxvUzGAHNzv6zL4pCkdt6vW1tW
	 1ewn4NFRu4xcaCkQryc7xJTP8fZll8vf99bJbNxOP4ASYZsyua9zkcu03zAeP+ptOk
	 RIGObi5D7TT9dljNxvZLwTIkXxy8DMD6/DtnVDTUAZQvZGKeMuhQWn7TkcjPZhRxbJ
	 OcGeIrV4p4N9NjE+GnatzBUuQ7J93aiYaGSPB7CQlW2A8FUNRCNDPdjJ69YgtRHVOm
	 S18a7B51swtqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06FBC88E73
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941843371.9622.2355793144906537705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02b06f7bfe923e58dd3266369f86f4c67b635538aecb742027f92ccc0656eb7
Date: Mon, 14 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789418433
