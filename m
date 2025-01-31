Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688AE4409
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738285554; cv=none; b=C6eKqEWmzTUXRuNMK44ozpNMtR25Ocexfbyrgn5+wumvYdAa3PoKF3kysr1Hgb2RlJvhYgH06Y4022xNrHQm22CI4+cjtf6CEEZ4YpoI2Dshwgk8QYVoZ1yS8jQlK/1XoQbh2BlbBjeBP2bkpwS+n9IJjQWEMqeQ0rOFvG0NN0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738285554; c=relaxed/simple;
	bh=h9jNe6zVqG+tJOwFY1SwyQKQJmQG4eJ/4c5fB8TAHkc=;
	h=To:Subject:From:Message-Id:Date; b=BDAKQsIJtEYbMFcCh5Q7CmCozAfeT4p1BuaBvRcIHzNtQyXncm6JIDlo9B/Yp8VbHZTr4JrVKugjBQ7Rc9oMMHWzgSLz144imJUenerDLx8gt2Xp8RRCGqQRv/qbGCQm446GvRxLWL/Ax3jDTsXv/we+ozSeSD2WyZesOelZBmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsjFK8HJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsjFK8HJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C245CC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738285553;
	bh=h9jNe6zVqG+tJOwFY1SwyQKQJmQG4eJ/4c5fB8TAHkc=;
	h=To:Subject:From:Date:From;
	b=QsjFK8HJtYCz+Q/wSIHHL+XN6vF3qOUYPWPLIINU05XnX5AEO5MZorJTyPYww/jzF
	 +TJk8Zw79I+KnryCXZzAjLqnOcajxNC0QeixaYz3NBkPbjMuD/BZ1CS+6vm5fhki9f
	 6sI9BMyLcDuqR4EOAHBz8VybqCpEVk0pBU+CXj1jidAi2tf+ilHGob2gOU3lAZoYb6
	 oHFFcvB3bDqJ80De3M/medYrPGQ7zo03oFFwfSGbNQaw0jwmAf8Pz3jQwuJtOKNiOP
	 jU667Oy2V3aOzTx16dJoYPImY/bKsctpUvi3F9JX1+09mlj6gcs4AcCsH5rq5ut0Rd
	 oqLCPG9Q56tqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F9FC0218A
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173828555363.20012.9796262254420225929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0514ce3c046971bad98e39d1a7c1fce5911d8ec67d5a6c338649500327e16f7
Date: Fri, 31 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738285553
