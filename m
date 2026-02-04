Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3A13A1A34
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770197634; cv=none; b=nVvIWYD3p/15RX5rRkWI0YuzEaZGbGRz/60UGOYe1gBHE0Xtis8eK9lDxLUOcwgS/le7k1c40iibpUdTjqlgiscBZI9jIWwJ2Ahw1IJZ1+r2D0a0pvwLNRwFSfofpPSwaqT1ozFXyR/6oIyAtGUBhzlNRjiqWd4HBFQloX4WUlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770197634; c=relaxed/simple;
	bh=CkmLOMgrWix1ir1Mj7ArZwZuG/GDVzXn69Q1kWnqbho=;
	h=To:Subject:From:Message-Id:Date; b=NWbgQ5oce716qCzXMyhVQaQ0Tw8Js6jX2upQ8wOc/0OLydQADblCWC7Iqmk/8COCkpJDJunsWy6jsDssbZCcKMl1c24S58Vju+oOAiddOdKD6kqrRuf54+vLpp3p6QrirWEa8U3yTzQZzv7SJjuqzr7NaZRj1VofcYYIil4Dnbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B31pK5UM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B31pK5UM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A4CC19422
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770197633;
	bh=CkmLOMgrWix1ir1Mj7ArZwZuG/GDVzXn69Q1kWnqbho=;
	h=To:Subject:From:Date:From;
	b=B31pK5UMgVY+lfig8XvpZei0JwQcghVgSDSKCHVUMc4AKeRKU2F5dQuxy5Mx1m3io
	 CiFtTbvbeRqWoOQPzdrsvobjnkk202ffmsYWzlZjrD8D3XbYrkDNF8RRaI0mOq6szA
	 zLqwycWoFuePdvAbpQcV/cU33kYSaKZ3mko2/KgWcCtpDjVfxwnN98BpzIpbQSZO2a
	 q3HN8Am0ukNrAPkJZfhXypAjO3VWv3z5XlEEP1KRgAs4JO2Wi3WsDSuHj1fwIY/voe
	 4klZUwzZkfHKFxmBA9lEtLvOqlMCIaYdt2VyoMa4gs4zIoStdMTUvjBylxFMy1o8bn
	 CRtVEiTO/nT/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEABE83EFB
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177019763359.31261.5972712341474506293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62e2a4bcadbd645db602fa18d4ead8acb43daea62637d43522b390ec918bca9c
Date: Wed, 04 Feb 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770197633
