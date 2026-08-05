Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6209135E1AA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785941434; cv=none; b=SCarkfvBOrPLZRQ8uaaYNhP94NZEcrfs/Tg3wIY8UdORGYpuOqH0Xofjdb8ysqCLa6WUG/g/0yP2/ClkHU9DSlbjNcD70srXZMqD0RkTNAy1nEQRu8YNS+EeNza03E1gMeFihuZxeNP+mgS8xT/HcWGguGxw+1pXcvq3gJHrnEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785941434; c=relaxed/simple;
	bh=/n0dABMN0k1L/PcexQZXJE5OIBu66TskeAF9za18ZDo=;
	h=To:Subject:From:Message-Id:Date; b=Ch6AY2wH5sGXPKHBI0Xw3IvVTzzcjnndHEjhH1/zReFaOx7stg7KfTyRB8XKxMnzvWZURPvw5dewLuL87hCB9Oq8IB8eRCXU171ciwvhZg3urcA/EMz/wzlYNPy31ngPgEp4asKWpSSPJr8/0oUW9Vbe53FYhmTCZv4ZDJWaTlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s05HRIW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s05HRIW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A08C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785941433;
	bh=/n0dABMN0k1L/PcexQZXJE5OIBu66TskeAF9za18ZDo=;
	h=To:Subject:From:Date:From;
	b=s05HRIW/UFl2/b0BrTwgdOKK55saaDy4nsg8POl88EebSV6DceNtLYMnGlqoV6miw
	 U2kONe4BkfcJXtc+YWCAtYHCa8QuTQTXDGPjmIJn0cviAQaJmh99frtLPb35UpQihR
	 n6SQnaAHV4NzJJGrTAwlxWpwpvALHknjqoWBjJ1l4pNij63y0/SxHmQ8vy5jitXJd1
	 /ZDo05Km/KGIRXj208HJ2mZ4ju9wM/ii8qVFgENpm2Ba4p8k9o9q4ugA0pzGY49xs8
	 RVJP9FeoHqb4pBXFYx1fXbpKx2hHyqOMWJY2NYavYc+C9zYeZYa1i7QiJWpTR932t+
	 BwVY/2n/aftQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B117FC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594143371.7037.7323188619978328761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6fadf4a72c76f1c0053abf624cad5712d86f72e9613f18a596773249ae0ad2a
Date: Wed, 05 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785941433
