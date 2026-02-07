Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013BD7DA66
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770455034; cv=none; b=cwWkLjCV6XoAw28NbTMObUhcXmHi9vH851oxtG8G0USmDoX9EOk0JTP9O6gERLVK/EOJIQdIeY6iqhU74LLEgYenWDRPom8vOljXnJpUgMLVbAiY6MWG5gCcllvOirUzfpQI4fwNNxzcBdNLz7FWqIVtG2EwBI5nNenKoO1sRRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770455034; c=relaxed/simple;
	bh=Qm+VrbpWo8+z6yumXFM/s2jDmO1LZjKYNhgoTaZ5d/M=;
	h=To:Subject:From:Message-Id:Date; b=DVVUcNkpBipulrx5uJRCXgIAtgKl5ifFRbaBdMIN+uAK6mGYd5SlcxJ8AYg2CImOR9ZiiV6Pe/VzA9IEHzjwnGb5Z8XMruWM5u6Pc8clZaH/EdFaEq35NAbsPUracnn4jbIncnlGsOr9XXPn1AuNz3eXBNU3ErnjHBqK4sHJw1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNCEqF4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNCEqF4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0E8C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770455033;
	bh=Qm+VrbpWo8+z6yumXFM/s2jDmO1LZjKYNhgoTaZ5d/M=;
	h=To:Subject:From:Date:From;
	b=ZNCEqF4m9hDuBBoa5AgU8WnfKEzopLB0nwMm93d06SApD1M35EOfmg7gct/DyExpC
	 VK0JmY+udvI6+c9uIDuOTVBYBAt/ogDklXZB49FgG5zO4ETm77vMVuDmqPqIslCYhX
	 AXdAzcmt44A+himBiiYX3njEUWDkBs/7SVw7uGcl3AhjcgeL5mSb6p3D8vKcVlG6rR
	 ppKWqSWVkrllUS03hUuOr7TXtIDh4HWFOkKjZquZdyJLXwSBtbLwVvQvsY9H39z0Yx
	 4ahErJlNsHQ/3C5TBugfRBRJ9SR869VvU3xscJOQnqdb7zGfFOKrHY2qt6/MVK8OiQ
	 glIl3by4NzP9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93970ECD9BA
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045503358.23706.13442446225155080071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21d636b9a1a8a1d95bd7b19258a6e62cac675a69edf2a57c07282602e78f33c
Date: Sat, 07 Feb 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770455033
