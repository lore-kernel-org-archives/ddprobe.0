Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4484A23BF9F
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781467594; cv=none; b=qchQ8OH06RH4L8Cei5U2vnKAmZgCQADesZhQfO+VDWMxXj2i6Zn3ECZn4r9grlAljbo9sA8y0eQBUdTmjPLZGKhsCt4/14vNLHy74owT6e/NFRObmm0YzO2xibL1DOB15icaMzJpdxaBSBQCJT5sqduV+5DqE8aaJnQHVq0+ja0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781467594; c=relaxed/simple;
	bh=gNceUO3VAGfwihTKMhmQ3nc48ur6EbIKst8grzcBBzw=;
	h=To:Subject:From:Message-Id:Date; b=A+NBLY8gLgLIxZnISl1xg7l6KjYaAHGZNIR8QXtuNiNoL7Kuekrx1Gki8N0l1jB3idPVkVqODZ5Og0pqK9WVu3dkd8y98fGOSXYMRhpVAj46iodImre4irE4af3cl4eXeEqBcVicXRTW7C1u7ID4r8YieF51tQrOxtF+174Hb5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHGeu5vE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHGeu5vE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB957C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781467593;
	bh=gNceUO3VAGfwihTKMhmQ3nc48ur6EbIKst8grzcBBzw=;
	h=To:Subject:From:Date:From;
	b=uHGeu5vE8E6vtXBRPBG+N85k0S/s7tDNBgnr7/wFfBo6B8ZJJctM1C6TcH5p4JaRz
	 M0Faax/zMpzX8GGdJtwLNXMoQ5Mcz17vImjUzQ8lpfjAkbs1t26xqA1SXSnxSETMgb
	 M9jVMy3wZtuNNBFZA+oTmC5YXkWZPUe5ymqhGglJKNEj4OSi519k+qaWtMLHMbTIsw
	 BeICM8w9k3mCN/D558Jl315bvFH61H7qdbEBhKrnqr41BCdKTJsXQm+43aIjDZTNCY
	 2TOMPs91SEplf77xCDbmYBql9A3Nu0+mBAaXNNZwN+NL0n8gDB8ipNQHT0mAUOEBQH
	 jRCvSNRbpXxqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7C6CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146759369.1092.2181905997891819816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8daae44dfc1268ca3d0d61417c03f05eb3cdb633150056d620cde347f9f02e90
Date: Sun, 14 Jun 2026 20:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781467593
