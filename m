Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CB92AE6C
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727298954; cv=none; b=Db8o7SN6HW025a6sblG7FcVOSPxCQC4XRydqFEklyVgcCSpZdkem9GINAFBqsP6SrnAl3upduSM4xsDd1vdCoAmkds6AimPyl3KMZ+gCaUG8f5fTVd0ExI+MTNtzoPeNSbzqXT2MLVzhm+iGeH7EMq44xsA6ak+Qz5hg5J10IYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727298954; c=relaxed/simple;
	bh=q3DyJsU6NiyQl/N+jM+jMtcdi+PqkN6qvx52Npb4Kb8=;
	h=To:Subject:From:Message-Id:Date; b=HHN/6dSI3wOUKJzzQ4pr9hbQX7PZa2FJ4d6b34rwZQbXlL0IqwuGDFFSKX9JFqtX6jNUwLxhG9CQOATGUQnfcKrgg+fXi0PGijMRiV8E9kqCZmDOaTPkQxevHLYI8zGgQebnRTNNrMKjonKpsViCpcgBxh585H10UOpygIRer+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqFJlXCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqFJlXCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A381BC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727298953;
	bh=q3DyJsU6NiyQl/N+jM+jMtcdi+PqkN6qvx52Npb4Kb8=;
	h=To:Subject:From:Date:From;
	b=OqFJlXCVRLArt4ril36UusvRCmRHCTbZZIRPwbAs7q+iCd7v56kAVFuEuWppHgtfB
	 AP/cf+Ab02QhIIYL7pIIK0Kw/LeCGKoPnokhTwJOKFg65rOafZUPattYPM23AR4Muj
	 PNA4Zi/cMgAvd8XjwQgnjSDiw6b0c9v/n1K92nS96qjCZ+YeRAQqjbmtPaKO3oJ1U8
	 yj288yhOcV3vzphgvrmXRZoYqqP9mD0ALnCHBEED+OQGSfrA4bBb3JdbfG8UNcBmMK
	 nj+PMT6z6GjUceW5yBMqxNdvbAhyR6yEnzDYCaiCPeAMlwZqFOlLc11W/fqtmbKhEx
	 DBAmDCsn+zYKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DF8CCF9F9
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172729895359.30705.12592402053060693796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26aa0c6bff9f946f0eb358cdf0010e1c892215cbbe0501137213b15bd2fc6591
Date: Wed, 25 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727298953
