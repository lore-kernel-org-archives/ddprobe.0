Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306BC15B0EC
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760405994; cv=none; b=ca5veWFVrAGm9mBjjTkOcv0NTmBcmPZJENNwteJsKB7BprkYD9+3bUXOyuPkIHx/g8VXrAB2Ft2pJkwu7CYHu79XeTy+TRr4wKzyWix6ejitMisZgSsH3sQ2Spg8ffhtnc1LCUmTyg729lZkKJaG1Ia28bpo1AmZibA+4nuKIWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760405994; c=relaxed/simple;
	bh=Pse/RWhQvVmqZYQznHBGUdDohPRiyXY7XL5Ta/LCkMA=;
	h=To:Subject:From:Message-Id:Date; b=LSu1rXxBwYAhqAwxsvwXBRSHfY4EdDiVrDsC9BeqSSlHFh4m0AplPoikAXx71TFnidbj3LXW1JDgjt1IHyaVRpOzZz2LcD93/KURZ/2ZKnn6qM+v5n9t7Mtg91HmiJWrsSUvVGMXac59VjPXFR5UMOuaLuJBxTq9YEmbNEGHBhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDgsIb3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDgsIb3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A433EC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760405993;
	bh=Pse/RWhQvVmqZYQznHBGUdDohPRiyXY7XL5Ta/LCkMA=;
	h=To:Subject:From:Date:From;
	b=DDgsIb3hzIBwrHXUtCuc9oTaqGdxwhNJYN6S1KyHS1LBQCrkPBsB89V5JJHGlqwnV
	 VNP6TTuf9ayAPyP9b/bMXmoABkWRWvr1H19UE8QQs10DQhdI8fA8oeppxDwFKwo+i5
	 UTDIbjcDX84yNgHwsma5BsQqjbDrSUEUBaPOkbpNDn8c3nNVaYMbLt3anG0GpuRYm2
	 7PPGXIBRcyxghNZgTNDQnHn27amyH+e9vQBY8V8Ob4d7qzIXbumYHQw4fSOJ3FRsFy
	 HEIo+hJ8U7H4qaALds1vSt7PDcWg+CZryjKE94lO26zudV6nqNXE2IBiZdvuLMF8tz
	 GmJcWqMk2RzDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A62CCD185
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176040599357.22344.4144390471192034121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44803b03817230df258c8d54741c79ddb0175f720cbfb78207f2c3c0f4ac9e26
Date: Tue, 14 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760405993
