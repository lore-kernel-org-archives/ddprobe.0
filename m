Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034E420468E
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752737994; cv=none; b=gJ1+vduHFfp0Tr175zoewcftxhJg9uHyiHf+VMeD34o9ay+jBnsECGnXumIkGhAuLRqihDszp+xl6S5lHOMuG9vBQT6SPYyZAiuQp3xLChKh7RBOFaicsKX3KM27i381SDNPtmTBStR5RbEvw+9RFgdV1aYuVkWJsItzhAwr5NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752737994; c=relaxed/simple;
	bh=n3brV2+6ZV7Y4KSF9ZxcjY8Zd1JGkuj+v1hQzc/h+7o=;
	h=To:Subject:From:Message-Id:Date; b=WXlewLi6bLhVJJhq4T53lON22t0CDrHkh58wAfFwKRAPBPAWXP4KID/yLaNxXxCZm2Q+RhsqaLsliYKYUFsNvFBClLgCrcUgKc9hg2w90SyOUYGGdi4LJDaf8Z7KUmDK1hmmjRoyuBALQCRjOE5JV3e0EqzLgN/DD+xaO9sPCwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7yfsN1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7yfsN1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E01C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752737993;
	bh=n3brV2+6ZV7Y4KSF9ZxcjY8Zd1JGkuj+v1hQzc/h+7o=;
	h=To:Subject:From:Date:From;
	b=h7yfsN1Pjy3+4SPSMoczentN7XIyU6gV/QVuCk5YRRf9j9lU6BPvm+3N0BHS5QG+C
	 soK9NGSnCrzGRdrYm5D4UXdgoaOjB8b7WS5sBXsWmhOeNTPKIpuUk58gKq3qFHZmIW
	 QsW0giHEDWf81D5VCE31WWcHMQg6iI7pYw2ElMO8Tu2U3Qbp94Qwfa6AAyMfMBUVGM
	 xuemz01JNyNYoHDORiVeh8UIk3OSStIfMgiBSaq/npiE7F6I/UtNIJoA/dqVf69Lvu
	 MPjXVxeB+fs8TJ3XcvInV37L3FqvzAixYOweNULU0TfQDfnwx7M+IU1RRZ//BkFDD9
	 b6Io4VttTxBTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93602C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273799359.20107.14786040574027840940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65871ffe40ccdec6df78a775600902380b9a1e1992e49eb4e22ec598b6690c8a
Date: Thu, 17 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752737993
