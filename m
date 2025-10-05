Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FB27262F
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759672194; cv=none; b=TinDxo0/+rSOCnNgdqf/0TJQIenCU0764YnngPWU5YfnHzwV8alg1VF5s97gYNa9+Rln8abLYeRxAT/bK7fgKXWiBc8dVypObw7klFf/Uru/uS9O9Q9sSGQzqFoEg2QX2/ypMyslY9FBvIJ8/mTU3BCdDiNBWFJO58p9w/LmAiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759672194; c=relaxed/simple;
	bh=xHrlkffkRSOFNEBOFzNni4YnKZIGd6C9BhxpZBmjiQ4=;
	h=To:Subject:From:Message-Id:Date; b=tWI+/V6xiWPUtfTB3BTrhvKsUSdu5/FsjhB6Yw01h7GUC6nkPFG3+obyTxHA7rcs5Cvq04ffy8f2bQjxbR8TPXKO7zW9qOEx4thHgz70eZJ/+kv//tnjX2lAHV7GCNAgFAEqmIccgiqSOwPvg3W1IkUTl32OM9QiQPT+CcP/wyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGjnYOd9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGjnYOd9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8011C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759672193;
	bh=xHrlkffkRSOFNEBOFzNni4YnKZIGd6C9BhxpZBmjiQ4=;
	h=To:Subject:From:Date:From;
	b=EGjnYOd9vX+L+tWbqxLgVQSOc4WeJdDktCQXlbT8cqmtjO7mic0ApRlceNtUjlC5m
	 fLB2uQqXz2Z0x3nI02g5pvhXQPq5YBikvJKmCnESdgHMNl7/xHyKebldDSX+auxToD
	 Nh1WjRsYOub88OMnjMRdepue0Bi1Bk2WRBnTtgInb5+u6T13DElLP95UhYftDAIvK2
	 armW2JCwVS2SkvZnCoGExJcZxkuNmhA6x2Dz4/c9TGl5y+XNSX8dyutWra4bE6PCtW
	 bXLYWe1J8/79cUPuUcthTlkIDmjX7+YH9uBkxA8HG7NZzj/VG5qfdgtKhIEGf55Xsj
	 960AIY5KZFhCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95070CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967219357.21360.3634994240266223153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80258abeca5ab717215a5f92ea5ed862b934174f2efa3663a31653b6534dcddd
Date: Sun, 05 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759672193
