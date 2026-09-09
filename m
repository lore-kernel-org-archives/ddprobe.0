Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAF133B6F1
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788922834; cv=none; b=MCnsBgzwqgsx6VpNchVr3vij4MimeP79+HkQON42CKOpfdiMC+kbFUNofyvYsK2JNGjh7YvbiFge6ZIRtA+44tNvZOAgWU3rYGgtxY0WWGKvaaBPKsmTrZb1s+7n0b+bjTJU3JSdKKFTDMLQobibB5xoJ82O++2/cQN+5MCmMiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788922834; c=relaxed/simple;
	bh=J6uS+lOCA8zxYwsyLwzdUeQNRWLYNB+vypos47ASDuk=;
	h=To:Subject:From:Message-Id:Date; b=abKZfjwqyohltrHPLmK1/cuPhtwT4QWkVMv/d1+16Ee8xiA4JAMl8fvRMrtlim+zkhe/+Wp0bn4LNrrGBoJTJyUUqFVYSdfjHa1JWDpNIky27Eesu7ubrSJfQQbaa6d3mwnxqug3SKGN1PYP7PWhIft2suFBbTjUjaE8WDVRBso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akoeFuXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akoeFuXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C3AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788922833;
	bh=J6uS+lOCA8zxYwsyLwzdUeQNRWLYNB+vypos47ASDuk=;
	h=To:Subject:From:Date:From;
	b=akoeFuXXwzFW9f/XuX0b6lX82ohQ6GJSDLUGycepYrC1XuAR34v5f+nZGA9JtrwAZ
	 PRTOs0ULCT1wvaq8UWc4tQynB3YumHLE8NTd5hJLqe16vfSiF6Obp16uSfIt4+DUBz
	 wZipseeKEOCorqk7NOzuGfP1VHnr21njbw6/EqsZ3hR/Y5muHVwaL/1G1CoreUpXRt
	 mIiXj6mwcnBLHcV/5VffFUz04S9wfvbdAFTSd0OxkzxaFs28X3x3vocXpxfYcCrhjc
	 O8CCM5SNevZspvtoDmZWRfPzEgJtVZyyeNPHJ5LXVGyStmrfE5T6znqULzbr8/kUgS
	 coNr8BOUpRqwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF88DC79FAD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178892283368.14474.5188323092311849246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce660a665021f7d0e8828686a3a91a7337a87a7dcf9343009570e41e4cbf6d9
Date: Wed, 09 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788922833
