Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AC4847C
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731666354; cv=none; b=mQ4U7plQjL+yVuJE/5rbCd/ckjYudFt7W3PQx/4cPCDkfNc5XtC160yGzXoIjVIklPev4O5rMAgesK849oNBHQlyP9/5+YV3r5TvU0LN8e2zIGRLnavpd8B/6K5wkD5pc6bOl1rCgwbhxIe7AHsQQCRcY2ugMpXUXCDK7ZFCqzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731666354; c=relaxed/simple;
	bh=12CEnHsRv3UCotaiYXX7l3hCGNiouAIwH4vVH9lo6cg=;
	h=To:Subject:From:Message-Id:Date; b=ti7QqFv4ZtifvO3PUDXF04p7vfIJibo6iz0Um/ZSKW6Fp5bwp9ilgxbn5kTA3Z0faDaN3ifJD4ZDIrT6C8XV1kONHyGmFHphdPzJxNSmK4ea5yy7idgngFOngv1bqGGrXiMDu+ZQIHi+9sLTVPye9fE0u+5RYKdACnFG5xqZPoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7HC/Qgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7HC/Qgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D1EC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731666353;
	bh=12CEnHsRv3UCotaiYXX7l3hCGNiouAIwH4vVH9lo6cg=;
	h=To:Subject:From:Date:From;
	b=Q7HC/QgmcFKTb6Tx/ppPIYTD0F5Oj9zJk6f9TH1VW5WhrdYIARuV1ZksjgLDe1eGG
	 T8cH2ueSdwD4mfKotLyfbqxYfI3p6PTewpAKvW06EdAI6GNxZlC5ZpS7rZp211KOm5
	 QwIigDdxC+WWWmd7Wyu0P4ww/t9uPulVREGWI0UF+Pz5tL0oJ22pXRqL4SuOyimzS3
	 OJHOZCxQhmZFlV/Rol3B7jN3SDQEdfeqK8eWB+TDoQCl8mMos5NmOds+F/XUr6EOB1
	 suzhEjjiMWmk5er6RwC2jrEaRarAdf8Ga+GRb0v7bggSfCMMIro8Cpcxne4WSPlQVH
	 TBR0WSqnHuvXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932E7D6DDEF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173166635359.8773.13216931540947917530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d92de9254a4b7361345eee48bf884d6228ee289a37caab033c6a44185c1d97d
Date: Fri, 15 Nov 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731666353
