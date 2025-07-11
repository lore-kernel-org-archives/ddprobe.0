Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF402E613A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752243593; cv=none; b=nq+jHBQcltqbMBtaa8JfzN17TrGOQLr1z1UgnDqoF2RehWAR0dG4wlsL6mj0j4qY77nYlS2iO8BAhdIeoOapQAYQTK6a4zlR9KxVQ8kKCo4t2HAvQdXwmFrgmRi5S4SpkTNTbTMjf55q6zm/BRAgiNDz6vu38MCJVQhbktkUToI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752243593; c=relaxed/simple;
	bh=a4C/YewBaNDTyyLaCZ6sDaKkFD+H4cfIGt62b6pW30Q=;
	h=To:Subject:From:Message-Id:Date; b=tQ/i+QTcZQa8ydqDeMG/7GC8S7rmSgCWSaPar2kJBNcOnSnsGlq/oXa4G/+2otAI5fprGVmN5YntZW++CAMCYRwjgosHK4kq4/xISN6Y2ZrsSsDeHeF1OEVgr7GlGpfPwdHA/VxKwCk2evlUvR7Sj/GH/g7eL6J8DrtPq+N+JEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7I/ktU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7I/ktU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ABFC4AF09
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752243593;
	bh=a4C/YewBaNDTyyLaCZ6sDaKkFD+H4cfIGt62b6pW30Q=;
	h=To:Subject:From:Date:From;
	b=g7I/ktU7LEfuDsWGLvKHI8kQYRAtj3bddXO2metac+2AkUWjljbsVj3YEGiUHL6o5
	 lXzPr0+LeOitGu2EGwzU+g9fyL9Yuo7IydXDFUkikw6kO3/QYewFubbebdGiVdzEKT
	 dKpswDhQ60+J5H7+lAPrYd5JDiAOsLMJaQQlIg+eHcQmHGe1jlMH7y+ufOm0jMvN8f
	 YfXc862XYAu/DPIKjh66BtHS0A7hoD+5rZj5CGXkutHH7K6WAwuFTFAJqI4PM6Ujdw
	 QIXsdAnvrQtbIdEqmUM+z3sl/Vm0ZLT1dIhCrJG3kVEHmPhVoUVwnHV/04iVyG5lCW
	 Ee6J3OMUzy3Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90241C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175224359358.2225.206817747257206649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ec5918dd080b1d91e416dff11fefcb1933abcb1d301e847573280ef82b3201
Date: Fri, 11 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752243593
