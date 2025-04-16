Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3367F1BC9E2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744799994; cv=none; b=Ja0OBa5K8Z9dWnm9wH/CAVuNsBXLXKE2f9D/WXsYLL4sFMNAxwvS2uPHXXEOo4MUbs2ohy+y3uqjRrlhjndtvgTynuXcwsjbaQ/ExFPRJOLB446iasvogUf64uTjxzyJZ8Hy5yHtUJG1lAD6PTOFxIx7q3ezvZKRA3CkHbyEGTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744799994; c=relaxed/simple;
	bh=DA8BpKR4vc4rjEHB1iKi12AWgvoG7kFkJWrMqhwsdys=;
	h=To:Subject:From:Message-Id:Date; b=UyFKbDYuyrC+QR9q7xg7Rm+0IFHXQl/kZ0pWy5rvuCAiSdQML8kwlmN+KztSckn/DZgEaJTsRqPUxYLgZYWf14fmkzAHa1po+tRe4IOYuOoSzDOL7qLLG/qvAyS4py/6n6UJK9ECOYGMN1aeyiHlyYJPnLHS2miN72WB1yn9xho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FB1/U+WB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FB1/U+WB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F7FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744799993;
	bh=DA8BpKR4vc4rjEHB1iKi12AWgvoG7kFkJWrMqhwsdys=;
	h=To:Subject:From:Date:From;
	b=FB1/U+WBEAJfuivEE2l7WPr2b1sRoZrpnsAWsTQtC8TkbJG8xKomenZnGn2L15/FI
	 nFL6g5LdrYCo+p+d+AR03uvkBqibH/M1JA/24j1ChEWi2NwTvXx3xdaGRkn22gHdIQ
	 h59aqxOaiJZ9HhnI5CTxhJaNl4bKdOtdpM3VUC5PMk+CjebLAdO7kGFxpQ7QH8nXLv
	 nSe1aw/nTrjB3qRBqbWKdhyRO1rkbFB0Ce1ZZE4hlSwa+7B5cwhj+Jven6IvqVGOl6
	 Nr9su9eYPkHGiSkVrisvL38cK985v39v5RtFA1ohi3QvXJMBsoGUacy0H89n/GS8PK
	 zwx030mrY4rFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B1EC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174479999357.17134.4833070965071348235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a35424c0bfc50d3b5f77324fd4f494367e89abded38fd16b083c482f25a0fb
Date: Wed, 16 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744799993
