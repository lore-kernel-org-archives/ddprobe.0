Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A35A81E
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738887354; cv=none; b=NVT1hKZCVQovpN9W9cMwW9w5mqrGnoP3ILpXxzd8tjuYBiXN3a8IfpdbEuHjrIrqzbVXChV3po4ADauxSRTTZ+3dKd1MtZGVDcGqeqRrQA9YYjLMr8RB1b7b7O2ODpjLwcdRD57aU5bHa6gmvf9IWWHy5jS3emRPmCx8ORSix+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738887354; c=relaxed/simple;
	bh=Z/50RauCbOK3ZioTh4qGvl4XXkCBNqhQ5eXo3DjZOYc=;
	h=To:Subject:From:Message-Id:Date; b=ViZqLjubNv/emoqYdlddmB24LYP8xbCxqGYQ7iv2Frv/V4SR8sSr0h0XysNRVnCfOW64cCG0XXkm8RCzaUr9UVvKmSIAVmN7rQ4igbqaois74dDckyHxcGTx0ZKxvm0ClARwOM0TnzNl+XSSbH1CLRtctV/WBXE111reRqJ/M70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMT2Doz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMT2Doz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0362C4CEE0
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738887353;
	bh=Z/50RauCbOK3ZioTh4qGvl4XXkCBNqhQ5eXo3DjZOYc=;
	h=To:Subject:From:Date:From;
	b=XMT2Doz6awbeaDuHKQob3HEBFvV8HluwK4O0V4oR2hO0/ehUNc7K4gBJa+te49cCz
	 6iVtVJ3CV8GxETFl8Iy5/7FhMEhXz8KI1cmFA1xyAs2PqW1hq5MrLJ7lVTe8omEddB
	 eXnBzo49ZFDYvodBbcsAUrJQ0dOT37UQsgL7gYA3WWXNiMn5o0Fe+XNO4kXHXpRytV
	 s84qmB+xeW/6NCvyhG7AC4q72BFhfiATqNCH021DqE+bRTjA026Nv1InVOHdyL3r9t
	 Y9r6U67n/jMMoe1a7mj2PffSSmy4Voxxe9nAyxUQ+eVuDBbITreysWMQ/DGdF2HERt
	 9wBpLu9ZcK51A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3885C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173888735371.2268.284995853673605041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba49ba852e9b120141f6c6153e12221d9be2724bb5a78ca4da980076cee7f7a8
Date: Fri, 07 Feb 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738887353
