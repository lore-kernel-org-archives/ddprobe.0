Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491EB1D5CC6
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781579194; cv=none; b=ssDXAPhn2d0jUG97gIuRN7IWfrDoZrQlLgmH+PQ9QG9qoWkw+fVxZW0kYR4y97UOE1W7kdelftuQ9ve0fsqpMxHUP6Mc04nUm0R8RrvnnrpcFrzdVmjKGyZFqmmEClohkVa8gFcW19FotRc3Jmvt2TlUzbzNGSfJJN4eC8QCHYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781579194; c=relaxed/simple;
	bh=SpGjU781nTDuq1ifyhdyF3WtMZSXWn19y7CfKa4A3tc=;
	h=To:Subject:From:Message-Id:Date; b=XUwCBUn6x+dgIiLMPpj3gVnH0Tkv2GNqHxLqHW/SVTCqt5DD3N5jl3xrRTYH7uA63ojk/MIOZlA0nNY6TEU/KEHHQXLtfwM56KV5oqDYuImH6y8egQO/OQeyin3IKYzW/V+9TaO9STeUnJ9FUbqOBDcgzHMI8fRPihcnKqfIU3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1EWZi0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1EWZi0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B6EC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781579193;
	bh=SpGjU781nTDuq1ifyhdyF3WtMZSXWn19y7CfKa4A3tc=;
	h=To:Subject:From:Date:From;
	b=j1EWZi0BWihv5YfQsw12olSGMuEbUO63KUFD+EqqH4l+i8wv4WgW461acMc5UP1+X
	 8vYrBQIFXT7i3PpSBbSl6vLwLqAUEC1OM63oVVVQtozcK0ueKUdABAY8j/w5HZvcp8
	 oB3ODw+8tzhuimKbjc7mx3cTwdGVhcfjJLmJYLvzRsfV0pjnd6EHQxTBe5xy9YdD2+
	 GXTXJZeqQSXPIyB4oZu2jXwEAj3AKuaG1Fpz7thd98EL7K4q2q+V35plj8EDwwb7KT
	 8pxbzw9RHeHDU3cd/rkMJsZtKTg1bLEjghx/5NORH2H22NKs3aGj1doLloTgMz6X7u
	 CGuhToTljoSjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B74F6CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157919373.26229.490154558253627859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b9ba06e2b4f0103735da79661bae7a4264abd2a4d1d8653d1b932fe07acff5
Date: Tue, 16 Jun 2026 03:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781579193
