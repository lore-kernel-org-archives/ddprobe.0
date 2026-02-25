Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F1E3D646B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772039694; cv=none; b=K8npjktlbjw3LNYRtVbMzK4PtrOblbMJ8LmTpzjZn/DRSjVSStEIXHNMyQ5YDVtJYBnyyNacMwp8zu9jEU2kovwSjPHaPzVn+w5rhexawKxYLUPSpAIFBXXGb9Q1AYInb9LaS3Os8SeUfF6qY1TjhcrvQYD9VGSoF0zvYnQ6ptY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772039694; c=relaxed/simple;
	bh=TT2LbkKv9eMsa2nXfPpYLlUpBzv0tfBtjXit1tE5k40=;
	h=To:Subject:From:Message-Id:Date; b=TGzGVsCnrEExhMBj/OFfRyzEw1lm8km5Y7m010mDTYQQprp2LokD2ncJLv1xqqOmXqLr7fzGpcUS662kNZTThrUI13BwgCmf4KnhcYV+W5fUWeiB4Vgb9E7jxAVfvWjYpg2HlobBx7cXxfmHSXqeRuEUVmzd3fQNxJKPwg++aRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTIkMRF3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTIkMRF3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1BBC19421
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772039693;
	bh=TT2LbkKv9eMsa2nXfPpYLlUpBzv0tfBtjXit1tE5k40=;
	h=To:Subject:From:Date:From;
	b=RTIkMRF3iJv8zCJtK1U3KF0PmA4e47L1xFQINLl5PSRv0zrQMiM7SX41bY/2HIaIM
	 1xZQl76A0iwALbGQPf/x4TN+iEWICJfW5PwK5M8cTMjGDUOCddbksbCMV4UGpCnMZ0
	 xkhvKlg3XLQuA+wMu9uD6KRrnx3wblw9LJ7kOnqiaTh1j6lpHlGhRd0aYA8e3dDyn7
	 YJSkba2AB9GA5th4CPYDln/deNlUO6rI2IGh5wecoSnH3o1mfDf2NltUb5q/r80CXW
	 usa3pyNTS8z1AuvPgDSWmaeS+wqDBSYaycmOAHuA8Tl8/wH2ExpPKBimyJEI1MjPHr
	 IsB+pLnSxWMCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987A0FD3774
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177203969361.14458.11247483957958212731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcada89fb9dbb9f7058dbc452473176ad094c1e77f9392584ea826005c05b5a1
Date: Wed, 25 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772039693
