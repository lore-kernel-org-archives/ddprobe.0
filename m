Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B984D37C3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790603434; cv=none; b=CfbsQ2D/5z+GowcYyx0vbzJTrrBJnNsLmcxuukLPb12wXxM8F4FjuREi153vY4IhMjlkozRs0LBzQeNJv9amObWPUPIhxC4gtfPlW2RB+Z8Da3eK7zORKmA/Hg/D5hNOMnuQ7k9SOTwd42RIIMEcz8DFPmm3Z5i19LIq8CNaFIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790603434; c=relaxed/simple;
	bh=A95SNAk27AFDMhB3YlRYcoKKuSvXxOsem7sFWDN21HU=;
	h=To:Subject:From:Message-Id:Date; b=u4F+CefbuXXQynIQXoROmiwjFnwYj2+Encm9WJSGqFfbr7XqC3aFjU52zqa3jOFF8xRKqz+u5LOtVHAhv8BbE245Eg3cZvSN9ABsEEA1W7xMaLaRsIYGUga8Ls4dHc81zxyg3NqzpOcorTDYFFhaGXTFTdzYzXPFs4n5Q/hWaec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBOghAaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBOghAaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4F0C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790603433;
	bh=A95SNAk27AFDMhB3YlRYcoKKuSvXxOsem7sFWDN21HU=;
	h=To:Subject:From:Date:From;
	b=sBOghAaQ6zo+eCGKcwRfzJ0z+LSZHbJ11hti3eeAH5G5pUnEjv5tZ4+67P9cnz7w7
	 BcdWE1vVjhosU2WxrAeSP8VsRVZThw20ztaFQ4y5Z9WxXn+9Ndih5BzkGrQDJTztte
	 G+4nKEZqzhZ4x7D8d/9ZipSnCr1dUfAezCYaj4Ldui9uTTfD4DamuzuK4jQvrw3Ony
	 DPL/WkuUlafOlKkrGjF6MB+9iAfYroSg8cEgKIBfu3OQKNYGUdfrRrNVA13tvNVZCW
	 wF9FBF9vX2H4pAwaEqynQ0nW9FvXVzRs60Z41SSMnx/XRNTAaGrfg8fxN02DE2Um70
	 +AcXX2/+SdZPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB47BC9833F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179060343369.341.16097753681769445912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241567d9d973907581c02732b4a5f360191dbdc61e28ecd6733ad7b14e7244f8
Date: Mon, 28 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790603433
