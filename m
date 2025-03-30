Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3492C1D5CD6
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743360595; cv=none; b=YGA221ckDXEtUJ7SWMoINC2mYNCq7kMSjPRuqkO5D6gj6OVp0U16Ps4EfUpepSQmKAbyYDJQCX5RV0WymG4QHixTNMuIcFP2mT7xllqPuaOi8iSi9zSIWjYotxBm8idyXl3qKr2qKg7wpoH0G7UET88joptexzt2iWAejL/61sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743360595; c=relaxed/simple;
	bh=NJ16D0HzEuSLXYKetpg3+3KvYDXaGHz0ZdusowDODZs=;
	h=To:Subject:From:Message-Id:Date; b=PFHkWABrzt1+92crfrZyTFvukkhvfXz2035PFDHX8niH5hbLTNyXOwX1zzLlQVHaHV+GOA/zNEsJmzOHNZ7i403lzF3efZfeZufFpAJUVzKPyIR6q63nLd/aYHK3zI5u7NMf/B+LsT/qLKf2GW3JXQhFPrulBstfiPNnXICHQxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTD/96kc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTD/96kc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE77C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743360593;
	bh=NJ16D0HzEuSLXYKetpg3+3KvYDXaGHz0ZdusowDODZs=;
	h=To:Subject:From:Date:From;
	b=gTD/96kcF4H9Sehoh8XE3NvxrJaVPptlP6NQSKVdBqH6nTR+2M8Ul1oGG7A+NdY4s
	 ZU0JeznBsOOyT5aPAWahB/AkSo0qz4hk+zUsxeZOHY29u3hz6YDldPjV+afPrLBKQu
	 jFer2NZxYyoy5mig3uRtmJvotVD3pAvrq3998PXwse0vnKtzzX7W1XJcYtxQe3eV1p
	 Vh8d0Y1XKxYIvFeYRN08cFfbbT5rqIvovaI234aD3K9a6xcm7TT8pkGo9rQ/5jtoD+
	 C7aCnXw7ps/p7Zywal/LH3NakekdpQHPHgKO7XKAB30C8jtrd82gGU0lFiXPlCKAc4
	 I5EbJ1lxIb3pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F2AC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174336059359.1329.6974058722204107869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7522cb0aa08a5ab521ea27aa482a82616e84dcc5ab5140ccbd4df562922e68cd
Date: Sun, 30 Mar 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743360593
