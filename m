Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DA8446D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718723963; cv=none; b=RiuENOvu1P5Gxoc+vN/2hL+B6Jic9pVdBYq64YfJn/VwBBWXOkd4r5bzN1NjVciQf4vQYc/Cm5qXHKRoBrak2A11dhjSsn2JcYpcP7NECGUsTOuYo8UAo3e5DIOT9bSxE3BgXvRSWHWUHMqrPVI/UsXUzJkngOE53VE2U+g5hf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718723963; c=relaxed/simple;
	bh=AMLF7QWLf7l7GraPMVlg4X4FqxJeJ3xZitMUDbALrQ4=;
	h=To:Subject:From:Message-Id:Date; b=RhI+dGadHLO8/kfD864PWX0alwtmFaInCXrueBZ/H1wnd/brjSe0CX3kcjv+bYvg9/puBa7t8+FpPCNDPTTEp5zvp2pey1/nJeD+T3vXMDF8FLLmlMee6fUwQQRAHZzN/I3F8T9fWR1l2CnbuDdy/fTkPXrgdFEtC4J5VbCry8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7gcctIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7gcctIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76D7C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718723962;
	bh=AMLF7QWLf7l7GraPMVlg4X4FqxJeJ3xZitMUDbALrQ4=;
	h=To:Subject:From:Date:From;
	b=s7gcctIp0iw+aHJTtjSUPP9kd/j3c0k64VbYRYs5pfaj0BOATYR7Mfpa7TqAKvazM
	 NFuU4cnmmSp9rhxlD94farOiaK6x1jB9N3YFc9g+FKAeP5v54P5BtnsOnWDVjK3SlQ
	 RZfMeLLEHlMLvQz4aUntOsUKq3ftpWz0N3mnsqfyx8ItyMdBKs+yvEPQopBxYY5/JA
	 UyYHbbVZ/RBsMp3Fa2zqOKWZ0EEEX80pvit/hvtyfQ7AfWfRjisaCQlH9flozsWKLO
	 d+LiydwCdtwWQyh6ozlh0s08V96cgI/v7m2AFoWSFxQfXi42+SRud9wlej5enOEh5d
	 GjzB54gJ+HxaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7688C2BA18
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872396280.550.16859174775577883576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00173a60f554805ea441d8c38cbcdff387a75832fbef3848f841a3206765f4fb
Date: Tue, 18 Jun 2024 15:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718723962
