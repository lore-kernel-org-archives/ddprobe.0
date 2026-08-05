Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659AE3DAADE
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785913834; cv=none; b=Q0vPS9JdUJYJFur7kBhzO7wgWQngFYVIp+uivj3mME5ECPObU41d6nR0QcVSHQ90KAZh1vKHibxPBqDQQ2JBTKg795yMYThTaWkjPyS9d8pikMJL4Ly+Lkbsc0dlYGNc0pcOg/aAD/0VB+8OkK1woi8N9dn9JUYaEP17qSlkdBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785913834; c=relaxed/simple;
	bh=7POZ6GFSytMmUzn1nJL+ZeO6DtcVXCJ9XSjGl+blJHc=;
	h=To:Subject:From:Message-Id:Date; b=FeXJ2F0lrxS0tvHKa8JQYdwPwInH+SJ7o64yT9Da6QpIsRd/b6kOkQGN1c1aRQ7oNOBZKXGf3wbCTqyyLVJ38DOXzc3OuCb+w7e5YbDwey+qlOuYpq8prSbRx589wJDmCMkEcnexdxbazuIodHG+mmpoQH02/3FJ/3U9NZlJtyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoeZ962m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoeZ962m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6DEC2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785913833;
	bh=7POZ6GFSytMmUzn1nJL+ZeO6DtcVXCJ9XSjGl+blJHc=;
	h=To:Subject:From:Date:From;
	b=WoeZ962m2FaQsACkdqdBLHcHbQ/USfuxyiwycLWMzeeUlndlC4Ngr5XJrx9OHWJcj
	 Dq6aZI34tyeJIme3Rs7XhMxgX63M5Ue/m13CpzNl1H1sx7NPA2lnDGWzdjpjZ087k4
	 9AmeQYKcJTkaBFEsrd9Vc4InjbWuFy3xI6v7WcBu1SeF2mZltwmAVI2lre4XsAD+fE
	 88bpoAD3IatbZ0GP/qNmprkRvI6M4C7G5scyEI1ydNsA5QNCUt9j4oVxJw17eqTJn+
	 2+6FBQ5iHXdznYLrB0vTL3KQFtWLr5XDAJRSC94vDwBZACvyRKgS4kz6Nfl829qHHu
	 blBMRORyZwpSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA100C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591383375.27793.11135910693591340982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c64adf0e55e7b9ffa7c382445201bb83b22e56f5d83d279e48bf88cc69537d
Date: Wed, 05 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785913833
