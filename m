Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3490B1F8753
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749725994; cv=none; b=AQwE6p6OVRc/AgIC1LOpSTS5Ysb6uTnTnzA2oNpgkHhZO5Lp6MtLbPfl8oNF8lDF2kSeB4I8IVD7cATucsNoahxWtu9ce2UQQb+E9gS0QPuG0uhFVvWafu6i5KhJRUp+HMEtAP6leA8nGhpesxW/4p/qnqYA8NC+Tx2/K62ULu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749725994; c=relaxed/simple;
	bh=thxDIrMxWLn3KxqsCPRYwwb1IRwoiqYFPwj0Y+e32m0=;
	h=To:Subject:From:Message-Id:Date; b=jZvbYG6shPEFCXkV7Zq5LtDh/3CufQ3PUkDlEH7tKyOdUO3YSSCC4DodEHISx934PtJBYwU9mGLCxlmm1HTG5MgKtX/5PLRrSr6gXzKRqiof6wGROvt1nqtwyGWyoNXOzEIG/1iqP7AGdYjfVhuQ5fvRsLnbR/EkNQXldit+txE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jg8p7OtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jg8p7OtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2F1C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749725993;
	bh=thxDIrMxWLn3KxqsCPRYwwb1IRwoiqYFPwj0Y+e32m0=;
	h=To:Subject:From:Date:From;
	b=jg8p7OtTUE0rKj0NU9KqPOsHF8TnBzMtPMUiOOqLljTU4yGD6jEGFMTrC94DISESt
	 CnkW3BFtcy+3ppC0NLmLccS78zj/dTUPKYDJU+dEDn4gc8InfGKYqmP36strYzHsC8
	 +EQDgIL0KZ1sHzC59zL9xnf/ecTRjIdKby1v/flkM7P7VHwRoBKRwTnsxzZ4Q8VCjL
	 wKT2MT7tHUzBMeq1unc1KxaqkO9KjqADjeLpNtVlr/7yjkiryUx4P94fNZSE9PKnzn
	 zhUJUNxMUVBsH6sAtbK2KZesSiyduvy0XJEjI6NqueDAMNNa0U1jCPYB6BuLMWccO5
	 Kns6OHNGCvjNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E977C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174972599357.6116.4664317136915758310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330813dd62bc0391839be3a58b6780fe032cd08e72e5bfaf100615147d51a8e8
Date: Thu, 12 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749725993
