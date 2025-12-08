Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE88320A00
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765186974; cv=none; b=H9BvtohLryKOoUvPLXnwLQAhnTnnc0RPdgGwMDBiEa0MYvTHRPQywXHJcA3SB8Y0FP8NYDxFRlXyEZvu66fuUU2u9G/zWDTQXBIWdkm1e7k4xPR7pcCabVev3sccyfnIIIKfo7pOYDiQnaJ1hoXtTfSpUGH2jfnm2YG1AiLqR5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765186974; c=relaxed/simple;
	bh=rQOq8oQCxv6lCOKH8OdJ7FV4B38CBUuPiJriEtOzEyg=;
	h=To:Subject:From:Message-Id:Date; b=UvlVSvOXZqDbUujw1+bnWHX167Fd/eqmUo2REC5j2w9YIrqMwk0a4nJ6wfvfivxiVTUHQBwUZtOO/Ib8tL5UALVP47to9L2qJJ5Z+MRAAW5gWMa4oX5GKcBVYJLmQGDMwZ7zD94rauskkAcvttHaJI1XkQcQ1YIngyAEjM3M7wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8cdTdrT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8cdTdrT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C114C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765186973;
	bh=rQOq8oQCxv6lCOKH8OdJ7FV4B38CBUuPiJriEtOzEyg=;
	h=To:Subject:From:Date:From;
	b=O8cdTdrTElV0ySSL+Cqb6u/27dGY5KcRXZ9YteTcDblBDZ6QGesyiVfpmJpeL5bvf
	 x9sUVT7LV3YfY2yc3I9fBV7lbE5VMW2+AFaXLLnTipAZQtGaFF59jgfnbRJwdDjQgx
	 Vx3EUgtP9Z6wJPcU6QKKCZGn0NlYtbmdnz4xcaU0yvYwdLL9RSpxrScLK5vQJPLboS
	 OpgAe53aIJLHO5v8vrU+EPulVQS5z2Fm5gPVbCoosWx4be5q3UiWdJF64e9n+t1gKQ
	 4U3cl92curLZFBfDFJc9b3vA+7YJEG99wCuXL4r7Q1mTPRI2f4+AIFOn5DZTG0X01z
	 r1IC1fgHatcyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936B7D3B7DE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518697359.17949.4974151399327518089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb59ce363752a20d2c1611aff1dd784393f16d6dc2bcb966a3146505d170f82
Date: Mon, 08 Dec 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765186973
