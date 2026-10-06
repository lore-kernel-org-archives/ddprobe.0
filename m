Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3395B442FAD
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791315034; cv=none; b=XBQGAL9Xe3vDROFqPLyiYEyc2MGAPm00EPPxw1VCE4mQCxx0Zo1OYrycxuqI8j0jNfEzUr8wkh3xZlO7HdMscHU92p/x8Jl2vP0vN5YE+Govi9CJXFZAv5ZWJyRmHbZ1n8VlrIKk6zrBhi5mBmnlYXXKG2zA+olT8tbUidb20lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791315034; c=relaxed/simple;
	bh=AI4hJkUuI8+bGta8do9Zxmx6GhPsvvThHt6fv+XARTQ=;
	h=To:Subject:From:Message-Id:Date; b=URdaGy9+F2mO6V2wvzhZrvnFO0oK5JnSOHurZggN7p3pc3IOorrT+wFgWUcf3PinQzGwsir4QEh9+IoIf1l7udHFv8F85lFgWuWBpTi9w9nb+gEbVXayFADhySVPjgwXRorJbkstyNa2D/kEVYtqoxJvagfC17gkdb6gkMc2ST4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdoS7h8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdoS7h8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE62C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791315033;
	bh=AI4hJkUuI8+bGta8do9Zxmx6GhPsvvThHt6fv+XARTQ=;
	h=To:Subject:From:Date:From;
	b=YdoS7h8gG3ElHaxTokU+srWEAT4eGs6Eap+Tyv5cIxD+2zGMi97Db8IZHQKbkK8rr
	 5qDiVUjON4HHpcqRaCLPmT/z0pJz+WnIWO1y0L+XHPvFMKHSq5ILUKEOxlSd6tT3Dp
	 VzJIx9+VFU+0IMWAi/l9rlA4FatcAqK0cBXJjJk7NUU9O5ij/A5NMi5NEFqRrFGF/A
	 dmNh1/8LRGF1StiohIyMgMaOQB0mG80EfJAlbtbhDJILkFac3Ae3O3zSKERZpL/Pc2
	 CSrYVbNu2jG92V8qQlTbMwIPOx6XAg5JM5EsAE6M45ENixdDrhFzocWxLy2Xps4V0T
	 VeJAFhg/e1CYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD938CA5FFF
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131503370.10939.626228748363724292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e351a548c04b6943a446d565c3acf7e289f2a60b86f70fd4a42be9be9c5d5a07
Date: Tue, 06 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791315033
