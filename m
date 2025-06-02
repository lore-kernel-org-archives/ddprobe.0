Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3033325761
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748837394; cv=none; b=l4cnRKGeCb755uB2OPCTAQ1S5JhiihJHRDoEE49AewiLVVyswbzw6F4BznerXPq/FKYL700xm1M7CZ4sTl0FfINZe2floIx8SXvoY9DkFyD63iBtWirs5miQCGBpHjQhbJM9ucRlEdoGwEhQm1QQbzc/uFryV4dpQZYiRAEW9rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748837394; c=relaxed/simple;
	bh=MrxUhfL+Kbst8xaUBDn3cEUq+MLF1SJCA4PFVijrfFk=;
	h=To:Subject:From:Message-Id:Date; b=n/97yrCxhtinXX9lF7yNrwFbOjICoLv94jBIIEMQAez4vNd2Z4ZARkPZYrM1krwZYN5i3VMFD89Hk+W2JTA9vLNTWz8aYQM0p0cVDZbjUABUm13fnY685vwpVHZC7fjK8ESFiqSylsAAUIMBBkBY6jkEdS4O20M3V3aTgwSggeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/JexhtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/JexhtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0536C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748837393;
	bh=MrxUhfL+Kbst8xaUBDn3cEUq+MLF1SJCA4PFVijrfFk=;
	h=To:Subject:From:Date:From;
	b=N/JexhtTAbwiDyOcARxYygHNQsdaftcHF8ylDFpZjhuajRkF0dKsV/GDstpsYmWNp
	 0eOno4SpIVerAfpMapSLWFqpbZSyzsitqDE+LVN2NAvzE0Ij+zBrYwzxElxLUMmZOh
	 n6PlRNyVvyRiFubqa0hwJjtKPdTk/faQs/MMel+2TZ12khPnPnjSxiHRhRLz4Wiog6
	 E3Loe0mqNK0Z4NLBlWbMfvYYcTwxpiIBrIf8nCcjzMqLH3fep2fDOwvg7ClfBRoqmQ
	 l8VnfiI3RLHc8vZacCAFXgK2to5pGfqNV+hsoy805oFCSBd3o/Y9av3PaQ4ZIAl+/y
	 5iIlKuHFAqlkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3E9C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883739357.32343.7466096821261827899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46bd4ac14690d60e7edee5299496bb4db94ca3f0431ce4d2881b5469bd76911
Date: Mon, 02 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748837393
