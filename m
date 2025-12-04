Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378F6398F96
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764828174; cv=none; b=UhdLeyQwdPKkWNMa9pS4M9fRs8yeRTAGVvO0BcG7sOJntIJGMdVCqBipwYJT2IW0YmVME6TW5ub2QkLnuED5O3Au2GhLSz6/JLSUmuvKdaraEiDj8sqhETNUo2Xyr3h+PhrJiAd5Q5+yPRHCegnJnMh2Ec8hNV1gPfhuNKSw0ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764828174; c=relaxed/simple;
	bh=p7XQys9re3iCBXHIsHbdE1+tDRjEjr1COFXy6rpJYag=;
	h=To:Subject:From:Message-Id:Date; b=F/iJPsuleYVqcn7dH84d9quMU1CHq0bt07xvJQ2ni/mgaVAYyc1K3PFfujKwasmHidd8TGefJb/i36cvZd4aaLdA+yjqoKxHfhsU0JOuhHheMI4nVqjFG5/Full10OKqkFRPepFlQnp40/OCgBZP019+3I/HPeCWVS26yM4vdxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2KVPgtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2KVPgtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF679C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764828173;
	bh=p7XQys9re3iCBXHIsHbdE1+tDRjEjr1COFXy6rpJYag=;
	h=To:Subject:From:Date:From;
	b=G2KVPgtTtWuiiGQCAeQgPo9lz8hUeL29J299KkDxLfTWHd/pBPbW6jGTiq2w/CHGx
	 fwJkSkkpCDclcBtwUmKpJa0/wNTP4q3ATmulDFPBGMvQSnxvZBYY/SboMN1OZLPVyZ
	 4H/+qVcEfrWRLYYOmquaHQjRXhMoiN5ZDGxw9hMBOiilxnSWitA8a+1VW8LtuWkUcR
	 DmZkPF5YXuBJORdgbWm+YUX9L1MNuXHsx5HeTlZPy3bwLGmc/25OaMk/+9h12K0svW
	 k75LAT1vLy4tHEuAOR3azPZ3xx8iMH8LCou6WryI5mN/5+DHrjMPdIS+NE3TDUSwh1
	 F2Of4E4WH3jEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A975DD1D862
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482817363.2854.5688424261517036937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70e27764a46ed0f3f4a14c9533d99983e69d8a7957c68b04f3cdc34a395feca
Date: Thu, 04 Dec 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764828173
