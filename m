Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EE61A08A3
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770735834; cv=none; b=Jfque9xO8KPoUjbRH7A0GA4fTiodZEOuBWij1CY5gRIX9i9Fpl8Jn2nbUBtwCnijhh8Jf1bkaqqjFZ+r/inxLxWDlFvvN8SqZPPlJM+dbLIjVrvu33FSSB2d3VHlJq3fcw788bgUnuTv+EnZ9JWXijeajsTIfgg5AIDR40SdPM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770735834; c=relaxed/simple;
	bh=BHcNy5TgBziqJIcMIcK83VomtUVYQgxIIUpVPUCTBmA=;
	h=To:Subject:From:Message-Id:Date; b=dz+r4xDeQBY6akHFRoq6bI9ReMrkUVCjrSibip5OOMhfBPGHzBTrer54Rk6UfYUTSbeI0ZrRQEXTnNOVnqZMoal30a0CcxdmeF6MwbR0uj+vsiH5WC5mR2oBS1D8XpAfO4iKxusLkbKkP8PyYvQCDjRqELKCUpwwOWVtC0jOOCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZDXG1R1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZDXG1R1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7334C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770735833;
	bh=BHcNy5TgBziqJIcMIcK83VomtUVYQgxIIUpVPUCTBmA=;
	h=To:Subject:From:Date:From;
	b=OZDXG1R16HNITSB9r9yFrgtNjeXEIXx4sFL1uDZUje5jCrIDiYMq65Jq2oZvZp9NF
	 A+q625yPsk9RQ/DHgJ+jWefuvNMXNz3vSbezQoZDlm4vEQ5YonAiTxd90dS+yvBELR
	 IJD5F1S+n2tTSazYCMy7Xts2nnF7yTNesDiomo8V3hZUoYD2/MlGIGxE41mbNTDHv8
	 lFcPVyFrvUNImhLTbyONpQnIxgxGyw9r+pZjZ+ppkTcu9gCo8v8SkjZ3sCApfHCMTf
	 InUP3TiOe3/BnpRipjs6qwLroRtR1C2Yw0/G1osP0tVx4zOkGQn2DHdqortU/958lX
	 ROdsznEsWCWmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989D2EA8126
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177073583361.7217.7505938483556715161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f75dd09753eb1a591a5f8ff2b578d7cce47826be0dc0b19f5d2abcb09c80d0
Date: Tue, 10 Feb 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770735833
