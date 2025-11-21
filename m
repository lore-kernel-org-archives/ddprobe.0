Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256161A9FB0
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763710314; cv=none; b=MCnLHTQQ10mVH0xw8ymTsoNUkIqWlu6HGyHK8n+LCIJkEZ+HmVfVK2zezNsPPFv/2mDaX9Fc4epM9o58Yn9ILX9udKxKeza/90bXygXMDGRs9ZyY3qQELMZEIz2UWcAUWWtYGhom6VErrmwRm4yJtrBNYcK8wOydBe0Yoq/qFao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763710314; c=relaxed/simple;
	bh=MzuhW+JqApEmlNei4Z5pMCdHD14PdN12FGiku6c+Ts8=;
	h=To:Subject:From:Message-Id:Date; b=sGHADnNcVg584qpGl/RGNhrFlT3mE5eZLyOwSlmb7PyrZpO308/lEusAzBRLomJ4lN2gPCD01ODeUT6X+8QsDwfQr1G/oGA/9H81datb6cabLVbPUYiFJ4JQvStYvnvotLUyM0bc8drGElVccDg4U1qg2kEscEI9ms6UksPNDPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5zDpJWv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5zDpJWv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94B2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763710313;
	bh=MzuhW+JqApEmlNei4Z5pMCdHD14PdN12FGiku6c+Ts8=;
	h=To:Subject:From:Date:From;
	b=N5zDpJWvyWEoP/jdj3EcmebXPZgb+JT6l1uDeldsQMuLzhbfKz60moQ5nvcadITJ6
	 e+Wj0khYC/zzoD9kwwK6+unaDMDUsOV/UNmf2YXU0EDs1dfNm+ZqHuXtFTD8AyWCm4
	 uuP64HjdqytYYZhoca4WLeO/WcD4vYegF2ohMhX+L97Vh6L4oDZXP7kA56lysAogl5
	 eS6847Y7XlpZ+t92dXeh5z58UXnprc3Mh8vf+8P9ZVStU1+PXu3apxJLLhbwft5l+7
	 N9/C7lTr+XAeyX90UkxKTVhvJGYEghIk/fQwY+vdUOuBwjysPEFTkE+ewYSjZ3d1Ci
	 la2qc908J9h6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96198CFA477
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176371031359.29471.13993666925721414128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ceb7f3bf19dfbfdc3454bd4e04ced9092683e76fee07e600f65cc388522020e
Date: Fri, 21 Nov 2025 07:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763710313
