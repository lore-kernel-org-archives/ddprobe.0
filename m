Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1687826463A
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761558594; cv=none; b=ugxUfqppQN44QaP3jjvR/WEHfz4izcrBtkA7wPZpbnNsmUZRwlMWQw8bd5xHSvwk4mGN1Ah6DAjDvi3N1uQ8Di87vJetg+uyqMfB/9RuExpUHfk7O4f9Bh/V/detnpyDk6HTjE+9PH3msBvqEcKEbLTm9HEfgxLhyATgEZKLc9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761558594; c=relaxed/simple;
	bh=/4/ITkSGyFAWKRXiA3x5Lz1UZXKYSreAD6ylQI+SY1g=;
	h=To:Subject:From:Message-Id:Date; b=qgSBZfcF1tKpyObAImNyge7JTKLd34ajRLpEHdfW2NG8EY+NbuECbpxkOU8+Qu0YYsnZkLFvLcW9AJt9lh8iczDGGoSVwYNv6blsUuno7fZXELfA+Cm3NOiLnoE8k6BUuyYb9nQnueakQthUOvcTnsrZ6cQZhegcHBYT9T2p654=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaKc1IJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaKc1IJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2E2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761558593;
	bh=/4/ITkSGyFAWKRXiA3x5Lz1UZXKYSreAD6ylQI+SY1g=;
	h=To:Subject:From:Date:From;
	b=jaKc1IJEnux4B4+TK334Ig02BIKfZuAzm4KsfZHO7L+2nGtvnZKZ+mrMy9L5M/6o3
	 5llyr8m+fLIWQvK183SWZVBGACYkPU2hI7G4/K5VfvjWDKHTwibeUy+Of9gzxR3QRW
	 QP6qwprQd6atp2By0qzwFjDQYwkVlY1Nb+GNmJ1OjVaF7w81CE6DSGPRZeGeDTa15u
	 VPAO8MxkjjLieksV0M7KUepJvb9vJI6EzlbjjzMMiPjGCSzY50CJiTPS5xlGGlV0re
	 wJJTkFTCG844Ff5zK2bDqL8gqDb9+FxVqtckKQVogsOG4A10W/tGpoBpuHDcxvxEze
	 g67/wV8+Ae8fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F754CCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155859357.1355.11391319848384017912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f6f5d7595adf87c8f8ff21c260e8cd925b5140d58bf2f22b6108f752b60ece
Date: Mon, 27 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761558593
