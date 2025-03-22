Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D57221738
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742653794; cv=none; b=eO2ASqbSRWDwHLkDBGShxTVsg2Fz5rppaxI7NrP+UV0VDImzqfg4ecvFscrynV+s/eapqkOX5Xa+vjJFOgBIjyqa1Ia3AjcjkysYyZFpvlwR5zvfzNhgidepLw54mLjh1WaDOd3tPamDi2SWLid96FfXICqgxAbJfcPP93nS7Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742653794; c=relaxed/simple;
	bh=+Lk6o3nwhkWur5AGceEqfQ+NqSFUfcmoWkks3w7gC30=;
	h=To:Subject:From:Message-Id:Date; b=ZoBhqbATuN91nkOws8+zaWQ8o6yjoQYdc5k87+3KN1vVhf92l7OvLiuWKoxyXNYN+WgBEuYvuvVJRMVCuooXcQWGkPsJYgSXrfP5Vbsxc/MGJCLdoVFAurQbQcPB3eA9z4Ab6Z0TItt3nnlzcgaI9zwFOppRw3L2y5l1EAStAAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoeHzB1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoeHzB1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF8BC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742653793;
	bh=+Lk6o3nwhkWur5AGceEqfQ+NqSFUfcmoWkks3w7gC30=;
	h=To:Subject:From:Date:From;
	b=YoeHzB1+9yylwi3gGzJnZo6g4n9hUIZxTXJbWngi7OJjiEHRUZP4qAfH5hG6xuwZ/
	 JyabP9gxb0qPKx3/CEVLJjfG4sefGGUSxwDsYSvhQEXvrd892dSbD8J9HKK0M5CVuH
	 CYzcV469jWWQPrAPsVzrRvbrkLcu2lldvhxrmyGOZ1ylteVf23BcDR9KlnPxFrFdM/
	 BYNxs9US95Q7GihF7WqV8q78p+HN3AUlx9lCbdKiqcHb+saFSN3TeSRIp41hEnsMIj
	 7ca00ExCJuG8H3GMejirmiyq+BpuVWREGUdrdjeyIhXFDFvN85+T2sWJb+cW/Ydi5S
	 umA3iP2UbNP2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980DBC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174265379358.17152.914779447239502165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 250fa67bee869cd050e53c443cf051e28a7366d3f46d8b3b093d401b1eaec85c
Date: Sat, 22 Mar 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742653793
