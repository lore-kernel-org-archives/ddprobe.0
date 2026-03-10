Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9DC2ED141
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773142493; cv=none; b=pU/NxPuoa3pRqGc1MVhcS590c1exZzRppyGmkKYK0shF7utFH8gU3SYbIjAmiXcIIza4JOoLI0ozIjjwdpbz8FpG7v7T2SNw0mI4lposzd2O/Z/ub1BnyFNk4gqxoXCKSYF9ayA8hpVVQQx0eya7oJSJHku0wV4pYvIxF+Vcsrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773142493; c=relaxed/simple;
	bh=mYxPw88BCJe9Dx6B/hANfDTuxUB2W/baXxi/XJzBr/4=;
	h=To:Subject:From:Message-Id:Date; b=ZjbYeFmJAdwNNIC9m8AZTE9bhbD9r9YpmwPWCa0Gi1Js6zwmnRkfcM7H0q/RckwgQYQeYu6qVrl4t522ibqbL32vdL77KqjDSEdTGoK4XqQpkpvfBJf15+2D7UFRRV1Fa4tyDBVfITsJXzAgsnrqJ5rz4nv29oh9TFOPXsTWYmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBHV3WPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBHV3WPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D023C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773142493;
	bh=mYxPw88BCJe9Dx6B/hANfDTuxUB2W/baXxi/XJzBr/4=;
	h=To:Subject:From:Date:From;
	b=nBHV3WPl6zApIV7lP138daLKtjQ1aq6VG8/MdGQH9TgIwMmtQZXfzUad2iSk346yx
	 kuYsOA7hafXzUfhIllhVgtxO1JrI4SKG9QHkeAMnQO3tdaRsCggoLmPs2Tl0UJM0Uk
	 JUYudz7axrYZysSRrP/lA5+L24xAvKHbRQGJvd2Sfl5fZGK0Q8lq926FQUrZqQGmT6
	 hO5TtP+9awzFNwpi9n3e2UXdvEyxftEbPlR2nQhU7OOOyLEWc6eSPyIDa3eI+NkA2d
	 HBuFrIwb202VbxMvSbp+aBk71rTpCNh6/ALwz6QjMxfyCt98wnOzV6Mh6qWMMY3RWJ
	 d85pdyIc7H38w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F73CEB104F
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314249357.14309.7275005021715781040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23c2e9a6b1e9dff8a11e5718dbede2b8b4282c07dab51f114932e99b2c395b06
Date: Tue, 10 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773142493
