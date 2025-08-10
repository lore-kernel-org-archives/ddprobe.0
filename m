Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FE2CA4E
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754801996; cv=none; b=W8xyKtK4uRh+i2R2Oc6jCykCMPhFr+iMXyMVA1CDa+u/oMq273v5A+AZ/9aVRJenmv7NyTDTct6arTJ0OeneoVr947gB8IfF/W9K7+lf5Eo46Als65hfaEfuYe7klaIUyl7ftWyudIF4yoqDNkCbZ1ehEQ0j1OerC/AInw2Ww18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754801996; c=relaxed/simple;
	bh=cvgzSwRMJdPgBSSnwzFoQqrX5Mm52Bmz1gTspgmaXjY=;
	h=To:Subject:From:Message-Id:Date; b=pDShciTQhPuGndCBXhxySE5Ca2PPdL5Waf+Plu1dnsjmYpORUYCRbpVh1RLPPELzzg64RdtPKqA9MKFNIE014nYLqiS5OztUWbPr5grAVVaTph7kLRyn0qX+sIQqZECIWIetHJwMVZVBYmU3j/SCJ+wsgFvZv7aeaKzKUD0VRp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYVsk7rA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYVsk7rA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15B3C4CEF6
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754801993;
	bh=cvgzSwRMJdPgBSSnwzFoQqrX5Mm52Bmz1gTspgmaXjY=;
	h=To:Subject:From:Date:From;
	b=kYVsk7rAt6PSKjXTVSfowkyOGpziqWZAWD83cTarWLkkoTSjdptl2EuSFyV8TW02T
	 VZu6UNm8KV0kCW5QEolOgR2JwMChDt1k3aTW4f9HcW9tirqbinwJImaBjb2uFjieKV
	 fr0nGeHFBlOs/zMsQaHRIjYjd6tDxZSbhNT+/lut1h/WUgvq8dg3Wj5cgQS+tYEMje
	 Mx1FUsolm2l8f61J+IavPZ6aQeZa5mvGfzqJ79/5tMnqLqmk3fANwbmSjeOgYEkwDb
	 KhSTxlDMnX7hWbAwvdezS25Yp9sScUMA5KdIsc7c1SQ4NVs3u6amjtuieTDUP+orNj
	 1hEsvPxd1B9/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BCEC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480199358.29124.4544524890773300530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f9b21d581c6dd5416246c740cfa81b7b3ea9eb2aac60ded47aafa193ba94f21
Date: Sun, 10 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754801993
