Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CE111E5B66
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 06:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739254194; cv=none; b=PPxs8jjJ0Avb3u9UElgqR4YnIQUY4zAYKiqklZexmQyNKrQAmpF1hu4A2Tbed6Dt+2dRKr6i82M1VfckK5V2lxqgQS/rrK0H+Whi+qX8uPDblMxqC0qhVz0Hun7W0QpuxxCTRkmgt2+MwSabL3/DqQVwSbajLtanmREsb8GOdCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739254194; c=relaxed/simple;
	bh=Fe5dB9tmmUVKvmxQcq89vxRD20QKI68GqmvZTw7U6Po=;
	h=To:Subject:From:Message-Id:Date; b=UHAYn4SxgrsDhGP/WO9ReDExzbEapELDlp+lo/AD3n1IR/NbHL5KHmlX+XLHImrCpif+kt3wup7wQmuejFuAC7yZXF03ir6a0GtlP7+5lsJxUyzkw59ack0FZeWyubbX/GCJHE7p6+xIlqz/jAdQTA91t/xGwLyJYwQMqvepuw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMV4ZpAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMV4ZpAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 028BFC4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 06:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739254194;
	bh=Fe5dB9tmmUVKvmxQcq89vxRD20QKI68GqmvZTw7U6Po=;
	h=To:Subject:From:Date:From;
	b=vMV4ZpAFMDFTEB/aGMDrr1ndZLJxy5wIU9T2k5rg3zRwU12Hp1QtsV1l+I7LMpYU6
	 vTgIXlGwIbRA8AAffzeFRFqBTlGSYTOMPRFlbspW7/cLlrFkg5qujGATBf8iRN2Pvq
	 39DylnbhcgVro6KUU49ndTO2Va4pmcO5E8/vQg2DH0ozZfkC1CIsT74VZOqa9lNbYG
	 81/JOQm9+aVn43Eb/w5wXbsZH32J9ZbnqrkPbRQYs2wYZ2HIuJrJyfcM1m07loz0zj
	 xFdZM4ZKqWmwSmo/nbGNUCOKOwja0urSPKhdCBnX2mqDWY6coJtdxmpcZI1lIsUq3v
	 kh5Mvjpaz8ctw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B87C0219E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173925419370.17143.6567051802967882449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9144194a852fae80e077522269a2ac659960a840617710c04885905919b6837
Date: Tue, 11 Feb 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739254193
