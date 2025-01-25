Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBB278F41
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737833754; cv=none; b=fpUnpaHPLMQqJQZC1t2mC0HbPQHT9PIKiVrL5k+iATGQ6CzwK9c1/nlc/j8ALp9gBhxAV7HK4fHeFyOKtZSe2zCNlHD1prJGm9Do20J/B8/XAL0DVovDGzl3TbMHRRXwfptWIkq+0cE6lTAnUPVjc4h9yhpiWnyRrJ7vm0udAJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737833754; c=relaxed/simple;
	bh=KbiJU54nx7tnuulagsOmvCUE5UXklQcbC3NddzAV/NQ=;
	h=To:Subject:From:Message-Id:Date; b=m8h4TEiC0OlA7+b1QsTJvwsl+zrxihVQp6KWn83vVXbysWdRYlNhG97BKtNyv90FaYkvD9BJHJ8ptot0kVoHjSGuWn48DGlb7gDJ3OL2L9iF39UjlzjNR3qAeR6pxfKtb+mlSlfpBxOb/kucJXedKmK98/1OvZ3+/0bWggZTLJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sT3+8U1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sT3+8U1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74D5C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737833753;
	bh=KbiJU54nx7tnuulagsOmvCUE5UXklQcbC3NddzAV/NQ=;
	h=To:Subject:From:Date:From;
	b=sT3+8U1w+VZyDWngNEtGtba0bh422qHr/nI5Gglmu4kWO+nIH6vvonDp+aR9A0OUB
	 OIbAhDNVFKJYz86m+AllqHl/MLI2yE3QPD8QwUNUHJMTrkSL5g+ktUyFSbkV9epYY4
	 W4LiM2peDtxni+72YMkIV8ZPFaL/hpk+2DOMNkD70jayBGsmhD3h9xey0TbrMkZTHN
	 7oz8cVSSL4OBmpS4NXPn2rvab2l1KQaWxlOXPsgXCWcLc5dC8qwiCxIHmVxnQ1SNkg
	 TWPzfLzZP4dgF9O0BjDU3LYRlhUT0V8hEoLDj6HuJYOpHm3GcIDGoFaTrYb7168JgE
	 ofPzpIvBXJjCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A396BC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173783375362.13619.242883950534717934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7037df5a7ea12686aefcb5d40df26bb72d93940351c9de421fe8a74f177554
Date: Sat, 25 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737833753
