Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376A14C92
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770551634; cv=none; b=aFK7iSGvQQ1SdA6eG82Y368jrHs0+/XSVy/d11WASQTux4YxqtriA7VvuTdfsva3Ma3ikMRanwgqH121w0N331vkiAAZxtYHrXLBwuS9wbF1GoVGAdeMhJkXy3cBg+8O6EWk8AMBFlFR7hvhCBil/v6UmB1OVqGuqDUJdpPz7+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770551634; c=relaxed/simple;
	bh=7g8Dkw9gdVC3dOrVf0DKAAUyLz4OSoAcvrqwrukuTAw=;
	h=To:Subject:From:Message-Id:Date; b=Ez7hIk0k0Ox1A250fC1FMYNcZLRAM1CW76ixmUZYVxYcN0WH27KPDa2XNaFzfYTdAIy4wuzdigoos5pmnD2ULw6Hu/amv8tyugL1oq2v3m31O3/mC9N0gkGvOTwIZan5irfW1sQ4f+KWRwEZ+jvJNbtutm+GKa81rDNzk1fXmF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEjvRQcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEjvRQcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBA8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770551633;
	bh=7g8Dkw9gdVC3dOrVf0DKAAUyLz4OSoAcvrqwrukuTAw=;
	h=To:Subject:From:Date:From;
	b=XEjvRQcPpSfaYk1TBxD08q7ZuSXdHsAAjcTPaamWSmtGm4BHLs1QomsSV2zo79NPe
	 hZC9Mib27yOL0mlM+3eg47eMMY7LzNUsKopRP2o8AV1RaJr30c/eTbC1HGzHJ3dJfu
	 kB1QPOcoefYtH40V1hAvQOWdVrqpLxvWLc6f3lSA2yGvhy8QQ0yYu97yYpJNZFmBOd
	 43mtU9OTuGm3H2QFU8rPGEv+rw7cuMZeQehCDdAvRQjWxgzeICkxJCRtuxz58pIqyQ
	 SQbKM8mHuJGZw+OD1LzYuY2bXzzf2FAWSdQPf5260NoAPk0vh8Ejn5yXdwR4fG/gJ6
	 vDej8URDk9ISQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAEEEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177055163359.5536.12831231057711404970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e147da43cfb46c18a1d1aa68d991cb49a596a4eff62242319d42dcb2e8a3832
Date: Sun, 08 Feb 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770551633
