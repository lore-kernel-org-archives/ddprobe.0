Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBE844236C
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789627834; cv=none; b=GV+Q7pLFuG+FPMlFJsJrYjE6nXW+a3bWzxz7fD9kOLhcEKkH2MuH+2TndpXLXX9KeTgoCyN4+18sZEkQEiaXrXnIZPSXEzohknITIRy9uwSyadL5GX5PSL4v3Pw9JX/a/hDkd/XDjAIvr+vT6FwQaDQbPoC+2OG1bTBPnr/LzKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789627834; c=relaxed/simple;
	bh=UvEdiFhrm3W3l1HXZKU5x64VDHGCw7Psv7W8fX6gm1M=;
	h=To:Subject:From:Message-Id:Date; b=uafki0689Tvmlj0cOWM4YasP8TO0bYvhhKDNpyDzSk1nRCLwMqpe1shu5iLtCyIWwoXMjXXtbSZ0+GnzDo/tZKE4hH5HhA4I3vY7j7ozVE/AtjF8xh0IdYLQvzOQ/+KX7vBozdLew2MQT9RufIR6aUBJbs6py57SuNcJlI5ZvFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZlaZQlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZlaZQlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5B2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789627833;
	bh=UvEdiFhrm3W3l1HXZKU5x64VDHGCw7Psv7W8fX6gm1M=;
	h=To:Subject:From:Date:From;
	b=RZlaZQlBk5OjMhLipNo1r98lasEimeR9gJqvduITBm3pD8MEDKpeLN5NNST8ciNQT
	 3wyHvDqbbBGZBi99Iq1EaESDWZ6ZYSaD7AU/MwdLwlAluMNcS9s3TTMR3t2y3CsY+U
	 Wb52QP2CUfttwodDxOG/Rnp75poJviX0bbGAHbouSlJk2D3EaLI9CzbtodVycivXnq
	 Jo5cr2scBBBlzpHSfoRNj3j0Qcrm6oaw5oLl/pRkbnkxYMXK4coAhDYwx0Vg24b8Ij
	 tZnVGDRB5UEJfbAP5+Y7uEsuuOpZXXFvxqG2njh6Tmc7H8OVITQJZFVEQCLZBwS6Uw
	 L7SRiFydXMeGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA809C982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962783368.8387.17657623600077085546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b1b7e312db5ac87317bc325aad1120b88a26ec96140c95f6e7ab49ddfaac69
Date: Thu, 17 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789627833
