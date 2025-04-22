Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345B51607B4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745294394; cv=none; b=mdscw5dvjH8BI6Q32qv20+e2iHFmV+9Jy5LvBI2F1JjPjbYykzM2PMiF6emsOu2JgI6anfzzY075l38/o7TOBXuSF/s1U+DQyql4qBHWe530h3a9HKgnOl1QOh6OqJrmh8smXqbkXAoeG1nYY6aWKPRZUaHNXmxIDnSNg5/1U6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745294394; c=relaxed/simple;
	bh=FdvPyHRebc0mPJm3x9lQteTvnJVkymIN+qUjdZvsBgQ=;
	h=To:Subject:From:Message-Id:Date; b=tIKPOyPA+OZLZ7eSDoEEq0Bl/w1/NHLI+W6Bud9Ew9xI9r2hC5QUw4kQJb2ItSQUJEudp1sMkmliII6DjP24yIxZDaQtKyyVIWXIegF4D8oH7NoExRlFoNc/vqz1IR8gW4y4rsMfTYwtpj/UwwTHC0ke3B3o91iaHoadjTqu6J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lvlioh0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lvlioh0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A608FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745294393;
	bh=FdvPyHRebc0mPJm3x9lQteTvnJVkymIN+qUjdZvsBgQ=;
	h=To:Subject:From:Date:From;
	b=Lvlioh0MTvyX6sswotNPs3hNz0c1GScx/0w/gCAt/nl9urkaV+9B74bs1jTYrCvBp
	 GbwxGPIrYHvs3c0Fe8Oy2Ozyb6zVaZRkboGvpyMgxNF/E1U8ERJOq654iYjldYKChm
	 hGznWGaIUnIZkVzFZ2X+6FhZWdHrnDwTj1mURYybULNLzOVKzT5RIZAwcHKwAC2wJU
	 JO0c+BE7ypOuxpmcItuzYXbxn5ECtnJXB4PQ27SkF+SQnfCG+nctlPvSeHME3OxFzX
	 l1rCaqWy21DsjeN5jAhscC4c5hZJkn6me9hTbTElKC+SPekwWS26DK3s7/Totu70Xj
	 l8qilCwTE5exw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C07C369CB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174529439359.8860.1502899253629718746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072066488c0624579f2f6faf2fc489fcd986cba9c8f3adffd18a1b9a78433bef
Date: Tue, 22 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745294393
