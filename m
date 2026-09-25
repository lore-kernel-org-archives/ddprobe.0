Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7B0486408
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790336434; cv=none; b=Ke3ANpcpGUF6IgGz/sF5FcK7A5OqNa8w+JAkW36TnVIan3wSbTQ5UNcN6pSAIPjyIP0qXLSbvPBowChtPGEuvwvdaoPcVflmvjHeJYxFo2+Q2lg+1034+Fe4EMI8LltbskTcYdEA/vtu8tG6ZvriFZC8htsVjM2hKKM5/9lQwlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790336434; c=relaxed/simple;
	bh=TuDkGyyu6SDb90668bSP0WFkN1V+4WsQnxDnW4p6Zgg=;
	h=To:Subject:From:Message-Id:Date; b=ZBlDaJrllxTGX8RmNygitiVwB8ePY1T7T0RYDXXF4Yz6ZYbDHo97z9ryiWnyD1GJvenhTQQjRa61B1wYwuxqaOhVdShTRiWHi1F5TgqfGC8FYcmf8ee71p1qnhCvRxkGiv5/OXGmF1zAfm/EnRxzSX856aMJWqAhR+c97NX61cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUuDztGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUuDztGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5367C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790336433;
	bh=TuDkGyyu6SDb90668bSP0WFkN1V+4WsQnxDnW4p6Zgg=;
	h=To:Subject:From:Date:From;
	b=TUuDztGVpmMs0CBSIgdHin0HGvL5Kq3Vvf4bvi8/K5tK9orS0pf8aMvgL9vCKrxZQ
	 RAzCqBdP5scJiZePHdDptTwSkflig+Fthnb1sQf5dmyYTCXS9TQDn7wZ7W4SOUFXnb
	 I9RgLbkuLD6pFTtvkfZfMruG+wqGSA8m0KXCGWcSoRmFcfmbEsdE7kpjJiMroKLdjt
	 y8+ujnIwgmoqXc1DBiQvqkPA6aYgk/UxBhzH4HDZkpm/ADPXh+qA9ya5L7+TQnbPSx
	 J1G4kzTbud7YppdzvISPWRLzQbBfSQP1U66z8rKOS0LZRz6Y4dwwr9sBiD02dAa4tj
	 SKVHd+0plRTXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19B0C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179033643369.28767.12304619269335005378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f89fbb6d64390c6c81309cfba83c496a07c4ee682ee2379a4bab14196354d2e
Date: Fri, 25 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790336433
