Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1002DFA3A
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771433694; cv=none; b=SZfcmWk3Pf8CyDagCzp7np9EFDJydfE6pX2pcPJlZTsZWMix+/CUOGBqQeTctbKEiPQvy9Ra8AndU2XEjmXV9KoZATulW4irgp4ohuXqARylWn6mYPNDt/2jBobu5XepE8fIslA5LNxqKWFgs4CKMoWxSj7mX84O84SPzYE0puY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771433694; c=relaxed/simple;
	bh=kJFkv47T+TMlE/M2FjzR8bJjdk9/3E09GA6STQlXNic=;
	h=To:Subject:From:Message-Id:Date; b=tulAQGhIvk2wXazBo++GK2BIhy0vI3SoEXv7GRBWCAbz0Nks+IxWX6WUMIsoLOya33XLrGhuPePoS4bMMruCEHT3H1MmKf7KAfBfSVYQzGxw+9mZkGTqD6X9wO0znhIvW9fnDHzd1+fwB8NP0jvTkR9D8QULemi9AGDDU5J+OiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWwL51uu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWwL51uu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C4BC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771433693;
	bh=kJFkv47T+TMlE/M2FjzR8bJjdk9/3E09GA6STQlXNic=;
	h=To:Subject:From:Date:From;
	b=cWwL51uu/u2A9VK3E9p/zK9jJpycn7YjBYws059FpzLXHNi3/pvBhqnZAii0dUtLy
	 le3hlK5VaifsPWlmFp3Vh/KZZEiup1RdoktrofqePP0emEfLO6I1xtz5K+AOFvidU6
	 XIzCA68x8gFMr4c2jFhAjXYRnDMLHU3YjEyPQnHc5hfDvjtWaJ7DmKpkWEINJhdvEq
	 K0L7YYaRElcvJEJ0QBJxxGngKv5Bl9hpbE/shN9K3EeeAC8I8IitZXXEFGkrPopoxf
	 aYjlgl+yIYbVPMmTdDugg6SSNj4kzROwl6bKfU+QnKHzKLD4deXBCBrXMlvj8uFS0S
	 T99YGV9NCkKqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91052E9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177143369358.2062.16276963794066592374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14cf0108803227c82efeaa3de2ac3da04d4524319e9cbcc520c91d6496577e52
Date: Wed, 18 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771433693
