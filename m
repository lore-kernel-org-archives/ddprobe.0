Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3B72820BA
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756291794; cv=none; b=MPTLm3wz/qfA1FX8jcwpOuUcKwpCkvdyEZTK6xtbaPEHz4K8ZCOJxpjvby5P6oWyLkS/ZKVpeoTc2KlyOLNZnD8Fwml5MOrgG9s9lfegXhrGiZp21hc8N935gWyBQ6fG0YeRDpWhmfYjBOf7VD4OTowpxgM7hUioGWnfiryADYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756291794; c=relaxed/simple;
	bh=0Vthcen3jdhV8eAnyPg2BBqBekkuXKlm3jKqWi9gJ8w=;
	h=To:Subject:From:Message-Id:Date; b=rkJ+AW3bXIZgUxZz5ZRZ3LFowm9JQryNf6JYlw2SDCQTtabZIL2qPwYfTWKPAxXIqDWTSxdfkVD5RXZN5s5Eik7lQsF2+6AqiCxnXLAMtSKrQ75MuoM3KXQb9jinjDi14pzIHig5AvDqEX+smpivFnn8kCpRWFFUqpRNsMqGwKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vx8UUHD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vx8UUHD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA9BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756291793;
	bh=0Vthcen3jdhV8eAnyPg2BBqBekkuXKlm3jKqWi9gJ8w=;
	h=To:Subject:From:Date:From;
	b=Vx8UUHD2ch9u9Cutr0YJkebfW5b2Os6yk2bvequNnWDo3O5+hvPbz/qDofUegEZz5
	 ZKebQkxwg7H+ipZz/+Ho3lUSzLJTJSifer2xTufxtwiO1BVuA/jDguP4wAOPFFZAgi
	 A5OmUaxG1kfwwq6iPrBV5XnHdZlV3uLlz3T/4ChnkwKjf7ExLtm+BCqCythEfj8Xiq
	 Rf98ngOHdtPAJVFXo5Nw0QptDN0hMVDPyiomXgeQxJXsT6STfpVU4pjVAnuEjyTmfO
	 lxF1Kr6BgGKrvD/FCBZsvg/MO7nALLNT0s2GV3SaX1Eq9sIIqiUcZmzNfdnRKuMmp0
	 xEvsUUDMi2mig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3CCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175629179357.6654.3956224892727882043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7016d20f28dc9d7dd1ae7bbbd80220133402e5a8f2385066ef140eed39b119b8
Date: Wed, 27 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756291793
