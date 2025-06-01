Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334DE8828
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748764195; cv=none; b=mlsWiUIIGsQ/sjZ0nQTYuCpUpB28AxDgvFDTCrZYHseg3eaXhajnZZZUTfxbRW4SDTtWc6MjjcJqpEAmZBR9WAGPnp1Vw2tuDHVxqTad4MotrC7ot9HlzGdEKy/P0E34lWmrKwtOLn+8zLU0LUjZGvkuvIljZxWBgxKch7GmoTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748764195; c=relaxed/simple;
	bh=UVwqyu3HpS7EqNqlIDih0TkqLzM2QmfzizDtnEB25hk=;
	h=To:Subject:From:Message-Id:Date; b=gcymaFKY3jPfRnume/Xb5Bl+tKo0YyEJNfdjJBXnwY054Sxljjh+i+hSgkj+ntgjTLljFnbHh+4b1HKLd3BNlXMrt+IaKGu5QAPyRK3rv0ueRaxoXpEWhY0Knb4Ruf8rtl0FM2jlCSg7xAGuFjWA96D9ko4q08ak6LmFjrly59w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmvVGeCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmvVGeCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C872C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748764193;
	bh=UVwqyu3HpS7EqNqlIDih0TkqLzM2QmfzizDtnEB25hk=;
	h=To:Subject:From:Date:From;
	b=RmvVGeCzXrrJTn7xzWL1/do42elNsaFRaJsIs0Xnk3sqI4uboEpPFsRzOQ4vWhczA
	 c8sY3DUV//6+eb69CWPJc3k796tMr6Laec9c09Q+LqO4JDuRlJkzq1KxJvj/48ezw5
	 wxcv3r9g/btQc+ty9uLRocvP2GCNfzqtPsEhxUuPG67CmeuxOe1rrbQimVBOD/m7iO
	 /sPvgGWrXv5OBG3uJa2kzuKzmK6o83zRn3zv7GRClznFWo6Dt9N1BW8z9zCRg+zR8K
	 YIK7TL9kacjHA87gKgEpb5i7IJYZKxu177NIu+g8aYUZqugOHFtnYiHtOLwhdzt5IA
	 GLdVHaANbLQcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9EDC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174876419357.24616.6428283034222207217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c19cf5b8e224a51dea329c3194e6bccc2b49f84524ce1e406747e97eebad2a6a
Date: Sun, 01 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748764193
