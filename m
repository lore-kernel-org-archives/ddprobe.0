Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B4F1624D5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761424794; cv=none; b=TsCjCjQY5BzjivlzDW/LQLxCHzQQ0AdlG3rQMezIGUCm+WvrfofAuBX69JOuGcVPwqwXNZj56DQEyBDTXB6k9eWXgLAaBwTRZP6NOrCzbOe2EYr5c13E+tGDFevy+65oBMbVKXtz/zETQsaITl5De0PuD8H20vZ57VBGOGzPZGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761424794; c=relaxed/simple;
	bh=IEZ/OEniDzYQ0d82lcbiY21D/0z0UOFzPTY/cf//yWs=;
	h=To:Subject:From:Message-Id:Date; b=pA+1NSsaCwJY/EBrfat/SmvovQaXgwDMzMEzKaKZHrODWi36oxh0EIZ00rz5og0JyWiuGblURkthwJKoelacC8AU1IGKfbDbgvTfGzLDTMPscNUPEvuDmRRXouFbJVt8W047P+oAgLU1ool4Z5EwLcTyUAAJ4+5oaIr9B3IYEL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcl2yN/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcl2yN/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96C1C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761424793;
	bh=IEZ/OEniDzYQ0d82lcbiY21D/0z0UOFzPTY/cf//yWs=;
	h=To:Subject:From:Date:From;
	b=qcl2yN/h7/I1IZXJ+b1zg3ysOT6vjq6ha7hdrqWXqRZDXLE6BLpJ275CYi774vS+g
	 PQv+W17n5ssNdrFqFnF03smBSYxV1qsxZUK2AOiMg68pN6j45Z1ln1Db0QRxKAO3/J
	 6uDKLn+Y45HGaAI0rbDHKhjZDpUQ7CI1ufoeIrBcVFs2pOhF1v3YCsF83rY5kMT/Vd
	 YPGwjbqaIWwFF8r9YSmVG+82R5HFhOKLtIituv91tqgQinb27y8vZVlxj7c7SngpiA
	 9QQDMa9SxXEhqS/NkD7xxM9bBpCUaSzI45BSJ8IfZl1NfEBX1Z0mFWUl5lZ1mM3Cd1
	 Bj3Uvl+sMKAiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9370FCCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176142479358.31179.10550308210631763040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37f30ad8d1fd834b0de2a0eabd382db48709490257c81c2abccfa92ca7da3a2
Date: Sat, 25 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761424793
