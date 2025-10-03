Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234161B394F
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759526994; cv=none; b=QWYpKNdJFHUiJYVe8vcZHb9YW24ySx2EChgZd4t6G/tJa/alJp54H3ot2gwvKP0Lwbu31hqjG7DkqOFMqNyNjF6K6IJPC4YxFKGPSPn0MBVjt7/Q662kaFFpVQwyT6du6WDHp85F1obpZLNMosNSe59U1HAQflsdqE10dRU6rfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759526994; c=relaxed/simple;
	bh=dZIEAiXxq5Lo0wXoDbrkuixipklN7cDXD/tEGsrYUsM=;
	h=To:Subject:From:Message-Id:Date; b=YNDL80EsoWyOpsBZ15F0Gl6hLcFFLJf+OVzMrncMKhOEru8fIREnqKxoiiZVcG/jZPm3lVyu5F032N/NnrdK9f2ebue5IhzESWBMZU0oQaKhozVu4MI+JK5v+wj47tVa4dxdx5vkDOUndE2QQFRfazbdqycL05ZQm1KxC1WOBHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjtrUyxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjtrUyxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87D7C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759526993;
	bh=dZIEAiXxq5Lo0wXoDbrkuixipklN7cDXD/tEGsrYUsM=;
	h=To:Subject:From:Date:From;
	b=LjtrUyxQ/WdSgKDRlJxCN6x1tOHGhpRXdgYhsXBAeI+QXuF4FM0rfdGDWf1eS2oHS
	 xF2mEifuGdLwgdNlI/pDT7tYbt2R0nXR24o2qqdmlyniJvdVd1I6yRagrKDCnRiLQV
	 DcrNAghdkJzcl4e2JdVxJP/6hl28yhpSkodu0C5QoGQGyu0vcImlm6vqcXpM5PWvRI
	 VyG0/I4vt4kl22kvmvmpaXfqrMUowmm+mIx2JKQvZ54ZdieT8U8f1FQMoZZgvIrUZk
	 z7/hGb3OM7zMUpX70mVZ+tBu8RJE7StIXltnUMjele2SdzuyfzIYPbTFcLL11rIJ1s
	 SAgWb0/5xUg6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952A0CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952699357.1900.14403746467055231572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b5cff5a4d6874a5583ac0bd6653be240f4869f1cfddb7b9faa99c1b8e02b27d
Date: Fri, 03 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759526993
