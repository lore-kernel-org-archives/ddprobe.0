Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E41221F1F
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764687174; cv=none; b=CAzrpMq/e+A4vTQpNNRhK6g8JLP7KE2gbGtD2/L4WXBER2eWzeoFvfvibvHYXPPdSC0uv4ELtitu+pwzJFr5/17HKdLx1yZ495V0LVdwM5fbtcy50HHJ31ZdzoGYYYxwT9bkk6SZSc/l7rZjrxOMp4qvnswZIdnwN/CgmqavFP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764687174; c=relaxed/simple;
	bh=h/3tfbNwPkMNyPYMWNqkphUxjLUh1GWNTkG02NTNwKY=;
	h=To:Subject:From:Message-Id:Date; b=dQCro1BNSeHe+V8Ocaq/iI0jS8rqa37XRKjzfEXLCqimtuPM9XG2yWxO2kInqvvRcwQ7dd8qv3kpFYvTp8eThjbsDKTr73G22/MDrbjQHfq8LNeg3gGIbv5WSKWgiwqFFVS2l6FaP7JMLNuKVjv9WcjIsIqJSqYoeHDLf+DQniY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CriFMC/N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CriFMC/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6684C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764687173;
	bh=h/3tfbNwPkMNyPYMWNqkphUxjLUh1GWNTkG02NTNwKY=;
	h=To:Subject:From:Date:From;
	b=CriFMC/N8+LF1gDF7t540zCx4NZTkHze4uwKv8WtT1lZBww5TpRlRSDzFFSy8TQk2
	 Z5IzjvXJquQAc5V8pHERvQOD2fH8mLxTVGZBiEwAG9ROooktNzxTOBRgnhsQFEDlfL
	 Cctlc8FF8TiOxJ3xWvYQAZOOmas+Bymrux7X7d7vfY4XU76KN6kQqnjq57AP7pW7FK
	 b4Jqg1Mha8woXw4I/3ecskQhOK/f5waScW1zh81QMEBU3/McPj85dMQP/NxVLlkvyQ
	 ZZSomTJ4uAG2FKJMgdbZAEUP2wLSb/245HQQ3Us3aQcTF26yJLK/WWEOFfVQNDjch2
	 lAkwsqvSK+c1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E32D116F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176468717359.7919.6820318945782404791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8e5a12b9a68f991dc14558a495c8904a4d1fdfae6962a8a455a20591d7bdbff
Date: Tue, 02 Dec 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764687173
