Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B626307492
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786423234; cv=none; b=EtatUce9M2IaY6GLMFXLZwY9ZpYtL0mEDTvIwZTeOurJrGiz7OwglVZy8kfYr3fpb2XLwX8QG8DpCi0A2zzZL9TiUvpWSZZAobY0pvo67UdvsAixZ5rDx0wr29KXQk6hPVGz3JdbPE5Na4pHDTvcLegRq6UIL6n6ECzeYrHN924=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786423234; c=relaxed/simple;
	bh=ElgsVw1a1o7FY2uDq1sEkLhf3fjfDaykrkxV8dbVIWY=;
	h=To:Subject:From:Message-Id:Date; b=dwJdUblM6aq21IUsZqveBSmknlM70mAx8Gmd5l4k6aT2k2ckT5R4t2b9FerGz9zBFSkFYiLpwClmF4BKsoRPJyQV/OqBK0PuQvpxMi6SoBEB8qzquGyTXyiwbslDOlumgYFDJoZkmU+yFLzQVQrQZO75h5cZU5wGJhoAc0iUtUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q63GTaTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q63GTaTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6FDC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786423233;
	bh=ElgsVw1a1o7FY2uDq1sEkLhf3fjfDaykrkxV8dbVIWY=;
	h=To:Subject:From:Date:From;
	b=Q63GTaTKn44tzinmJpzLrsXKRckBTwuBTPGHQ9YQUxw2VXvsoSN1YPNu86TRaFOY4
	 yw4geHndok6WD/16Fyt9kjCpXNmGKiKEtIWXLdbL2u5rmWVfBA/GydQcBhLgSe5Q9V
	 ciOYmZD+nYqbAFvNxbvkbzlTxTsKRpxdqiaXSFm7MQxZPUjX5QpNADsnFvhKiqzHHp
	 muzchZJP5pNGyObR64luhXv9ygTFxjw3n3X+thkYp9sXbZB4q0HV0E2bIk1qvOVvtz
	 RNJfYdef+zg7fqBoIK3OAgPxEWEHi+jO9aBSVM6B2y6Sars/XkIL9kahPTrnG4vP57
	 B67YqEpDV6Jyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDF5C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642323369.13978.6574407172436703958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56672959819f50453a556f203c2cd556d30a93f1b89db137251a0936170bd81d
Date: Tue, 11 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786423233
