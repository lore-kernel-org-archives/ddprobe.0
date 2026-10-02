Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5104F0538
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790958634; cv=none; b=nE6xJowoVPN/n6si9duqTlZrD3OkiIlugHxvHxL24JDUY3QvrTQf8wrDYD0zuBfJn7Y+MB2/ht/wGdMGAbeqDB0GgZ/m9bj2vFo+GGJXWojD1VYK4D8PoglazYeSuvog4UiqTwxDgpkwrmMr2SuHTTCd+VJSQmhKjgKZRX4idek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790958634; c=relaxed/simple;
	bh=yhzA06pdlF62NRHgn1QjAW/Jo18UTEF+1p7TtgbFpi8=;
	h=To:Subject:From:Message-Id:Date; b=pqlaUKSKYu7sruzsfFvzd+pjiSF2OVw1SZbDfSrne9RB1KxYQii28eTieB3rVT6OkoEJNG1stCb8kkwNF1wlmf+txTDh9R9kqiRqCeGdM+L9uEm+ep47iprFTzAKuFCgI0svBgMv0O+UEPsCNvtlHFpuTQZS7aJ4yW59B6Nn4yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAux0fID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAux0fID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCE6C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790958633;
	bh=yhzA06pdlF62NRHgn1QjAW/Jo18UTEF+1p7TtgbFpi8=;
	h=To:Subject:From:Date:From;
	b=WAux0fID7RvgMd6AqEM5+MY9nx7aPVuDVeNdbY2ZAMsv7JEYaNXCyjuAkpY5NaKtF
	 cDfqHx5kBMBnvPzekFLW8OmLCyNqI88eaAe+eibcbc7ASVrbo03OuCDcDAsYxap4lw
	 V6QNyECbwb68vDueYKaasdEQgM+S65I9QMs+ZBvFa2befTGTkafG1ufryog8d468on
	 vjUr6wBVzUFOBm8mMMv2Io0oPhSIfdDrAc1FYc4xgHEmXbHbb6u1WDFVi5xb9hDFFF
	 oCXbuC9wiv4OQJjiceN1zsEzV/JyDTP8VOiRmnSHUew8z3pqX1q3ynT/s251Zv36U3
	 lm+6oHZ24OClw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9BECA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179095863368.32258.7722486326863794868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42296af043da53bf2b6af37e34576289862a5b9179277c4425ac0482584281e4
Date: Fri, 02 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790958633
