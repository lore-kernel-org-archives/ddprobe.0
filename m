Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6222313A26E
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716802463; cv=none; b=urjeczP6Bqs3Qf6Q/LUpxc4gB43iIgxFZPs5pcdfZoSHiQjYPgpA9WWeWqs6n7A7P1ytWRfaolnF6F4ZXhNO0jyFtp8XpsVwMguSDmDxyeuMupVPeyhl45yejHb2/aflI7uEULN8yxe+WXlxxHAjQRxAIjEqEDYULTuT+dKkhUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716802463; c=relaxed/simple;
	bh=Qqv2Nktfhtwm7sRGpbVnjcH7dQD/AOE0+eVNabv6gMQ=;
	h=To:Subject:From:Message-Id:Date; b=P5+2hzEQ5YTF6bM23n2p6g8kIJlIYlCLsEnwRSyJtxbN8SEXJL0QlW3cYHLUtnjU6Dqa8567vLY2us3kv44UytXlhJf80UkWX6zLIEiovfzcQhgy/aAevdtq+Pq5OghDI9ly1dhQbhO0LW6kvblJdJfh/2TyfZ2b/OY1yTAao7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcy+ta5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcy+ta5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E68B2C32786
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716802462;
	bh=Qqv2Nktfhtwm7sRGpbVnjcH7dQD/AOE0+eVNabv6gMQ=;
	h=To:Subject:From:Date:From;
	b=hcy+ta5tewcVbs6C3arrHbvgUlv98EEiE1Lgru/m8zF+IRnqeykxIoiNKJPqRMpON
	 2PXI7P+zybx86ChCsKZmNW7DRLnEEAqecosKCZcrU71h+hfm8KuWWh2su3EvIt2a1G
	 UsFDopirFvov7LmBegxtDiT8uqNgxQuszg61HhO9cOLdaWS+lEmjGfplJsy8Uq8BRL
	 eUtKwHH75gS6L6FvBMPskyM+10uIzr9pCJFeJozkrizL3fv9jNsg7p6HOu/JB5WK7a
	 foP+UtWgFVL9cwKM4HE5m1am5GQYBqgUBjphFp1XOWTcXiJzye6M733z9aC1ss0ujA
	 d3lTNdGUzjnCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91C4C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171680246281.9574.3533923567167095621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f378104bdd4812f4b6c288e8df43518127a88b96109d0d9af4c33ba7188e458
Date: Mon, 27 May 2024 09:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716802462
