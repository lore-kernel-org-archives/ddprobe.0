Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4933640861B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783502914; cv=none; b=FeMDLwq5yMSS7B+wHgsDRZtLNEmMPYe2F0ZsJONsM/obRjASYKKgMnbL5bWBl2Vc6HV4/dLy1y0WVH64u8w00sdtjkn+5OBitnJokq3rkt/GxA4eybAkwuOZ3J1FKIzUdhP/Sqt0qMQmzMoDAVkV2akU5eZW374K3ulFlyJb31A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783502914; c=relaxed/simple;
	bh=y9xk7c3lFvKihRN7KSIKylbU5vJNCuonlvTU7qrtpUQ=;
	h=To:Subject:From:Message-Id:Date; b=UIgPu4DstfqA4C7Zxlk43d+05qZJgE/XCwEhb0KrklbMRT7/uObhdgt0Twkt4JaSBLC+1TJyh8OGCrBOnQ3/3KHtGdNYaODqA+xEzgfDDKBE+5bZAa4tHRu6CYFnZeTgFomIz36Xz7EEr34D3rZpSvYORS5CUnboi3SoZmdyqeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKtrlS/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKtrlS/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA279C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783502913;
	bh=y9xk7c3lFvKihRN7KSIKylbU5vJNCuonlvTU7qrtpUQ=;
	h=To:Subject:From:Date:From;
	b=vKtrlS/4ZdUqP6SUCvXgMOmQrPyCxYy4mMIANU+hAkJzzKBPaFQS26h8ajOgYxmnq
	 mjiYxhPi4aVdInU07bLx/upUqOerIFtc8XylPPdpfiInl916obhPq1y/DKfms8M4dt
	 +H7qEwyglomDSvLtqoe3sPdPsjfMmXEv9P/k1DD9cYNuAupQpyXBe1NTzXzwNZc1hx
	 FkluKYaOc2lS46Y0xnrQWcaAj00pxVqzTHVYl2cC3FwyYV2Pd30nsCMxCFMs4iTlqF
	 fJuhgN8saPZZX8jUMZsKVlKUCYRM0gfcReto40rQRCjzu9peul7HdLcLQv1D4o0fif
	 Dw1KSxg2l9szw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EF3C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178350291368.27895.14382015663756334076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1dd67b9bf1585908ffaabbbc1aa89a008fd37f90e01074f496452708ac5104a
Date: Wed, 08 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783502913
