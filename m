Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31611383
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728438954; cv=none; b=Uviw7yZSPb7lBeAwmVxdtYpndHVod4wqY1ktnJuRWwCipv6Mnbk1YP9FWljA7pmFQPo6vDPVtX5nlVa8TAacNxgIhdKO9JVsukw6xP30vDFPFNuQhJNkiQzd0XqqWRX3TSpR2TEC6+MG5lTIBkRHiwrLCh7tN5cKAZt5m3J08xU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728438954; c=relaxed/simple;
	bh=q7W7n+gPpsnHHp0qKpsSrMULP/k/w6Y7uqYbC0JRoNg=;
	h=To:Subject:From:Message-Id:Date; b=WLdWmLKa/Z22ftGAmMjA0/IM4XiFBhDUTB2Sv3xwe6tW0lGdbOL110fMpyk/pMf5UttqwjP1Lh/ShmT21QMj9VVM1kAovEzsALvhng1V8THk8KYoi48ZF2corG2tmD3bTEzKyjyNVvaQvcBDCx7iYkh+JpQ3JwRJB25GEzm4yZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncUBPs5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncUBPs5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D45C4CECC
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728438953;
	bh=q7W7n+gPpsnHHp0qKpsSrMULP/k/w6Y7uqYbC0JRoNg=;
	h=To:Subject:From:Date:From;
	b=ncUBPs5I21PqPnpDtxlAGPPjqO+Iw32wOWFm3ZADbOy3+EFAGT0JHnwTgmCXrrejA
	 NrYoyk5cJFZucjlHJOaZk9F7y/4Ac5yxrFyBvK1tsEjMDe99Ng2fRnhNcOj7HxNJwz
	 j1toHs2fVFU7v2ipn10iqI1eolqizXVwdG+2/IaaMeej6FOFKQUf7BCWQHNEw9rYdW
	 G8uJJtsvlbhdzZ46/mzekPsvYCBbuKXnQVYX0RJYAVxRMes53KllGrk0jNaHr9P/xE
	 lq7MGh8xoF2Z421AJINYeMNZQLoUYzFvOl6Jbr2bDB9yGSYagVi3wDvlEKI0F1ztZM
	 b78GzXufU8xbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22E7CF042E
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172843895361.7978.2027657960721678066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5107ada0e7068427a35e9154d27d6328eaf1c06b8311c359436f52da294972b2
Date: Wed, 09 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728438953
