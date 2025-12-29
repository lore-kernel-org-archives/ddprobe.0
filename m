Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7AA24A046
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767047634; cv=none; b=G7T/X+SzCNO+/OYDhj07JSGmdTZs/vOqoj2boaC/4dQDUJvGRX5ibja3DKeBcaZPqD/8P4xulLhvA9je6uNk6Gzd7AqC6xR3JWgmkbrXq+vyjNKhoPr7XxkdrPtIRoS4/YbeCB1fWGSUKKPRpS6Fe/sAjWEfqBoUtgguB5GvK3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767047634; c=relaxed/simple;
	bh=ncADV1zhvHfTBviEREv6mATmQP9a7LCmCaDMelEQWgc=;
	h=To:Subject:From:Message-Id:Date; b=Yu/xphl5JfWxkkv+mPYGk6+3HZAUtGZgsk/HTZtS22+WR06gJxZb5mxOJg0Z0C/RiQNWbZQvbREgm92J4+YsaQbXmaQiLR5I7gUFiTuVVgaq7BwBxDDjiqUU7cndYKwWy5mmXkG6NngQeceIO7did25Xm4f/8jkeFqOUe/JyXVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lal8O6sf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lal8O6sf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A81C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767047633;
	bh=ncADV1zhvHfTBviEREv6mATmQP9a7LCmCaDMelEQWgc=;
	h=To:Subject:From:Date:From;
	b=Lal8O6sfzxGJZY19/M2gMVTgXb1JVOdXDveeEAez+VAreyVvPHNrzKKQkGog1qjNx
	 EhVBr77c9jtGkHbfDxNmTlQF3DBTxkHF2da3jvSX1td9kLh/N0emz5KTAMMQ9/DSWs
	 2thc3WbjOmtp1cAknyXX3eFtvnGsvQ+X2N5/Eh3eyrmh7EoPZt3lPxBr9nykP+fmNk
	 cEobcaHrz3nLEI0D7sS/sVkLI1BSj/6YWhRFc8Ia8rqbQsdxfl9K9gZKNQd0iGtcYx
	 WRkmiI8AZwe92vlcZuVfJO14EdYkC9SWEJRwC84dppmHhUVETpXiPoRwQfi8k/Weft
	 sOP4VWlt3bvzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973A3E92FE5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176704763358.6554.9412436523745312754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ea19992bb5290884a01cd850ab715bf218fe8329ac0662463ad4c4974f1f20
Date: Mon, 29 Dec 2025 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767047633
