Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E93B3128CC
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772098494; cv=none; b=rN+MSYvgBU4+fwMuvY8Fegr8Fjd71Tga5vhlZVTauJSNJQ1RPjX0IS+nqSuUDJAl5pCdSaSHIQSzGrETns6MjpVA/mTJJgdRNL2WMVVWxG3MwwGb9ab8GOZYy2iB2vwLY5ST88NTWV6ppPmIYaj+8zjR2L4eEgSsIS29iZPuTzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772098494; c=relaxed/simple;
	bh=Ixg6YqoNwTIosIqSmlLzXr1GrMlkyV5nwJMYnGTmUKI=;
	h=To:Subject:From:Message-Id:Date; b=UIsbKfPaWho6W5uBudB0BY+yjT6cZpT8gzqjgJU6qyrA2L7OYDo+p+JCthr/QxBYoNUpxVqnMZt9K0Fl65KlH9ZwYPzX70cT2TSS9oeT9cHATQpxbio+0Dp2cTncUuphAdFILZAmDjv45+90iXS36s/4FWYjmlwq/NOSpjZQpBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dACK8NVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dACK8NVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE00DC19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772098493;
	bh=Ixg6YqoNwTIosIqSmlLzXr1GrMlkyV5nwJMYnGTmUKI=;
	h=To:Subject:From:Date:From;
	b=dACK8NVUWaZXrMOKZFKfFoUVe98u95dFgqi+8POx/P3uq8RUAz1piqPsmGZPHMjrO
	 WTtqt7JAHTOzg0m1VqgZf40+8ooiUicju2/ccxDYEyzWbWN0xjFV6M++YS7IXRWej4
	 R1HuJDG+M3Aegs38/3nJz4HR5t9IYhpt3BieEkBjxHlWq67tMxUmm71I/k8I+ngEsP
	 sZSrHrzwLcF4gMqJksDr5RVW0i8VgPGi4dCSc0LD2j3IF64XB+m4sAgF9AD8eMJxsB
	 KnrAvrnvmfkrv0o2JUkdbLPKkhQ4kqWNs4JgwVh8uH29gk4av6zBJPzk72gxe5NdkR
	 pzxVgbZ2s1ZMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C7AFC5910
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177209849365.28872.4545583989178911713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca7e1ed878dc2e0f3c23f8eafa32f8354e6b83f21f4dd887a7819849b8ad5f6c
Date: Thu, 26 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772098493
