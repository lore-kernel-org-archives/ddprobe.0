Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBAA620E71E
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745881793; cv=none; b=FYS5M+6eUoM6NZQHd2MuY9S2IaNx1u6DF5M9l2BppRnTlgzXKxraoMfLLj7vHwcxU3XgCpFhAbr648ndlTpwI7B957GeTatqvyB++qVhWy4byq6sEuqGJ61o2P9QAoWSVbs0IFrymnrjEb8oKFIPHlkTOYd69Ocbrx6a8gAqrhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745881793; c=relaxed/simple;
	bh=ADNrN893BRrzSjQmWh2VJ8lwMkG7FKTmXmWt45Ezbbc=;
	h=To:Subject:From:Message-Id:Date; b=cz/1TAkNu/fzGY9sCsoCAvD2WKwqtwKz/IsyiFi7xmfZhI0o1eZUnNg2bVPGIRcY5BccIXHfRuinJA3s273+29KW6Lg7a4UOL+SKr65SmZIN9LxWdhKDRgM1W+J7Yheqcy3ZMz6KwSEhNJBbfYTH5LdUHBeXO7EbrCCLcFB7tDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdJR+aEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdJR+aEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D984C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745881793;
	bh=ADNrN893BRrzSjQmWh2VJ8lwMkG7FKTmXmWt45Ezbbc=;
	h=To:Subject:From:Date:From;
	b=fdJR+aEOq/PKyhc33j04kF2+gZ02RI3B4hHHRrkRCkUhmYaZGUMswVaJNdMdeP+CM
	 Fs5jgy36zPpgNU4N20fVFz9/7+b0wVxzylDkNqRvDsEu5+PRSAFXpPjwAmA2sQwD9C
	 0B8RVRF/q9sncawao5EX2XT7XSqxPBXqp25wGhYkLk6Efb+JgYeuRS5BQQdKhBDQjf
	 BoQO/RHE5GYgC8iTwHroG/ZotGz4osvJVzHaDhU8q11a3/gLmhovjfcNr23rPx1Mqk
	 LSU8TXa3jDZthj086ENtpAVzmdEtQ/DHjAv4NbiE2vrO/+tNPqAX8y9g55AIKsdZAY
	 34ClLQxyw2jZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A3C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174588179357.26079.13873017095809432203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab45a2fc8698640221c28d24d82566c4faeee299ed69436b2cb8068c5bb5861e
Date: Mon, 28 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745881793
