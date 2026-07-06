Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AEB3A6F1A
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783343914; cv=none; b=Nhw4jk2dX9mqd0urQRh5jSo5TZ/Scbk5bMU+B+MVP4Ct0dXNqTARUp2YphSzAkCeNBh8S4u0CdY9xkVY5L7KA7WGdKA6v5HI93aCKnWxtggbFR95sYxBksGFtfgqPLjrnLR8unj7ncv7F5MPc/c2q4g+9wtHcXvLSpKY8vGMKao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783343914; c=relaxed/simple;
	bh=f2E6jVWYJPyRqgT0xKPyIFJZdJN5bYDM7OEggqZHlqE=;
	h=To:Subject:From:Message-Id:Date; b=QnYaKqPsYsNILeD5cI4GjxGvajvw5ZegVd6WKcWc3ZobdnHSxIGSQzV2fXa80y8KM6K1FiAEeefW8M4+TIQ8j4+9A7lZyaCGAROCOS0LKMXemLcy4t4dwjXcdb7UuOOAhKdgXU0sgKh/yFBAbkiZL25snOe5+TszZk33kPAx7uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ty/WKe8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ty/WKe8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9DAC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783343913;
	bh=f2E6jVWYJPyRqgT0xKPyIFJZdJN5bYDM7OEggqZHlqE=;
	h=To:Subject:From:Date:From;
	b=ty/WKe8M/1nbMcEQTdQg5d3QSJcBQK+IlvL5jofCBlNUhuORYhXFRZYzzEs7aNNx8
	 u4XpbCQtkPhzdsnwZN4jTvqQax26f8wZLxr8nyjJD0KODNmj1AiWuLztPPLr7Xwzh2
	 lhazLwDLwVvE+gkkBpfpSqHwqoMpeLRs5TqdnJu7Haw+S0F74E91ZhVbgWM9H6cAm5
	 AwPyOi0wxWXZTme9VM61L+pj/qLOwRgw/qEDMp+Md1OJKb/jfSApXb/DHluclWI5bb
	 lWWktxSq5pLHQn6OglEFp1CCYVKyeYjxnVjTrX3/ks1LbEzhmGjDoX0z9daBL1UsM8
	 G/uk52gGxzh+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ABFC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334391368.3344.13266098959131360994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21df4292d975c33ab5fe617280705d1609e4ebea527bfb3b91ad9ef2fb582fe3
Date: Mon, 06 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783343913
