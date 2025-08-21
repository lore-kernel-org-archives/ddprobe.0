Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E31261B91
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755796194; cv=none; b=VitSmnAgkla36nK0k1PzbJVsoldHnKbQHgBP5Ip/IQ4kYFYcdgMj1DpJOfWL1HP0rGD1Rj+WTNgtiMnXrD/OoIlsDlFhdZoWOJSdK04pHXlhMCv9P/Mf7hdhCwk6bZzQMRh7Njrl/ch1hnhabfmdus4vg/uaz6YrmMNcjMaR5j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755796194; c=relaxed/simple;
	bh=qARZnv8VEBMaqB2m1a/z5mDlopZ6FGeya2200JNYWik=;
	h=To:Subject:From:Message-Id:Date; b=soHhQoSeb8z6JQCmoPoVvzwYGG1lMShflDKcIPrKyKQApYsDVohe3MMg5UgwPtCx4gwXlGE8TDo+FauS/izIqAg+MkN/3ugHvskBtS6pnU23BSj0gyr3lJdYsJ9CR6iqzrK+/akubpJ6u8eH6I1Prsodc2dJARWvy+zhywS296Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pC8/28yu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pC8/28yu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEE2C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755796193;
	bh=qARZnv8VEBMaqB2m1a/z5mDlopZ6FGeya2200JNYWik=;
	h=To:Subject:From:Date:From;
	b=pC8/28yuBGDEpbrGiaGm5nGN70Zx18ka3YdDbMUKaznUh/h4zMCCr1XKRK9PI58WN
	 pwTI0F14QqMXXKXq4Z8i+jbeKdcVFigEkfUPCKV4D4sYQlSzOTfjNcoyKfITSa3h2f
	 FSpdsFibxqqhce0gyvFe7vVgRwRdVPiIL99gXhWhe9Mu3j0P47ATUriU+0ID5beRRt
	 z++1yWyYigRXQqcZEOvQPbnM30tIUrKodkXfzSNtD7DNafOA/VW9OvLjrSZyRRY7+9
	 vOYrwn4f8n/RwlFgNsiq2UDb9+CSbuc5p5GMQlG7ZXODxvv48ZYTRPDlaVnvcXNQC2
	 bPPsUr7MIjrkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B9CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579619358.8101.13532205593872724878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da2dadca67039008058f642ecdd3ad8fcfe94b1828f769e0934214f80a96f8f
Date: Thu, 21 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755796193
