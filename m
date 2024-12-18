Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAA61F191B
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734539754; cv=none; b=E4OMt+hKlMg8ZzOx/MMNCAYq+2nQz1ShO15CX9ZJlPWcXx0jcmYtDMihK2YbMc4yJ12PuqmxNB32b+3vd+4OyhJT85BgJYoFDYgb8251J13Ew5fBKKusU6ruvxaYfaEuTnXviOeK3nBEB8UvDH2YI9sPcmJtMve/eOTxZoer3lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734539754; c=relaxed/simple;
	bh=oSWiy6svo9CfDZX9JfaI+411KQcQ3v5wUOhrG4XGYiQ=;
	h=To:Subject:From:Message-Id:Date; b=o/pW5yPoQMFR6tmRkQ3K2YfLzWgkpMJY9wCCgwX6kiZv5EnlrDiNKI5C2oSyA0BbQ9KUzVcTMuY7AwtwqwJ1TBGl5vZHAhoVLdaJnhMTxKfoIgJ+105ojVM/eYfZ/e6cYWgX/dbwZvrURK8Fy6n20sD8/uZoqYezqy60eTl490k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvknKZJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvknKZJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E63C4CED7
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734539753;
	bh=oSWiy6svo9CfDZX9JfaI+411KQcQ3v5wUOhrG4XGYiQ=;
	h=To:Subject:From:Date:From;
	b=XvknKZJZcdzKtjBrvDz5C4vbOmZCSH3ZJXWwDv6UFOKXhOFJwPtyBczuK62yifHDA
	 oEhZECMWoHPJUN8VI3StzakEguCaCAjY38tfaoxTy66RS5Pw20LeOsBpNzjRYXakEH
	 yMpRrI7iyIxoVDGAWAXgiQW6Mtk7Jc42tVLidzO38/0rl0Ddh9THOPf3cAz9AQmLwt
	 q9oMUxREphHXcr39T8uTyEI9TCOZfMiWKWKQTWTOP3XRrT6ChqTmj6esZ1s4gcKRo7
	 q1u3mlnYLyUxGrZHjnt8Oo78TBXTXiVAk7qL/Igih7U5UJ6AaZ6gfsUrDOMxtoNy+U
	 k30BHPp+olRtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6E1E7718A
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173453975363.8299.9119460876575019924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bba4e4ba80a9cf6f9877af74a1b4c5452c47b993a7cf00c8d0bee572ba38e6e
Date: Wed, 18 Dec 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734539753
