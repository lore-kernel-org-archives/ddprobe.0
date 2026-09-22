Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1898C4AA56F
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790107236; cv=none; b=X9BryEfkdaJPfrpyrsMhBiQrSmff/5HW/b/Ek+PpINzW0f9Qn6fq9TAFTutRV0pLJFV5IIiC4quZU4YD64rNECrZVhrz8pkUAmf7y37qCKuMfriEHvthSZw5LtAmY7tvne6GiD6jdUJyv5yrSrxO4YBPqp77/4h+DsyfqJW74C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790107236; c=relaxed/simple;
	bh=Tdb+a/1dF4qY4YrapVNIm0XcbN7AhnOAQmqzgmmsUnw=;
	h=To:Subject:From:Message-Id:Date; b=NUWE+exCg2/mVOMmWdRGqmg+viUqzgkfsaM5AJVfmKz/nWm8bFSLuGcb8KKRKPKmAQ2sfi6ewzUzTD06Siwk49euamznLLKIUtK3SfosIEoI1KgiDX1qPCaS9QLQxUtfTL7OeqiTtBuPVtiO8CFsX9PjfbA8OyCdiwi0PGjpiPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e88DJCkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e88DJCkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69D0C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790107233;
	bh=Tdb+a/1dF4qY4YrapVNIm0XcbN7AhnOAQmqzgmmsUnw=;
	h=To:Subject:From:Date:From;
	b=e88DJCkEi3Ae7vvx/wRUvdX7/tcwRKHyEkySF7Opws6kcIx93UPv6n8YtaG/sxcBY
	 ZFRIB7uqQoRhzWiGNrYVkT0pF3/BZDpRB36HbUbUz0GowYhl4AU/FlHktYPE1oSRZ/
	 5STxt/qddd+re9Dm86FNhYrNKBrT1v3eq6gappClhNr2qII05Yv6OI1fYdjy2qpVW7
	 7uFu54pc26ayjiKhiN9VHm7croPGH4DytJ2rb4Q+4GOD/ObDE3Vt/9JVlmomehfsW6
	 nFpPBNXzgA+eiCTMdJZA99fqypsuEq1LEDTx+ASl8RrJW2jUjpt8a2hhwC2/gqKeUM
	 eNaKGIEGbyfrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3EA7C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010723372.26408.12469422255425547862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7020391979068809ead1043503d9648c766b75a9f5fc7ab286c51de902b7ef6c
Date: Tue, 22 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790107233
