Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEF1647
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728001554; cv=none; b=Csnzr+OF9Lqamz01rz2EASwlazeN1jiYaAm0E4MrWXoKnA2y8pt1cu4zQUqw7EN6ZDOhJ5OFFzKYtDsuZk7NBGQVWVAc6yunMby1fzNg/bt9Va1q4jdxD1hT+A959dT1dGHs3mnXbuVHNwbJwdFHmI4Umu0zpsnsMgaQpEKwNKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728001554; c=relaxed/simple;
	bh=QWBS5adMJxqayZiZtO938DfVWcVcq2BNUpK/SydSFGg=;
	h=To:Subject:From:Message-Id:Date; b=TlIooL8q6ahH5U1T31V2zMz6Ax9+yOlSS/MzcdikDLjqh9SH/19A+SiZRYrftXor12GSO7yEOcSJDeqmYjyn8cIE81HqZznqGTXG1safErLQfKga0z5wLv2rvfrH84ZgWANqdviP5kCFcV5oNcXSgjzUBIVXgBhHiWYk2L4XsiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpi/GCUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpi/GCUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB146C4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728001553;
	bh=QWBS5adMJxqayZiZtO938DfVWcVcq2BNUpK/SydSFGg=;
	h=To:Subject:From:Date:From;
	b=kpi/GCUp9tZQXojDAsh5meDa/0yIOFzZCa6AstRK4reX/jBOQVM95R09AsKdIeDtS
	 fg4O+yQQIBqYnYwaMHj9faooEfXx4Na3IGz5Qd0wSjHN+9qyRapZpbiKr/DIMgKyk9
	 3zrlb/s4jcF/JKM2T1OGRZlUhJfshACR9YMd6bdj5T+wQhKdnCqNXgaphtWd3sxf8N
	 ESxKdAvIqAv9Ash22Tf7SrxcBYas8XtK9FA16krHBSTffYL492MyB9ZnW1wVPRLYmb
	 4fzoH17uFM7f7+crv64BuCknT/79nJHuQp/HQAkYBxeveuzaf1df2LXCeBthCVPdJN
	 o6ZOXMG639new==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F58CF34D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172800155360.6250.10346795406198354512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a3886dc1078e33c9d67bbc9cdba518d85b3792310ea5834aae407684dbe0db
Date: Fri, 04 Oct 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728001553
