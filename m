Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B11214813
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777954654; cv=none; b=oGIeYMxv3HWKcuxzNiyshIqFBrehM8gm55SfKS2pQYC/hZAJ65hkWR6o67kJP6GhcPJKggULC+T9Wu3m6Ozdseyjs+yCLqYTkF5JllSPVab53g+sw2Ju9oIVwUlyuTllkMSQhxWeAVrABLNX+KGVEp37xvvs76dWknbFDk002UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777954654; c=relaxed/simple;
	bh=SsCPRGD48nXnGZOD+qNjv7Rg2JdfOP+UJUJbJg0bNNE=;
	h=To:Subject:From:Message-Id:Date; b=dmvYwaBgk0psr67NLPj2s9s9YVIAvkUyrwfSQ2SG45/G84XIeaYTa7vbm4NUgGNsbLxALMI6E1L5SSJpTB25A4Q5WRBQUQ51HU3GnRHeWy2Lpjb8Gi06SLWHKdBqcGrqv6OkusU4A7Zvtfy+yiIC5qdEnjiz8OQS2CtdXCIGKe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsvWAd7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsvWAd7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC812C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777954653;
	bh=SsCPRGD48nXnGZOD+qNjv7Rg2JdfOP+UJUJbJg0bNNE=;
	h=To:Subject:From:Date:From;
	b=CsvWAd7ofGgDFJlVJ6Rv8FPjxyghZl+YFr2emFSz8T+LGnqzvdZBmWtfYbeHll2SM
	 GUAbnCiYz4OsfwG2EzsVwL5AB6Lt6E5R76AYZm8zxS6DrxdBgIOCJu5hXoluVWKtW+
	 BCdoWyM+Xqb4sPbcLqHjLFONlTluVxj0A81D4tMRuar7hhT9BbWiS6zA4YRulnl9Fv
	 qrDBT7KlKJ1SDh6qxZ/TXoZpaQu+3NrdeXZIOhmeOrvdALPij6OFTr6FXxPOBvRd3w
	 m08mX+A/fKTU3enadUA9XUEGHB5XA4gcelVYqNW/jlrNxA3P8rvzhSw3bXjZaRLnUg
	 8sCfAB7MOspUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB682FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177795465369.31571.2987263965314812044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73af2e482beab81009efc4a65c248775dddfc08cdd7269925a20c870e076f7c
Date: Tue, 05 May 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777954653
