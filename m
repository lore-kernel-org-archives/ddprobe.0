Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830713876CC
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788510034; cv=none; b=dj6AMK9+btWD7POsUVF+Bqs6QBZI7IXwCqSeYzgiwcSi/QUuCGq1l2oLduGypd3fsoFnVidUBJ1o2AcW8oY/CKIAchBCZMdFFvGte1zCZMe2NwpAhQcNHlhT5OhXO9jZgAQn/yhvf90gz20mMiuAFj8DzOjz2q1q+pdilRHfo1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788510034; c=relaxed/simple;
	bh=QElBJwW0CjgzYB/EkLdc87Wf+fquDjjpXMXtS+v6fJA=;
	h=To:Subject:From:Message-Id:Date; b=npJfu5JFqzQETnpC5B4E329iVd9219QIv1rFrcO12zc1J9q1woP0o6tRtOOqwuuKclHvC/pXnz5nRHyiZUV+RCj7h5SKG6JRQunU214/kjQbvsalDiGMDyJ8shiY2opXOKYucTbgrOr1hHsuZtEFzHZqFUeEgcI+7l9aZ4nVwV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIVP+9Bb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIVP+9Bb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EB0C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788510033;
	bh=QElBJwW0CjgzYB/EkLdc87Wf+fquDjjpXMXtS+v6fJA=;
	h=To:Subject:From:Date:From;
	b=bIVP+9Bb7uRK7nc8s/Ro/IUXShq/sCzyo9MdYzI3ogXOqdmpOHKwMuAGu5MOL72EK
	 aez/OHNv1ptxxUF22QLxskraf15Q0CvlrMpDdA2HiYJ5TkHeNC6rziPGSKp/wWfDtK
	 pnC3edNqow6PAUfAT80ZQyOmtHtfAPPpd4MHdyNDx3RmQiJuy3DIW2KVGRMep3rvRm
	 5DuOj88w5+R+CDcfzKjBI+ZH9JuE47kpQXnM/LAAkVNrq+QFAKZb73FvFGg70hC6E4
	 911c+uf80I/ibiTs+rgJZXf5WCykXQpWqeE0r4t7KYBn5G6OqpLItC0IQTpImvCawo
	 VFr6Ra+1W2JBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA86C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851003369.5513.15102427363032631449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda1c076c02f698a63abf4d2cee44880a916356525a2b2eacf5afed18cafc55c
Date: Fri, 04 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788510033
