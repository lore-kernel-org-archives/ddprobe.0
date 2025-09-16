Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA98215F5C
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758008394; cv=none; b=bs7DL3PcvNrJykegYNjAPHsT6nQpfaB6kiFcBAwatH/E7aofDZrJsRQJ56AcIMi0DFU3wN17joLL4gSmo0+I3wGS7dHncV1enh4fFR/rwLJUeOwY0xiJj1z94w8+kiNei7xG5jLWPyCfngC/O4+82TydH9OtPRJjOfqVUO5ebmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758008394; c=relaxed/simple;
	bh=qRfBwZBHGWNRrZgTvt0EmamIqhQZgoqey+sYFIdvBgI=;
	h=To:Subject:From:Message-Id:Date; b=a/VUyh65Gm59Kte7Jv6Rdh0gou6sSIW5hhjsjMZ/NndvIwF08jpjHIp7yAwQ5mEjGYUAj+SwAFGES/xw8RpztEOt+BAxftQx1pFZUPmdI6x567/UarZQ0QVBwEvs6SJcZ0KR1nc7aQhk6Rt9vTirLBWlWY1YEM0xYUCzPEgdicA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3gd47i8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3gd47i8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A159AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758008393;
	bh=qRfBwZBHGWNRrZgTvt0EmamIqhQZgoqey+sYFIdvBgI=;
	h=To:Subject:From:Date:From;
	b=S3gd47i8xxmg7Sdi3jg32q8cGk24dAxVzFAbO5HQNBigBW8Svwdmmhv23bLSDs4K/
	 qdhGfe0jYFUK0/YkY1XUyLqfOaWW4AEJOBUntOuvXvsjPtsGKlYoY39XLipzwe8/YI
	 vyevxMctixxxerP8sVzNodcs8UB0Y9erpl1nfVfiAZ6AzAiFRHvguujhwCJaVMAbX7
	 zMYW3ajTPU6VPhKYOrrWPM3croHbXMzFSiN9xPTSibQno1mKVcVvmKrOfT8TbaFTfm
	 GIxXJMkNZDKkCN1gMNPqZg9uKevXKWudzACN3GINmkgQzfbTsj1TyNyUeXrHRCFaGl
	 /wVgqmWhhX0PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924E2CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175800839358.13930.7108103454054035110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f663288ce206eaab38e2e31d856a70b0d21eb19510ce365d626aaecb1224dd
Date: Tue, 16 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758008393
