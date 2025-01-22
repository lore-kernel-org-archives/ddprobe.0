Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0681BDA99
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737546354; cv=none; b=a5IPr8PcaGiAqakt2mOwytA/oeWhm/V8R5gEgo+GqmUzGiQ2dk/N+eqx9vlS3tcfgAHXt9wjC9++1GrVuPJerGbBuoxkiRiE0DKS+R3+WTgHG8a9oR7nISja5HYObgIxluhbEVX1l5G9mcdvmCtTLkkFdwkgR7eiFm9B8+go/DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737546354; c=relaxed/simple;
	bh=KJULMyW/x3rakuDiBCdMwteWS2YU3V9Z2E/gvJRD2NY=;
	h=To:Subject:From:Message-Id:Date; b=VpQyX51Ixh232fXmLBUjOnnBtCp39I/nCT4MZV6YTGu/Q2badcGDWuUdOoIwMVMCaNqWq/rrCjEUxEmFzGK1MnidAiV7BeOJRgtPLJ1SEZtEgFe0gFJwHXLAaM+1sWDi8xHUATZieQ+Ir1vdqPbB95jQVw0gJaYoYTfImi9rFGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNgoLzPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNgoLzPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA104C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737546353;
	bh=KJULMyW/x3rakuDiBCdMwteWS2YU3V9Z2E/gvJRD2NY=;
	h=To:Subject:From:Date:From;
	b=eNgoLzPRWczC+pujGyAiziXvnnj/R8BGPyGrRKs/OvQMeD699sbqA91a+dXo5zcjs
	 ebZAe1fr/s+yZyJWSBgSV4GHj9kyu77v/wIXNfVmsLNqGafjE2hA7+rk6C6fPDB6pb
	 YotyF83u7FaKx4BIyqnDZnj2BBs0elIILevTnMVIEOccS0TLwyEDcVdv170+13sVvG
	 oGkKSDHrLeTFpSaIg4t0Y7oVrAfHiSk/rnavjE76Ie2ftFoVEWn5mL9mWtaBX+L1SD
	 6sjw5QPICDWRwsTwpg9whpqZ2qebegNY7SFQ73jRjgJnsePzvK65y5zDcdbqs9mga0
	 uhHAVnh9fBdFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910AAC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173754635358.20229.5007988870649523408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d5c685a6029c88808f7f4f69824e4d0a77cb9b57beebe0c1c9706055a134c4
Date: Wed, 22 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737546353
