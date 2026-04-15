Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214E72777FC
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776246454; cv=none; b=Lt7Q32Exm23ehcSyvxZPcrp1Er7dDlX/6BZkMx1o1xOpx+eR2YyNkN5mkxCcdKlZR5ZRFT/l/4eNw3bphziFUSmuuuwVvS1f7+jsuSIqqEU2Clpn9ID6T3uFfCFGkm5NHLiJZzgjjVSFnpvgskHRcO9hBKElCp2XfzodcL3Miqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776246454; c=relaxed/simple;
	bh=Oc2WwrEibKRQXD01F4yitgakKuZjE0azO1mOiElD8qc=;
	h=To:Subject:From:Message-Id:Date; b=RWja/MWz9/CeOrOAX60wENqxIW8wTPgoowvQwhph0FS81784jqzWhf5wondXzeb9Lq3xdhWQdNpk32ApD16FsqRiITgdK3uv5ZhdKjDGP1PGe/AnqJ4ie/jn13UVHo3R9e/N1HdWpJEA+n3aC969OqOG0dUohNHwvJdVlfhPCYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/WhEIWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/WhEIWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAADC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776246453;
	bh=Oc2WwrEibKRQXD01F4yitgakKuZjE0azO1mOiElD8qc=;
	h=To:Subject:From:Date:From;
	b=K/WhEIWx6huxZAuVouWmO+kgbiASGTH4KPhnL2999xDcDVHgyEVHNLYSm0wRk7nFo
	 3AP/fnhRAvfGH0ak41QEDw1UrvSP45XczxhV2RNAWyNSNbAQv8RUCpJbbob79uivs5
	 cEViE+M3z8sv75tq7Bd5MrRu5mEppMfeouiHMFzK8Eac+YqI+MgsM9FutgKUSiKgqz
	 d73t1OboK8z5VXObFsIAbY0gmySs+03Anc4VESDSOnq0d0KCuI0rym5oIMYr+Bh0iO
	 0lPYep+ioZ72oIBC7laBak0nVf8gl/RzZBF8REG3H5abWzzDJpqsNlcRnnowbcCuBi
	 Swd7iLXPS4i9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1AAF41980
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177624645370.18129.12796016285121548491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db23fa0c22a57dc0c9ce68ad57b29f5481747f7e3bc468bf2412177301d48904
Date: Wed, 15 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776246453
