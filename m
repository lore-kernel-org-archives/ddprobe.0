Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D8B219E4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746881994; cv=none; b=AN0nGLmvflSIWZmDHHggdDrNnCK/mmzyru0Z3GvUxWsJzQYgu6OzFPX/kUgMj6PvjlS3qyk/Goaj+Zp0Bkp+cbHiw71I8ZoVZLRjrFpjoa8QymZu0IKnIji7bvcd0OGNntYg5ZIv2rdftyvIur3/USI3Ak+a66ChdR+iZyaDpnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746881994; c=relaxed/simple;
	bh=pWlK24qFare+NUwqwT3OhJo7M3rWBYSXOpsZntSmNMo=;
	h=To:Subject:From:Message-Id:Date; b=lBH2TcJPMPSs1R1qnOYlJXjz/ui/gFktyZd4urixRFzU0aXfCyLmLmWKaqPjmU/awzkrAGhyX6KyKc3oDUe2WkEnPv5HvsfIWbEk8dx6VBRPQpvwy7tmRWscJEWtlar2RngqOs2j7Ge76Tu/z3W0gyDn2j+giLOE16N75Uscusw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyRZkMTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyRZkMTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F897C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746881993;
	bh=pWlK24qFare+NUwqwT3OhJo7M3rWBYSXOpsZntSmNMo=;
	h=To:Subject:From:Date:From;
	b=JyRZkMTkqnutPCYF57jbEoBmBN44jzHioQFj0YQvsAfMfR0TCRg6s3jhCEDladLJ7
	 MLSziukj7oaD14ziD8W3UDb0bMe0lG49so5Z8X0zU/QG+hxaURy/d7oh3Dm02VJ8ly
	 /+JuzKyGHMCG/QGPoVxLHSgwNpiY3dy/BrTxmfnPzTc3foA4KOwJFcQkqFjH7mjY/V
	 7ctiRN3Rk6vM3dR/HU9kQQ2Cv5nRYuBduO2hw1WRhQnHVM4ynRBRckdpcZ415u0gux
	 X0M+cG2l7QY8m2WIColMjgEbIQVZt2D6hG2O10HU94Do8Helpg/jKRcC5ysn3+utdE
	 DyQLvwpExBWgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF8BC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688199357.14061.13172081127725601960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 268400c5d37b501a3dd6c4e096d60da411140bdc7522805579fcc25c6597d458
Date: Sat, 10 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746881993
