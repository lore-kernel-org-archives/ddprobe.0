Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F535384235
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779539554; cv=none; b=BummLvPDkY3yepowsYEfl02NncAI3UJgBRiiTjvtrL4vJk1UgnzYLXk2urpjtxKSgtQLfjxtiVBI0yvNjLP0QL0WXQVhwcGQtw86AtArUnQptXI1e4wdQiAfXQDwga5IaHU9ZWEvq2wp6nq+tkIyEL0LZ1dgPtjpydaQZiQHDTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779539554; c=relaxed/simple;
	bh=Gcmozf3sOj3ASHQxXh44VAYCTCSFzMmiESAo3QfaZmU=;
	h=To:Subject:From:Message-Id:Date; b=BZqcRPxGH9v8mSotCzQJ641ZDlxvWmG6xWwkkQ3lMTgJPHlWGWVfW04fGno3ON225ZgrKGj64LG1fv8lq3hz/ruNwdLmGWLpKc9NN5AiBnoKd4o8jbeMZtZEn19dOkKAptPfv06Bej1vfC1NHbZ30kYexwHp7Iy91e8rfTM/8vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCfhY8mQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCfhY8mQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E75C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779539553;
	bh=Gcmozf3sOj3ASHQxXh44VAYCTCSFzMmiESAo3QfaZmU=;
	h=To:Subject:From:Date:From;
	b=cCfhY8mQBfcIvy9cxVEFTaBW9kDyaw51NRuyooQgxbbv1SjJ/0iynpgi54xx3BCPb
	 cni7OR98ytzSGnxvA4A/TCHErviEafTwn0bspo9C+oO+FPTf4qVju4fz8IO+uOEy3A
	 cLOj7lrFecSO5n9RjRdRMIR6hG0pr5P20Q4mLSGCRid2Wf7gJfZBuTHzDXBJjxSA1I
	 MYQJQWn+eaQvdReoAk1ewsf8lNemv94OMgaB42XiOWXhh+azSVf7n4tfxHuL0jLFmj
	 wxndZun0fQ92DobEq3qqAQ/TARLItgNY9S/ibJhrsl7msLNJjgidOgERY+AndReNfo
	 8PbJ7yEp+Am+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDA7CD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177953955368.5351.14395605909818425033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ff356b92b21c672275f236159953b89fe6b0aefed1a6988a928fcfad13f632
Date: Sat, 23 May 2026 12:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779539553
