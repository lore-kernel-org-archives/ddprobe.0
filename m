Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CE9289E36
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751060994; cv=none; b=forx/UrwRFGM4XUTocZQnSzqzjQk8KsdAihQTpbAGsy2LLjo+YSurzZCGb2RzkXD1HU9J5xglPyfxVJYRUNAWPVPnTnBSekT7hKxkNZDiS0NxTxEkRiAmnlSfvOTBjrYkHBwL7QvW7ZuGTzA1KXK1+NhZcZiaKr2PgX6DskNrBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751060994; c=relaxed/simple;
	bh=Qi9kQxk44Of8ZXbv4eTlLpO7uIn4HmTyu0gjENKB87U=;
	h=To:Subject:From:Message-Id:Date; b=QYacVqygfRF0TIIPjY6zz2w63j6XLOFGMqHf6f0gMXggWvWFNVhUM+vsR51Y2Xa6ZHdbwyFVbVi+/v1HCegBxuO0pRXwM9rdLg969cK4ICEcctngzRpKhaEkltMdCWU0UpN4Xd/WSqcLwbEkpOeeHguplO75W6BVgcaXQrXJcLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jebp07hM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jebp07hM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2034C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751060993;
	bh=Qi9kQxk44Of8ZXbv4eTlLpO7uIn4HmTyu0gjENKB87U=;
	h=To:Subject:From:Date:From;
	b=jebp07hMx/fcRXyeU33+4uxFaOI+SkYjNhcx032MVhiqi889XElM6Z5p4uvYQ0QB2
	 tNiaD8+mTZhdpFt1SMuL50vDar938RlF+fPkQxW+3KA8e0EF1kM+CDvf9JDi32Lbhz
	 r1+zz6HzNgIGjnbSEyr5GFAfrVY321N1XxONaHSFevXrlOtnuAtCmygd3Ua0uyTGTD
	 kYBBaAtNObgowkPZp/mwKtSe0Fsji4IsbfqLxTmJ/LPfpVM3KfqzcLqRiLSQ2JxDxX
	 VnyjAY8gva6LKiXCrtoq8ctbhuudTPHF3RhmTFq8vf2Bw6jvHZ8CQ5bstOafdcrHbH
	 Q3vXnGoGj2LHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9158AC7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106099358.19441.5497383923491103526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5ceabff7eb03baa0f8a57311bacb5d6b9aa0f345a2776081a27cb8d3cef039
Date: Fri, 27 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751060993
