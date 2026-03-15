Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2011C1A2392
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773541494; cv=none; b=FOnMjlm12b/pzNNelfuv1YgyK/vZsfOMnKmxYjoxu/+1qb53E7KWfMvgdylCn9dKM6RsGUJoQs+tORSYlNXwmQW9a83DOp7m9j/a5H6jrelnK+hPT81fYcQvqaBz7KMD0140j5ApZzXWvHbEDxuQQs9wxlO8XP9orpr493iO7I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773541494; c=relaxed/simple;
	bh=xFWE6/xpBT5lH9cUBLgoc2GiBA35F3cOixaKNDQvPn0=;
	h=To:Subject:From:Message-Id:Date; b=IqGxNPdmkxtUiWTzSoucPtVQjKEEH9fc8rVd2WSC5/nHFprJFFT/BhMkdBIqOBEJgkn+6iJMGGf/enL63jZruSjz3m5s8MNVDIVJr7HgMIeMcpftDRQuu5O45egApihrAFFmonqk5lcHWZ5pkK/rKhxG2uYueoAmvNoEjfrjo84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRmqMI1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRmqMI1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA791C116C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773541493;
	bh=xFWE6/xpBT5lH9cUBLgoc2GiBA35F3cOixaKNDQvPn0=;
	h=To:Subject:From:Date:From;
	b=GRmqMI1Het3SDcyXB1JDrjPNpmaDuNzOFruUYsLvMXd7Smi9Q463xd0fiG0bi2RbC
	 pE5P5pNuaGPIgqJNuHw3BgpKTEwbL7ujJIE1WjibcCNCLLyK8QnsahgCsh8tmIAGzc
	 CTQHhWk1qDwJiL4T64ZRfPtHP4NPa7n4BKdN9ux5MagU9gVwqSJpw/yq9M5BiEwJ3C
	 5j3xdVESAhiTQG9nKwN6eUY0/tFqZ7WYHnP8aAfN2hWyqUdjxeIpbVlX8YCA5RHw21
	 6BytoilwAlulwZ8Nu8nvuZNhBzBBVx9rxIMXyPdhBBLJ//WWC4Y44s4TwzxYSXC8hy
	 XvC/qJZkgE5qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9798910854B8
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354149359.2752.5672649715765279215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c794f897e98164863b45deca2aacd0ea4e8a02e272e6aadc15cc0d0a97ac3d65
Date: Sun, 15 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773541493
