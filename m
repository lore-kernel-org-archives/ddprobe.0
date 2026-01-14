Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA4C225415
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768363434; cv=none; b=bJbfn9Vg2gRVvr4IawS9y/tnOnwXsK18jwhr/mIaPLIeBbAkWOdL/mFn/IBQiXvMdpg2VWehFp8agT8JK91SUlgReJn+Pe9HaHEj3UTsYrUNZrS92yK0gL1K5O5gbFgxNCqmHejQJb//N7aSMj3riM/fiFjAail1Bx+SKu/d5sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768363434; c=relaxed/simple;
	bh=g1jKG18YKPsvBosty+5JtLl+UWHDbGSVS1wEvz59Uoo=;
	h=To:Subject:From:Message-Id:Date; b=NjKOEfhJ+BC2/dRJpNS3/unRaYkgiAuXFQXlEJ5O6gRjLRsDPjAv8ARTBonZOClIB+g6ZxI44DGSW+Vn+PoF2v3MTBSefWBwy/ufeByHhSEci4iRzaHioqU3FJAyhdUoa+SROyFy8tcJOPgLwICRAcKXY5NahxXqay78awXcang=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrILGoEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrILGoEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B04C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768363433;
	bh=g1jKG18YKPsvBosty+5JtLl+UWHDbGSVS1wEvz59Uoo=;
	h=To:Subject:From:Date:From;
	b=CrILGoENSB/qRXLob8c3X55Y8ff8ckYg6syDfLm84yVrB3+1327Z8q3XV8FNhHhE9
	 9cFpYIBJR1bqgQuDYI89ICaDlV8TcgwRYoo1ph0kUiDexBP0TRwku2O0VQdos9ezpI
	 S5KdqvhunN7XYlct/KKlfw2Gi8Y0PW2p+Dqz/EFTo5+c/he4dka2AGjm0xO5zy6XS8
	 IhTdfqKDUCUqLS1ILAERLp+xakhtO73wU2+4+FDH1JangVqZfWwcjOmNl6lX/1vLLB
	 JFLqlusxU2anaeHCNMru5JgNjmUQfuQhBRivYZp9cfQ5lf+R4zQhTvzc9VdSsQI9MF
	 jLjohziqrslBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A94D31A02
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176836343357.20839.1842901887351140118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96452a9545d2c3e32282ef8d506198371d2bc470ae8f3806cb7dcee91ca7dec6
Date: Wed, 14 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768363433
