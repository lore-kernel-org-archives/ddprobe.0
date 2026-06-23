Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060103A9623
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782194194; cv=none; b=bHClFZI9bmCVfkQrHvjDRIuvNh1hWGR+REFWn2Fuy4Z4o72sfr0dO8D/wt2wnDqgY53bDlOUUTJGDtNj9G1ZwaouBR3jfhi8KxBJRg4PELikKyTtv/6uRaXwkY2hDZTuppJW1sppQr6u4Tx+C4NuGkF0NX7mXrwDBV7YkMScxUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782194194; c=relaxed/simple;
	bh=KYWdKewYBf7Kd7c8KKMumR6tGuUiheYJV58///5pJ04=;
	h=To:Subject:From:Message-Id:Date; b=KM6hAQeRjvqbu1XcgLbifqVkV4fsn3TtHYqE3RwaVa5aC5Sr6aYYxqrqej+wg9No93ord20//SrG89p6OqVrOD+OKb7Dl/chujbyWCoeXSm0SloAKuPiGWTm+5ec9QuTC52I3VxFB+RNYibWJGdmsaWlE6eTf7QdLjmv/CnBEAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P63OBSGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P63OBSGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D99C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782194193;
	bh=KYWdKewYBf7Kd7c8KKMumR6tGuUiheYJV58///5pJ04=;
	h=To:Subject:From:Date:From;
	b=P63OBSGilXPtsYG3extKFEvMcLRWWsX/mAtRCn8PmrOMXR4jdzFQWJ5SaLjdDAtIA
	 PhefoH1AC0y6yNGJY0mByY5YJDbrrt34+jSH9DjSjsU7jIYitiQDJCByDFwd/+cqgX
	 KBTzsOebDZeSo6ENi0MD8NfKFp+LjMeRfN4xOyRc2/nTsdLcmG5J3hT6bLWdrqCa+f
	 zLEN+569O4Y4LRE+o+GBdU/xV6BJ7Bl0epfRlnsVTzcG9bXlpzOOrFEW11OZigB1bP
	 Ubp2NXiwkJOdzNxcCAj+J35Wj+ZP61FDjRmDzSRVhQMZZHbNXt6letK3Rc4wwkiR+0
	 IDaLfuryDPBHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAADFCD98F0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178219419369.9994.14280629165375983455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 933dc0e6bc9c9a0fac9c8e43a74fb5ff3573a417474812c5c7734797fb74ce7c
Date: Tue, 23 Jun 2026 05:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782194193
