Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEAC2E06D2
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788765034; cv=none; b=RuFaCh1xhkBZZpJhGDcwV83sDpvWfLyYHwBEBZV0nygSK3FY+6APqK22JKNhphEmcjRVb38pqa89YYGVFBVxs7nSMMKRaeeKmM5K4aqoccoYQy41z6lYKOg9mFKwo6rzC6YyryqZzqtQ9SnLOyRXA20tsn4mamqewMpIE/CYoEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788765034; c=relaxed/simple;
	bh=h7E++YMl5jrcJVeYPMoiKOIMIClcCP76TSmzUdNspj8=;
	h=To:Subject:From:Message-Id:Date; b=XwD2k5uocDaOWhfHIuwFTA+R4tNdK3srBxx15qHdx0oeaGkY8R/oCEJny6cXZnUZUSA3cjXJ7eR+9SWmat0hG9FbBWsUC+/i6sNqcJz0JWIaJ1zXOG7An7VHNZhFimI3Wlxbrh0iUiuVkLPWY14tDpbYL0W+xKQHzOi3TiTU4LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqlI1mZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqlI1mZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E4FC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788765033;
	bh=h7E++YMl5jrcJVeYPMoiKOIMIClcCP76TSmzUdNspj8=;
	h=To:Subject:From:Date:From;
	b=XqlI1mZQ666b051WzxbSEbvzjG2dvPMgXg7qFRuwpMyXP1KdEMH4MTZ97Ev/rgjDh
	 k89TvzgDjpo+pI/gKz3VSd7U5+XCNm5Pi3ZCXrwMVb/heiVi4P1qSfHPxUwKrYT/yq
	 ehkJHM1K7sT5JwzRGgMpFcFNzGiFHJBJhTcTUXBQ2hnPWOKPuWEgI7ZKZQi/2wF5HV
	 2pp5cnFeHwZ0BevtZi16F55GWBHK2s5ojO+b/OvFmmwsqwp+Axd39dfrAfWQ7uxhvE
	 GDDsmCu50uaUTDVKJZfaZoJ6W/eGePfT6MHRxMFV4Xzct8GSPnOTed7siUT4YmogYI
	 WiUL0KVVSOxxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE81FC79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876503370.24734.13529235217061041848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba29d459387dbee24faca9602a78a4a9bc0399dc9e5e71eff603336304cc3cb
Date: Mon, 07 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788765033
