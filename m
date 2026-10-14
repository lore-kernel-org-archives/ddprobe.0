Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47870274641
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791945634; cv=none; b=jdP4C5xaEOtebflH2yFE6OhNS5IFyqvK4gi8SsegxEq45OsdABSX2UU6dYzqiI+lj5JrbPlVKAda85SztGCvDtbVT6wT6hDl+S0L5dAiCNdfACgFSXl4jhZ+iBYzQEtaIXjeBfrv0cUgEZb3ecYb6oGzpfdnCrUeOA8wP1C5BJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791945634; c=relaxed/simple;
	bh=UZ/2ADXOVHgxslkwmmXKkJIISBSkUDDFgaK+nX3Ocz4=;
	h=To:Subject:From:Message-Id:Date; b=KtJW4PPY2yChW5bdKuhZWGqX3FSwsMo9W045jkfpnyk0KA9lC+DC3YGEUaORpCZahXeD9pEpfDOgbyxIZgKhCmrHqYLTbXVYEkMHRiUsFkv4NzrBXoqh4h8UudimvhOmzur8JENAy8RIbwzsvhG2TGD7lVcgckgOkazGU12fALs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/Y3pBW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/Y3pBW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD647C2BCFB
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791945633;
	bh=UZ/2ADXOVHgxslkwmmXKkJIISBSkUDDFgaK+nX3Ocz4=;
	h=To:Subject:From:Date:From;
	b=K/Y3pBW2VkAnrbDyUkIbSO+fxQMSbknmjuOqJfkRN3WsQ1QAuoSprWwN91YFAu2df
	 paVExuglrIgSroeULDx96YiNvrh6Xh2L2EtdAouRECvQpKp47HaIai1kU90i9+qQq6
	 XN5VRkbQ9jFRBvqH8RakNSGG5UIJlogdRe/3CQS+H6DAxd12DTwcq0w7XdttcDqCLa
	 ris4pRWduo+Thk+VnXKC9C8kVE7wsnX5fec0jbTEYkxY4NEE0VXUPSYtPhn4AQSsS7
	 +pbcWs9X7/NNLddsd6njbd0QZVogFPaNFNPQoMQqoi7YeDovUnFuNo56EOlH7rkenU
	 0IQhPUqgDtnRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8288CC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194563370.26770.4093211365466119471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bfe4f4654c3c9dade6378049b350bacaa04bd61e9a9791cb316b70175bfafdb
Date: Wed, 14 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791945633
