Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272B21E32D0
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728988554; cv=none; b=ssWvYjwkMcx0nRpUiSS/wXi6Y0pbDp3f6uv66DmIjnlgIkMfxKqX25zEo6J4ZMzyX/i3vJ2lqXZJhHmp8TzhisqQwlS9ZxYOR8zaWgL0Igq3oj2wwxoNbs9/Z/8gCZzjB+41hyxuzGH7z37vGMPTJ9K20nQn56DUunOj4JU0QfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728988554; c=relaxed/simple;
	bh=6cfQBnht6gnoxW+ZE+yYYWpMA6o7X5Ad1AclbwDhJOY=;
	h=To:Subject:From:Message-Id:Date; b=BmzIh6I1aDbugOy7wpzlTxeq0KDfM87ENzMgTgfC/8EdZ+ZnurcXWZrxoCOxBUieUDAp6rZQZ3G/S0O+BaHpIrdgHZ4qXjqyz1jOywaYbF4WSIUQwLHIUN/D8KwNi3whw6v7PNrbf8oEaXrfaje02z3bzABM185pvBTHdM0pWws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgKVSEdO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgKVSEdO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E519C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728988553;
	bh=6cfQBnht6gnoxW+ZE+yYYWpMA6o7X5Ad1AclbwDhJOY=;
	h=To:Subject:From:Date:From;
	b=mgKVSEdOw1qEDKkoteuTZDR7pLIwWohes90KoPmTLYid1JpTXhRDZw5PdTJv3S+1K
	 z/EIr3ztkAtlB4nCBsGCaD4WHfGt7XnMeQESUINh6tM4tkbR8BTPST6zFEs3FlR8oN
	 kamh8CEuAgHs8ORipGxzfcHCjuWzDVDvzxd6CqS8xu1b4Mh51jTdJpZpZjh7Z9Q9aG
	 SxkqGN/HUigg95qswqYc1/aWVuRh7JSRiM9E/FhbQaTs8HoDdrBz6Dv14H+IGK/9iO
	 yZi8sOUQid/GZI2RjqZPQirY+RI9he3KBIIB+1E/pImUkcQ1rOp7xORgijJHnumIVT
	 Z1JJY4onIfG8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A25CFC283
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172898855360.31822.13132985614563936640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e37b5cde0bc5dda7ae373756e74cc0500e88d308ab90ffa5035a033a706ffc
Date: Tue, 15 Oct 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728988553
