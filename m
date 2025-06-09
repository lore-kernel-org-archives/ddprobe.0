Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF9A20A5F1
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749488394; cv=none; b=r0p4ECC8zXy/ayNz+gj9pDs2zXthzzSOF666ykmIX+PI9F/qVlZRon58CB1KQI7RJ906VGVbqvciF9t2Ei41HhR8M2bwsmTORo15YuPUzVpYuTiTjxxXobOdUaUNkfudKwfYV0dTBH4gwyIg6wgMkbNQDeSrAbWEeJgGUhMZmcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749488394; c=relaxed/simple;
	bh=i6uT6kPtp6REX9OIFdBwObW1F4WxBs8Qko21ZoxuwVU=;
	h=To:Subject:From:Message-Id:Date; b=shJaLTFCZHZCwWhz+tHKlQoT9tswnicsxruj7M9dLq/aoj1D0kwXizl17tNZmM8smLEvFGEWzc6DV+99MdXecrBWX/0P39tXDg1R6XOGnDO8pExdLEXOaXNLppkPWRwDv7Lbbvbkawm54JbisR7jTFwWNIhlO1U51wZ3PzjXd84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8miKQL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8miKQL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2362C4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749488393;
	bh=i6uT6kPtp6REX9OIFdBwObW1F4WxBs8Qko21ZoxuwVU=;
	h=To:Subject:From:Date:From;
	b=h8miKQL0a/4NSBDLTuovYyQP7Y9xDDyZR4qj7uOcM77FqLkm8bO3NsBiOMOrtzkBO
	 KxHT7YuV08Kc2/owwlxipHXFpg4jSsaj4PERtdwuUfr2CCtdgwDHhTy21WCK643yho
	 pIi36Msor8ImVan0PVwc3eVyCPz3oReEk3Xq598oZj6hvOzsmPla1QKq5DVTfsg8Go
	 sKuRuLf05KgZU1x1XAuUUzLkVk0vhHscw0JBtB8ntWMS/ctch3WxDdxbjLddxtm/2U
	 O9xj85x7tjlqTPuMj/pYo+dqbeMtJ2iKc9jnnKOht87+iT4gIgJrn5j2UK57psqLNo
	 Au2H1noyfAY5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF9C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174948839358.943.10182999200880940818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f3ba207f9ddd94edc575051a4793885fe345df66fd54b7c00aef16ccee2d795
Date: Mon, 09 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749488393
