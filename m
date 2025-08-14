Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368812FF657
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755130794; cv=none; b=cxnFhfr0gJ4I5XvE+5APah/pqwZgdyHRImtGSDE5/RMvPngI6wED7XWi91b4jSXYlruTx8IVTGoK+wyVoiR7R6zgBcRx4YZt9tauM7AaMF/W19dbXRHNAYxUAEOmIctmC9U28NeZR0v1YOzxbLJCY3lkenP0DEvmA5pu1rzJYZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755130794; c=relaxed/simple;
	bh=QdMWd6Zi6jvxJ2ue85H7jSWJJWjTxJrimLLqX1anQ/g=;
	h=To:Subject:From:Message-Id:Date; b=q55zA+pIlGP2oM8wj0LJ5zgY80lhEyDoYbfFfFBIEgD+96yRrIWNF6NWfM7NrsfOgDUXwQcY+saZqYed4ZQqVin8pIbteeQivQQaYsXVERbG6zrwXs1Q5QwjDb/lJ6MnxMjNHYvTZY6K1Gs4mY75eI/MZLi2zm7QyK8iCYftlV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwH4/ziI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwH4/ziI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2F4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755130793;
	bh=QdMWd6Zi6jvxJ2ue85H7jSWJJWjTxJrimLLqX1anQ/g=;
	h=To:Subject:From:Date:From;
	b=ZwH4/ziIjVt7NdXshrWHThwKD9XQSJv+X7ChBsHwax5E0RpUc83w3RDtvYWhcZXaV
	 vKwSlVZCxnmh6rrWwYV2soZ1sSoFuJF0fWhnKSdsfPDjGxohhrECi4+WtTIGyjBymN
	 /GqieaawgBqGtb7fsCS7Naar/4q/dLnPxDFAsuKes/TOU1NJ53qjrGRtTZnOAKNa69
	 +EkqMyZwn6jwz3AB4tO16sztuRYHLnF13/LgXAexqBRoCTwS0gDjruXmE+kOVGUDAK
	 19AJkHzYD0YA0m7zK9KT+gyjaJX2NXfcdYBtPienA216XHIAfyr3uD96xlW3sAvCIF
	 +s54bEBxtHHkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E517C87FCF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513079357.21506.15738155471984647878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c5c6036dd82d94efe808dd8397f3e77e4a5cedcd575b5fb61b7e7306db5785
Date: Thu, 14 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755130793
