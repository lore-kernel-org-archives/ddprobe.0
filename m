Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383A63403E1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784611714; cv=none; b=MZj+cTsCBTY1ptaKiciI2jpKaMV89VbP9brhbsqcQIz5xwaAS9E+axCvZ5BwI8DpbdkY0olQJXDrDfsZOgm3wQ4E3VW+/+QktSL99y3pE9UulfYjYrw6rkzKvqOPJRiN/gJ44HR1B9NuktMQb00YsxRxKjiaqlZiiZnwxAvUlnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784611714; c=relaxed/simple;
	bh=DceSnbdu0C9SD8LvGAOY6dcCdJGNWDeDk6yXWD+BaOw=;
	h=To:Subject:From:Message-Id:Date; b=r4XyHSZvfzz+FKyfg3Fn81dMFs/JyI6F5i2S8oLchUw5V2ZQWNFaoHRAOS0szSl+iSi+83HUjfdqbUsWXPf4xwUUCQIcVOnNaSIx9hZhz0lEhieey8EHvdwEWiNpCPcGhZ5qn5fu6FJzqgudQBN4gDcPLIAhVSwQnUG6fnziUIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgA5IVTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgA5IVTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8B3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784611713;
	bh=DceSnbdu0C9SD8LvGAOY6dcCdJGNWDeDk6yXWD+BaOw=;
	h=To:Subject:From:Date:From;
	b=DgA5IVTQPDV5x/ypP0wfbHQYEaqDKB9fRvxxdMOHECbCHh9d908jKgJ3OZWyMKDdF
	 7VV8iZVA55j1DoY+U54J+c7CK2IBcxCFZ3SASYHmWaKvtNHxvaUx4mckqJB4jAR8sb
	 IjRHBPiAONm/lvt4J8YdEZJ7FYcrpb3sIPF3fN/4hRB/94PYxTDxIg1n1OkbAX1XZ0
	 FUKdZE4gK8g0jEBBFYlepc9Nvl47HifpknVYr28XxS4WeDKeQbgiJQEEf3mW0LTnGg
	 PCWJcM9C683kU+xnkpjvbIO+kwemjyN7CHIMc53s9QLXpBxrCT5yFtnF1ixD2NQD+h
	 ODNZYW1TNxhXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0F2C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178461171370.20368.4997808358253672898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988938041e0fdcf79d643cf33b5fc9e0b1e74992f17a854c24c52ec53fd609e6
Date: Tue, 21 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784611713
