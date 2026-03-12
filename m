Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D543AA504
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773306894; cv=none; b=pAGvPZpfcZoXSmkDA0xGC5crzdmIJ8vWRxUNTICIvZn87PtHJwEUymRMCLT5B6AsTlxavyVnouGvoU5TL7WsuNSeruhjAMr63559DWa8QsrJhO5DLNOFTJHwvpb2ihkEXl54RONa4D+Ysr8UDpB/U2nqTdlmZEfQIgcujncqaB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773306894; c=relaxed/simple;
	bh=9OcBY8rPmVhF6z3wo7qt4OAegD2HAZAYXaDdSZ4pmkA=;
	h=To:Subject:From:Message-Id:Date; b=XQ7SM1zKvNQ4wLHyy41bBi0P0bbaPMzPSQWpDyK9DEOdx4xgzAX5vfSAn2e8jkEcf12xkWgFLCD2Gugen2tSd5rI7DvkUwB1Lnkckxdt/XtCkOuAarFbZAvaO6bCOaOHhrtTMpbPJ2ST8+fBwc52Bxi/8Bps+PyYks/uYvnjFkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAs6NX/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAs6NX/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0254C19424
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773306893;
	bh=9OcBY8rPmVhF6z3wo7qt4OAegD2HAZAYXaDdSZ4pmkA=;
	h=To:Subject:From:Date:From;
	b=cAs6NX/wqXkDyIPmvN39S8H4fwTxPMnWmRRGMHKfa+17DDvvDfkGtSProJVBeLrMz
	 zfZALpJZvUBW2AHGBoz015RrH+RrMqgmI1GLYCLJVYRqDIPrFbRsfIrYrE/XMMxhFG
	 nRbHA2LDRVl7U/pt7YDC0SsitKah3fyBHCc7DLVhCE47Ff/r77CQlhxRxwjwW7u3jn
	 jsg8UK6+KSUoi4UIAMWY6hGNT/UkqFWNcttVKkzxz6awEIgiMFAujVGLX5G2NpOlFn
	 7O8O3J+dofJUkxGNVkiCcl8tPRwTTEcp0OqPpROBbKbsA4dKopXnycfdTbR/jRldAS
	 NGwMUQ3FYd65A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91749FED2F6
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330689358.9178.12366648723778878218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3485e8ce3533e4b49bdac987af7c0873d669a33e7a3abdce2f2fd779bfe9cd6a
Date: Thu, 12 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773306893
