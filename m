Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10816248883
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757175594; cv=none; b=Jl7fTuAeYuQa6pdM3Np3WwulL6v3T2DorptuYfEDronV0RuN/estH/Y0tcJQJS3HyMZm7nT62YNZaxnbr81aHbSgUSUM8kxuqxH2+JiNVg3UUzjjWSWJxSHRBpPpKfA5tQT/3ITb1qge0DuaS6R/fClvA2aWO80QzlaGwiZpf1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757175594; c=relaxed/simple;
	bh=gx77wW2t2aUQpzOOmRZMUPfv7oeFioabnXmuUb0Doaw=;
	h=To:Subject:From:Message-Id:Date; b=P/ZeBTE4OUJGJ6M+87nCnZm7XxbvfzBTDJDne6SvPzWCAo8rupKUn22NdfWXUiRPajWMdY6gFkHSeYXGyGlF5CUTCpxQ0opDvX6tPcurzeNkOROzONKRSlG8LFi9RfPsOi1iiiMQ7/jhWKU/huqitT2T3bOEr/RPfitFKcMy78E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICtxyOcG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICtxyOcG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11BBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757175593;
	bh=gx77wW2t2aUQpzOOmRZMUPfv7oeFioabnXmuUb0Doaw=;
	h=To:Subject:From:Date:From;
	b=ICtxyOcGH2yV8YEXqM5xPRUjne3mo05so+tWMiQQoNaSovc3wHUaEkriWBBaz25+m
	 42e6OEyCokplfL4QfzKKO5TVyo55ItpAd7Y8z4sgq+DwYK/UPv4gtb3Tdf8f0T+VIY
	 lw9WjRGMpcM3jbpVcpbZBZdkxnOKUEQUqdle13x8T9xwZM9oIkX+ff54PaBKABJNTt
	 LmnqnbB5TKFmqua0XOyBXiRsW9JTJfRE06k474v90PZGR2NbTEyY6EMifj/dayg7Lf
	 a6LukLnYqQ63F+q/pqyPpoKZUqmXlKA4NmwTDO9YA6NyBcUXzeRfnlC1IkymDuuwvZ
	 1tlJEqqPXMQtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5BDCA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717559357.16006.4031737219781480678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b68d6d4a78a7563ebeb5dd2b7ecf0838f621b1aa14a6122fb0a4154c7d7b67c2
Date: Sat, 06 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757175593
