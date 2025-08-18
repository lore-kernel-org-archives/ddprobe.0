Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3734125CC70
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755550794; cv=none; b=QSZvdqNGJFk0U+IQJ2VDltFsx91NpUl01L/zSKkM9qIsHj1W4XNZKTmR77+c58hvJl87mrVezqb2SoJknATrRz/okgtEGAJMFdPoVTy3jedKssa1JawwSoUDyLBfpryTNOl+3QwtfBrnguJmuq8lde+OKZXH+HPTOJbGkHuz9OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755550794; c=relaxed/simple;
	bh=XuPYgN8bK5b9C+sP4WMGj+gH26j+Gwaqc3WNrQhbfwU=;
	h=To:Subject:From:Message-Id:Date; b=dSFHIvgvQ6MzqBhpdW24eE57Re7L38Qc225NrQDWeYUXvb0LsPjxN4rdL7kMbDV2SpHila6ntsOghsCSWszF0aI6qubp5tMfDOnXeLjxcpgfH2jzgOTODHY2azyfrQfkZVxowQ4GxHtiLPE3GZI5gtIWSWIMocG4463FKJzkRbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSDp6wg/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSDp6wg/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1716C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755550793;
	bh=XuPYgN8bK5b9C+sP4WMGj+gH26j+Gwaqc3WNrQhbfwU=;
	h=To:Subject:From:Date:From;
	b=oSDp6wg/dZ/CE7Vuu5UXvENpiBShNP1tCP9DzHAWWX1ABH8AE0+XrMdxAwTk7tXxu
	 bTsRDet2mAB1XKmU2YGe9/FQYsCco5oCztzWZEkXq6LfCZuZZ51cKBq5x8XKpV4iqZ
	 0ulggs8K06LSDFNjDXpIh4tnRACeyFMhoQiCGJXC1+K21VaJAqYtBDGTKqH+XDueA3
	 bfTnJAxA5HHljQ3DW4g44NE2PoNg5iiSES787LQwRwxrLgKS/uXXk4sd/ioMuunl6N
	 yeMa2AzJ1rSd5NFhvO4yiExwHcVFUouHJdry8TxtlA9ovBoD3bfGqttyc/ecLMv9Eo
	 Z0biriIf8AzJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD2CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555079357.9811.2766457528468175128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e1ca7b31813830c2df12370f119d4c69d34b1e9096a6411b90ae506637c66a
Date: Mon, 18 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755550793
