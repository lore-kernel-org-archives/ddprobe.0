Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DB02DE6EE
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751571594; cv=none; b=lr/t90rh8uf8WzmmRm2EEFWLfoiJbE3eJ7FjJerB4NouFpB8KwhB9ALnGJer90pNugsYjy1YCjiwzCehflFUJfkEYmG482x09bVH1wUZ9jbRcjFthwRS9v/hBzJmVDawyHy0bGllLMZkGXOaM/EuUTR+JGwMcIiNTVKgmbrM6gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751571594; c=relaxed/simple;
	bh=n2EnFsoXxLdBgZrCdvNPJ9UHUPsnXP+c761u7/YJ/CI=;
	h=To:Subject:From:Message-Id:Date; b=TqWtPWHHtPfYDMvA8vt+cSJb1PSSNix9eRwrtB444ZXpFM/fUxzZW8kU4NnMIQQjFTD3mXb6fP42AnDNTbiB/deX1r/VmvadaL1HN0T4NJAgQnEKt7++d0wAzoZlYqxfmffB8HKnKKYxN3n9R7OCoqzn//2qPCrQCWH1s3qQioE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AeA73tN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AeA73tN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1564C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751571593;
	bh=n2EnFsoXxLdBgZrCdvNPJ9UHUPsnXP+c761u7/YJ/CI=;
	h=To:Subject:From:Date:From;
	b=AeA73tN24+EBL4jkrJC5kmuEbq1O2m64H+e+A0xZn3gAPAtvLbIt5glW+iTTtQDDe
	 Mj6W5HYyAd33GA7Bp8Ae02VNDGL+E6URsrFxXFnthDnBE/U8UIKt0nOfvzejW+AodA
	 dmwJjQlNw2jFZeresLPpiubb4VNnI9qGGzWMY9dMFN+eBUtL4lZiigt/d4S4AoUOsj
	 smpOzlkawZ0H9P0HdqAs0CP4nXweZeVsQOC9EtjG4JmrYJcYkj1mArBwsHDCmcxz7S
	 P2FxSIxWHhc7WLL8+BmqtQvdC+UNuL/oEKp6R6vzSp64eKNFFkqBU5EWWuOsrQupsB
	 tjvdPhHIK/geQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9386AC83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157159357.14135.12536740452875349398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f2e94ee2f90b0e0d5773b64a394b76505c222e4cd706398cf9facfb2f774a7
Date: Thu, 03 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751571593
