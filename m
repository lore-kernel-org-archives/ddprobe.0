Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0718632B
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768771434; cv=none; b=pzIZqDgoBnW+LB3qpdR0tccN5t3v/nvPjKzc0K2mgfZ2n2jSe43x96JTD8iRlRuzXqy8KjUB/hVoWR0NWly4gDe7B9bZ6ZFaHiq53iWOfFx4c3QlGyBe6d6cJVXuR7qFWrH5QydFFJNkUCYsBQQmd/JkjPJ6l1VM5sbDwjyPiaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768771434; c=relaxed/simple;
	bh=i8xHL5E+6smqGX9JNVgf0z+8k7HNaU+hlUxO23TZbOQ=;
	h=To:Subject:From:Message-Id:Date; b=fXGNhvpX3bOWXIAkF+WijORDOa4IJS1ETPfWnjEEOrivJEyF1DnUG3YKjuJPgPeMmLErDOTxuY6Krc0EUk+u1PKSfHIv5LHbCEJaZgnLikg2dN6nEkrWUd+izIR2Wbpp4ntKLMmMrQDJqepKAIuvZfr5aYKolQHT86kRm5/FQkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tW+1Yzqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tW+1Yzqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D59C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768771433;
	bh=i8xHL5E+6smqGX9JNVgf0z+8k7HNaU+hlUxO23TZbOQ=;
	h=To:Subject:From:Date:From;
	b=tW+1YzqeDpg1xJnW8wrTG/jY3oTulp3cy4vbzmDO1rP5v11WA5zFGfmb4ujK6wSyP
	 0W6127XBTbuMDE9j6o5E2FVqQzGuClUphBdX0AuoYSfmd2nnwAnPoTGr+T/u/fL5p9
	 2xvBvSM6aVDNd06jcIO8n9mh5NoaGU/n9YYRGpKbj+P6wmvzZ10bFT36bTe6PdRB0T
	 lOh7QW86Chld622RGPeEhCWoH0DmmzsgxTrBk5Hmw+/SEFPkGa+k3bPW/4BecgHt6f
	 eyGITamIJyyc1WwaCVkmh3oE3ENWbq8xH8e0Q38TN+90ahfByQhk3KoE9OzmLZi4hb
	 eTpOfLUzU3uzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CD0C98315
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877143357.22854.11679967569137531257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39fd8b54b09463e9ca2bd89a80207d75bcb3c883ea0bf7018ec99c0b90d2ab5a
Date: Sun, 18 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768771433
