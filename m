Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D22FEC2
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745989795; cv=none; b=W1hVKNPe6o8yaUwBGR1yeMLHQGWj8yaeTW7td2MAvB/V9vd4AHIOOTwfbAAxu1yWO8WeBFlRj91Znj4svN3cTircy0VihOkdub2+EbH8Kbf6F6EaLZtSaD8vw+Qtw8cw/a9P1hGGxYg4EqeaOkdfx8gvjJekg8p4eleur8N6eVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745989795; c=relaxed/simple;
	bh=5z5NH9twtw8U1su03KSGNkC3DcdQ0DBBl8SGD/0qro4=;
	h=To:Subject:From:Message-Id:Date; b=dnkWwKeB18dSYYEWofM87rjJfQnTxa72t++P7vXKH1L4ub6H1PL+PrS9t+Icr23nOQBYfR+fQ7cQtYoHhsrn8IxKDPq4eQI07ESx+AbjNC1j/oUSmQDQbekoPh/pvsdSe9sfCcjdsseQJ5YVGNRIHbggDsQYg3pAt6D48/I7Dpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCLQOTlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCLQOTlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0958C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745989793;
	bh=5z5NH9twtw8U1su03KSGNkC3DcdQ0DBBl8SGD/0qro4=;
	h=To:Subject:From:Date:From;
	b=GCLQOTlPwT/EEtCL4OKWez/7JIXa7T0016JMGMXnYmHUT8RhcVz0FjlOjo3KD2/tQ
	 GWHX3hmdwWu6w398Az8RDiMcB9g2iKb9N1K6mQjL5f2EqJZwxSHU7o0iEZSFRSih5E
	 oC4GQro/wE+1dnHrtx5y0wOa36PmUqalWNT6sO/Rb2T6Z8gfvw3a9GTYsy6BcGTPhn
	 4awDUpRSsDSx5yc+8pM06qr4xbSV1bwkgwacuJN+3MTcdF57rqcZn1ZFYdudnpBH1R
	 j1yo12D1Sf0hirQLdnMrlEOZl8ZP8HuruwkVfvJWwjAH9QBUg1OUFJLZR6dTegIyLG
	 qbUOrJwn5nkkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E325C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174598979357.29018.7972686028486501038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dccd9f020e770728c7609fe99c37617722124e8b7a7e4e89b49c15d50b94a002
Date: Wed, 30 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745989793
