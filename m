Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D15327A10F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766116434; cv=none; b=IfDTqhYkU9u2bTnISbpdkSruKw8Ar/j+lJCLDsRGBpKmg9ZcQzJ/Vo65Z4ix7cS9OnwAQinyj9fIix78A4Nbpj/yC1SmgWmBWYgsp0wTJB2j6xQ8NWy2twOQnm3yf8iLHAsP+Pp5B9bhha651iXEkU+mjsG1ZIscRJgpiJdsEmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766116434; c=relaxed/simple;
	bh=Der6p66NyVnnatwH4lzCZs9VSfVOfW2+GO5LRbwPPbE=;
	h=To:Subject:From:Message-Id:Date; b=B8461cshXzmwhoS7vFHUIIKhoDvVN8XyXhTcK8y4YBFfgn6+6d7JxUx21e3hwvzKQSZg+7LAO80ck95FuvOwVNJqCw0ygQMSW4FMEfABb6nwwjHD3cWFSZdsNNWHC5tpJJ45Z1TlQdvp4sgbXm0TCJXQKZE377Bijxm+crxEp10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpHqlEqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpHqlEqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2041C116C6
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766116433;
	bh=Der6p66NyVnnatwH4lzCZs9VSfVOfW2+GO5LRbwPPbE=;
	h=To:Subject:From:Date:From;
	b=QpHqlEqVxz3DpzzXdWP4l2us5mDji3DDDZ82kvZHzTqPpVHQiXqLOKYTQL9JMFv2t
	 wRwAeah9IJUF3ekNic+fdCJ0gKkM0SyTfDIfCakEmjYxTJ1UXcw6lpNlDFAGiIwYD2
	 anxhcVunq6CaMnCPJGdnMr4nsfka/vPpxqjCUbY3ee7SVZY7iPH6D99Yf3TQa6nfP8
	 4LxPfnvQpS2RfOo05XGsL5sZrXkoYrU4KWrDBG0F55CXN0IEo7+IIhX7Um10X8MEOc
	 W+SrqFOGRB8kQk7fhW27CIQMGXutFpPXTZrJqMocIfzZITqcoROfFviFlYv8tOhlGl
	 zMkUnEE0JsqeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E472D7494F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176611643363.7491.10070463401481818124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bfa75fa2de36d8d04f75ac92c289e87de49f9bcdd0cc3f0866a289c1b7d9a56
Date: Fri, 19 Dec 2025 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766116433
