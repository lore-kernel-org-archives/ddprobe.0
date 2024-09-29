Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BA218EB0
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727652954; cv=none; b=DzmJTlg1CiLwupxyKyGzzS4MWxEsDXwICAOVIOcNIlyMJAuefUEl/EkdFFHNeDzkcKZhID70XZXipH8c/HUK4MBGHLL6DBEQdWR8Sz7lNWhFnqgwqa4yXrhhUIn1i5Gmt3eAVs0slQucoYjz6hkWKOQ8nFm2EUSn78OipByfq+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727652954; c=relaxed/simple;
	bh=G7jkRNgDiabUj0pEiZHbSs3VYrJFaY+rjTC0X001SyM=;
	h=To:Subject:From:Message-Id:Date; b=sh4TwHgZn2oBtjg7VTHx5RfliIkdq5MiAeEl36JeRTRVxLjDkaVtZWZv/TqU/f5NNyoW+EmsQE+eIyPLfhyiRDlSoaPUP9Sv+U7ilYKyskbEwFv1g9+3b01LDlNXE2ZjJwCJ1H/8ZgVY7cJFf2onjpiPYxvq0eHVqqIO1mS2NJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjYfQeLy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjYfQeLy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC371C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727652953;
	bh=G7jkRNgDiabUj0pEiZHbSs3VYrJFaY+rjTC0X001SyM=;
	h=To:Subject:From:Date:From;
	b=ZjYfQeLyEKzOGlt/JtruOxnQkWECvMsBkcUIW9/nfrM0AZhiLzeiLClXvQZTcpeuY
	 VqSwrpC5hErq358EsVwgApy29mxTDvzhA346ORu8y9DmRwsiKX3DZsTQ0hRDKlV5ZQ
	 1XWlN8aBc5gh9i6PAxpqxqNmP4/IJsIqX2VA4IpB4cHVhrSmbvZaunj0h8e8Q1W4iE
	 aj89sAUZHRpcZP4kJOFCVzjHoRlaRr5DK9XEhtLLvoYGrZAN42MQYBv3nJGrwqMS72
	 /uD60u2aagA1k+iJbVQoJSrJJduvL4KI6yLKmjNw3CySsLbrqe2wpoOVIUIZdC/GOO
	 QgnTPr8aAoa/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91227CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172765295357.11786.4609867357983927153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa3cd7e7df8ec1e6a8ab848d3358568e1bbffa69962e3f7380f2dc5cafbed4d
Date: Sun, 29 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727652953
