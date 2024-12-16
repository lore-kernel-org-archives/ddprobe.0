Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E6B1D4607
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734383154; cv=none; b=kMIFuUg6M+RsbwdKATDuu7c2Sg8bWdKBRSc6M1e6jk2qa3k3KisHl8oQajJt0PitHGYvrDTG+AxJ4xvWC/mG11Oungssm4i4Bpqa7kp0TIF/TSp2Lf6u91sPExJBltJJeapfwv5FCbOU+zJyNV9og/iFJ38SK6nDcQXGA4klXnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734383154; c=relaxed/simple;
	bh=koUs0ZXaAnvrslgxtbNZMbxX3N2uoqO9Ocj/lBbVFAI=;
	h=To:Subject:From:Message-Id:Date; b=EHeTtHzCNuVdslY467BMUU7Fe4rbfvXOHZsd7Sqx4D7xeufTT+3l36u+ycUciMYZLSv+h5uV6wOkn1zAc3cSnrwD0bpam02MIP1k6fAm9P1gGvqdEChTyZ8oSKvJNYU/d+JxwCtbq36WTyAPHXd1vJclNJhTYI7+mJxU6PmJLX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gi1X7WYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gi1X7WYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FACC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734383153;
	bh=koUs0ZXaAnvrslgxtbNZMbxX3N2uoqO9Ocj/lBbVFAI=;
	h=To:Subject:From:Date:From;
	b=gi1X7WYZubdvvUeZ1n6e4trAWNZXqs3PKpevopq0nCpr4921om4nK8Rc7ukYr/MmN
	 Y5p6H3lU+VP9r+lDGzi2AsmfNtEXhIhLTdxit1olxFFz/n+jZqgGOfA0mM4exlN6KJ
	 k5OjsAhhOndvv9ek78CUgW9lQzxxLbg5qsI19BxWiTLGNFeqpJ6MgKiqkmvj+FQ5yZ
	 mMEYiSLJt/ryrTxbW+WI3RxkR4U01UUzymBE38TkIc1ivScvbcaO5soyDNB93SQYyl
	 LweUwiSa5YHLT4ZwVZw89MB2SsuEXoB4LhTcaLMjMh1zMIQmsQfA1P2stcDvamYMkT
	 AuPMHBTpVwAEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9213CE7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173438315358.7331.6749945215566708743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197c316fb1b442e01f86783848ae81edeb9dc39181179e20aced7e7b0ab886af
Date: Mon, 16 Dec 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734383153
