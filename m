Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462F746C4DD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784660314; cv=none; b=TDRpoohW9PbH+O6wTF6W7CepvwDHwOG9hk8zxmAS062h0O75X89F4yFVDcKPNyzsRf0q4RSlBYK8Mx3qq8+4R7SrZl05NGvQkbGoALuTWJPjlG1ezFc7n5kNQRNRNTazW/H1zl493/1AbkrrvqNdTHROZwLjfWYHOysiWGDoHFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784660314; c=relaxed/simple;
	bh=x+VuRrPTblS0uBWNAypT9T6qySKxya6jfgKyvCVavQ8=;
	h=To:Subject:From:Message-Id:Date; b=i4xC45NLaRLSlvQngyl8t19f0NpBlvSPKfwblP+lzafYI6S17G+SyROr7ALxiiZgMsFd9YhR2ic7au6YiVzfw/O8M95Wm7LYSkk2Tkurhmh96eb58VTbhvjqpy5yzMh8CnzH2WtiOFW1bJ50BCaLgk3i2ZVKxWzJDm3n2V5Jk/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCdHnDM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCdHnDM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB4CC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784660313;
	bh=x+VuRrPTblS0uBWNAypT9T6qySKxya6jfgKyvCVavQ8=;
	h=To:Subject:From:Date:From;
	b=OCdHnDM6HsFt8IjiejmsEM0KhIe1vGRQB+DAQ+aebm5QsV6lYTYOGaOUcHHZF5Vh0
	 lsXYD6dN2cPrdMgnCCEvntNEqKLYSXeA9T2CS9s+J4ozg79nwG2SATs9cMkJZBA9cI
	 7knHsF5nSSMDDOqg1slvPd5IhA8azVkW1RJAWKBGFL3UBewSiNKO0XavhZfEO9KwLm
	 iKoJ72MHI0oHyFj0043QNo+xIS3oBPjgNKEcrlVsanDEmk9pC5//LnbeWjk6PHXEPc
	 9AhJ7gQBr2B0NfCeENikTZEOAAUixfDMzjzy5UVaWZ5M1CdAMMA7WM/DDKnco7V2Lk
	 TIaAYqutzAGIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA780C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466031368.28534.11414475542078853163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db48567b841b4a3f6a45d5828c9c56b90cadf52f470537836b8a0d76b35acc8
Date: Tue, 21 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784660313
