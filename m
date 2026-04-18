Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BFCDF6C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776529054; cv=none; b=PX6ANsncclwZHLLqX86TGVzODy5x1qstqy8zIW7HeuXm78mdo323kXOtTAzI/tnnGduuOtVWni+1FPAAztwAq263hQi8TjXOFtzkVu74XxVhKh9WeeE5Wqt4aLc3L/rCdXOThaaBJ+HfZIZz7blPCz2u+2udQrCwUiLNfYnjMmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776529054; c=relaxed/simple;
	bh=lYWJz1iAUnA72R07+wdHN7eOOFduC4zgTJWo3YIWcoo=;
	h=To:Subject:From:Message-Id:Date; b=LQDrnSlUSlpbuk07U8RFLL8KH/rwuN0G+8nda/jsTOoA2HjViSe1wpXC9oTv0B3J1lF1ZpbBis6pcEV+29FlKyzZLAMqYlRczZn92KBK4jynAJBeyGYJ7NKeuo4StVIHFxjUMdVH5WRF8pB8uYqzAHa5CoDCUtOCR05oxzzRAe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZPVHFR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZPVHFR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1661C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776529053;
	bh=lYWJz1iAUnA72R07+wdHN7eOOFduC4zgTJWo3YIWcoo=;
	h=To:Subject:From:Date:From;
	b=dZPVHFR2yb0Dij2rySu7sKKZVb0i4ndomxIGQx+71/sDWbrV+j7skAEGhXirqbe7s
	 D5t4gQa3+/8/FEP608QZUYcZnek5pzo4IngHsd8FpAjOStU02hes6b2jptn5XD9s8T
	 vAMQrDeuXtStYa8YsApUE7fW0kj7OwKBJYGN8jRcmW8IMRA+yt1HVZPpQJD7rk/5I0
	 53oFHCDS/O7phoISlmGctzQFDKOCHPmXK8Z4DwP2OkXI5zEVwl2sge3xRvV+Puu3YH
	 x9xHSu9s/FI8X0itCjsarVQZLVGGlB+PdRGZuTJfGU2nfiyZCmw+wNbXkYF98ouS5G
	 +siMKoEcraLMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC840F99C88
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652905368.28987.12862201929259715744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270394dc02d3b3a328ebe57cdee528fcd9b41b76a39a01eedeb4e72befd8f005
Date: Sat, 18 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776529053
