Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEBC17741
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752124794; cv=none; b=TDFtN/fhek81ByEgBPVeE5hB5d7ep83m+rB3JjKetDYdzAatD69c9qfTmhnG3JpsXde3WMyRrM0gQwg4T06tiBYmp/tEwDP6kh5gZwxoptpR+y0idv/wIO1+vzEIGK4g9KEs1kplMBmO7JQsW4x0arsICWm4Qr0/0Dp9svzd77g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752124794; c=relaxed/simple;
	bh=jqfCsy25wcVSDrDWlGmLsqTdQ398C9cuMyDozxDuxMY=;
	h=To:Subject:From:Message-Id:Date; b=dHp9KJ0G4Q1i4K1bij8wHTNDCH9K5GsCLPgIMkMC/ODuqykGCWCkT8ZMlHeH4FJp9hQRs58VmN5eek69FpkKeIgIDpxboW429kpANAt2qQU1qYGibPry3s5DbhfC1v8ilv1DIRP3byoCxF/jVfbBmtauuun5ughRlZ0CGd9/lKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMAPx5i4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMAPx5i4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEADC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752124793;
	bh=jqfCsy25wcVSDrDWlGmLsqTdQ398C9cuMyDozxDuxMY=;
	h=To:Subject:From:Date:From;
	b=FMAPx5i4txOApOfkc/F9fMMQv674Vk6whS+2k1WqNRIWTX73OWqWG7WhyAaIdd6M+
	 m6umWGElSjxCKIILgvi4il33ZWuXvE2Rvvvo6VUF9cGnqnuPew9pmOqKoP8pccnczz
	 KSUHz+zaUMEbazPANphnE7NNnum7xr0d96vNlX9BCExPuh9ZMlpX2nr/6EAm7oPgTU
	 RCmXK2p4RAeib7dDU/WipV6DvbZ7l3V6XN1U6S6sa7yV48hwBkwo6thXEJRPvaUY8H
	 mL5JFLPHU35kxF3AtPOY4lOAVWCEn05l4SycRHW4ODKQvwsWR+IpmJCNlbnTVWhYxt
	 9twJbG99uisWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F39EC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175212479357.9868.6288910760430264772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ef25d25c3daad53f8553f5679011b818a6b58cd4040f6debb1830db4d7c192
Date: Thu, 10 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752124793
