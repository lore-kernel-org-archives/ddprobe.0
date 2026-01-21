Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EA134D93C
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768994634; cv=none; b=rXQmwPFPZB8+blKvz080RZSyl0RrSrpyP2tHvW3mYt+NC6vLsi2HNj0cihe0JdzzpN0A+51tbTeIrNJxIB/XOA5IjCQVQAXdspsokhAXTBBdDEW7y9oktccuzlKiB6rX2mOMHi1pW4MsX3qjKIMU+vrPaOrM5iEI4FhpgRCNB7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768994634; c=relaxed/simple;
	bh=1SjSTcormtCC6Ue6g4jGuYSaQHJy3/mMof0f3r3aemM=;
	h=To:Subject:From:Message-Id:Date; b=hXnHOpahZZo6aQ0E8pKRbmfn37L0R7JEEVmwvC6McS40EOK0XWkemV2UrYTtXaef8FyV8qGS6r3t/BFmUF/Zw9SaUuweG47ckgJ6dlk3iAy0g2b2Sbz+kBEjmC/6RbYxiP75vV04R1DNWQTU1V7JI5UC97+3HhPcIKRvVq00UWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsEIWRJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsEIWRJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A409CC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768994633;
	bh=1SjSTcormtCC6Ue6g4jGuYSaQHJy3/mMof0f3r3aemM=;
	h=To:Subject:From:Date:From;
	b=bsEIWRJyZ0TSn8IUpdPE8jbxTyH/tIud88EGQGh3M/a99i2qS6C6+qBxHcsDrCM3Y
	 8Z5BjuK6g9fnQbNSloxw274HEI0HRHsjgzmTgNsZ9my8fu/9nILIsvI8F6NZYN0rSG
	 HZKdxEiPGRaAKU4I3QTIfjnM9EXJruTs2QmgnBYxx7QR5vCTIukq3m02SoLCLDxE1j
	 TvOBcOJ+ARNHWEhU9uXkT0QK69mayUOWA/BP5LJBZAOAVU5HeuyCNB3NFcwz+CR21U
	 Dw1YLSPhAL/UOhz/S3gFQa2+eQedKYxbJnpj/eNBIjos7v/V/utzC4yvXv6kFo34YK
	 Wl+FybRfDQIPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907D7C44503
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176899463358.15074.10924924659643645022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7abb6aa7cb5a370a66019b158026b1f15c7b819fd28814238032630c5b9f44a1
Date: Wed, 21 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768994633
