Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D033D43E08A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786482634; cv=none; b=X13KDyQKVgT4wUSUGUzjhb6DmDTUxPEkir9i5WF8EmBZUFQykDbdV8AfaXNlxGOHa5ZPlGpsjXVKezOgafqAdHyrFILQrrKMDYxT9hAQ6SsJWVILN3ntV/j6fPGH9J+0Vkry6T0w0y1athE+KIMLqrN0SC+pjTg6Pm+RcH1QaXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786482634; c=relaxed/simple;
	bh=bLHt8PqrSQM+7GYHuxsDAQKBWRRlYOjQg6FN8oLo/IU=;
	h=To:Subject:From:Message-Id:Date; b=Tm8nUXNzdD8kApqjSumhomzdoYz1NNKdiCoaMjQC42ULYOq/YbQAERlX/Lj4Qq3Ep9oLyzHZa/ahy/5HM8xMnJfnZkppKF2x1k+lxGhebFmA+5M755p2WuazCZgZ4DIWYIBXWKtrHqoS3+KInacyBYPvgGqk01hYeTEyNzc4tbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7zkZrB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7zkZrB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08A3C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786482633;
	bh=bLHt8PqrSQM+7GYHuxsDAQKBWRRlYOjQg6FN8oLo/IU=;
	h=To:Subject:From:Date:From;
	b=f7zkZrB5xjublsrXENQ710s04t2UEefIwY2HRicnR714tgilDVv7K0JvQFDdmIsdS
	 nMDYDKnQw2ugkp9u7VMBHYkLNN7deir1v9gvOs1GlIhkQmcZ0+WrSrzu1Ja60fDlKJ
	 oGsFsMuJMlrcY2NAz++6OzaMi6Goq6U2tzSTIlKqwrW+ulLgqxpcjJLIBLQ3URG9hY
	 BwlpbYPRaqv2Kg3+a3C7AkELtO5X3CcwEvzhJJ1Odyzupq9lKKsnopNEyyw1E12pPo
	 nP4U30aNZQQqsFOirxuWgZPwptc2CjeGVtLU4ePQXlRhaodEnAyywrcJ0PqDJ88+qs
	 MJ2MpH2NIMHow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC152C5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648263369.14227.17548858253710801095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da127f4c3845a2eb7a04dfc2b951f33d71f2aa54259194e18c176c76bd2bdef6
Date: Tue, 11 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786482633
