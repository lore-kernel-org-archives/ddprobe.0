Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2609735966
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759924194; cv=none; b=PVMmlgrvddL5dB8tchn19Rw8XQeGtQir+wDxamzHfWV0woEIrheQz5RGI9PPYvDJGohBoQvyGvq3zxY87N0fWwWAJ2YajkLzeqycT55TtGP2iPbScATfimg49mNHAOWgz/5bfHNb/9MmVKd0TySWgQd0ZHJu1epeZXGOFSH8FZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759924194; c=relaxed/simple;
	bh=j0UYD15UjjqV2A4QqRNaVZiKKnOJNtFaJBBaMSiQj70=;
	h=To:Subject:From:Message-Id:Date; b=ihSsjGRPrDdW25WHWY5ZWdUE1UVsZhiB6cKql2eMoGKkrPWGEAYHxMSHomEgV0QlzTa/yMTuG9nia98gI+HDN56z6PMFuhHOtWKE+/yXx7d+JWhsNMvDxCSJR6BRtQgFdE0iXIg07Rn5UUM2ghzkTPkhBnVx3vJ/VrwdJ57T5kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLHzf+qI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLHzf+qI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B42C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759924193;
	bh=j0UYD15UjjqV2A4QqRNaVZiKKnOJNtFaJBBaMSiQj70=;
	h=To:Subject:From:Date:From;
	b=CLHzf+qIn9TSusmd4Psjjf4M086VhIZkeZltcoA53crXjsKQ7i7oajkciEugmvNwT
	 zmI6RhE6akkrKCCxW8JuqgLYC5mAOjykjD/6doTpQZd5Q3SD8sv3+uMepevoI+Hif4
	 zTN47/UlJwTJ21SOXpK54PO0sw9WHycWxyhMo+bcULszOBTJkE/9p8OIobypzgO7PY
	 vYFQzJZbivZ+3t+HDitw+cwlco7xhEEGqjYx7bkKO6wn7m7anAOhIb3H/x3fq96zHM
	 BUviWI8XF9QS51S3jvKK/amd8e32enHQZwxoCuIbQlNnrCpkY5Xiwg18GJovVsRJcV
	 AtPF9Q0ZV7sKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E726CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175992419357.17820.15292395093700397514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f464bb3d91e86fc25e19c1d65bf4763b9ef369e052845128e32c4c328683597
Date: Wed, 08 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759924193
