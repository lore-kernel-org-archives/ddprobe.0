Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98C924B29
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754698793; cv=none; b=RZv/64X+8uTIvgEL9GStRBOYUmOPydQYDhSQtLo66GD0hBQ50UypX9KMK7/4CypIDw4989h+EWWjxRmUDjEizvjEM1NJX+o7GYMZE1XrdEkGQYSekaFugDGc6zQZNdj2ofE/3gQOitOm+T3chpKRj53fVrEelLJM3NVRUU6zSM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754698793; c=relaxed/simple;
	bh=/jrQivgYCODYRknIRcE1ror7s5xgwD7BFywxWza43ns=;
	h=To:Subject:From:Message-Id:Date; b=N2V69JOwsW6vHZelfE67qP4dhYNKgubCp3uqs3tEumdhd+J2r0RnU7LOpIMWH8gcKt5kdp+BazGShvLuAAFgZvBSU5Z826S+pH7KQUnGBM/xJlo1kHq+aZgRuZDhIPgd1sV1talTxwMn/39A3OSmfVvLBvW4p5kRvYJ0jp6FZ2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COMgdnvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COMgdnvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD5CC4CEF4
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754698793;
	bh=/jrQivgYCODYRknIRcE1ror7s5xgwD7BFywxWza43ns=;
	h=To:Subject:From:Date:From;
	b=COMgdnvNZUIVksxKur49U3heDM6sjoqIfVUo3UhV76JJtFt8O6O6UqYjuWEiwwX+P
	 f/6A50yJZ301dtkF7OW4bRhv5i2fovE2hfP+9zTEa9itC4aSqFmTWogR7CJ19kva01
	 TRz3vKlIVR/MNCMekfDhgXYZs3UUJKIrbFBbqYLTh4ChAYyzyTCn5z1VTXu6MQmcNx
	 RbvFVEV8MJqmGlxsRA236NGau4FQLByxOC2buLOHfq9NinHmWxzVhz+QX8sqr5Ft4I
	 dSw9AqPOxcf2vbrEueiEmWJ6ImKHzbAgFot/qJyHDAekF9HtKJaF2X6sc1thx8atfX
	 lHGQRQ/wzp3yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B8C87FDA
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469879357.30310.2418766987425885386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2a9616328bee38254eb3a1f8bd1a0882ba4677b1d91ac512d2762722883a5c
Date: Sat, 09 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754698793
