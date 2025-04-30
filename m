Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253C71E51FF
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746005394; cv=none; b=hTh7pQm9JArqjG8vTpKqU6qlLWAJL4FiEvNvKK4D7A6orblM4TrgLmqFoIVHpdXUjXHvNZldIxafECw7lEQv3xJmMrXjkhvKB+J7dm0+vS/2SNNUEzRQhm3Q4yv5vIW7vUCwk4bMY9XrMeUzHiG9NGjIyYeOdiqoFf+gqRFjcfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746005394; c=relaxed/simple;
	bh=Iv3yXoyUrvihZDrpOQgk1jTD2DuyodACUBW4hrcg+Fg=;
	h=To:Subject:From:Message-Id:Date; b=gFRgkunTTdvEYIUCKL5mwQCPnw0N768n4Pu63fAFwwKMJZaibFS6u/7fx7p/vfjDVkMAnd2IXnmIEbO2vV+0HphKJJ9obaR/YODwZ3eI94sb2gFP/5DehrrMY+DjhXhYaCEfpOibJQRsfa76QgRHd7ydQmH9OIb3l8PxSsamV4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2HmI1n+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2HmI1n+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6CFC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746005393;
	bh=Iv3yXoyUrvihZDrpOQgk1jTD2DuyodACUBW4hrcg+Fg=;
	h=To:Subject:From:Date:From;
	b=H2HmI1n+pQcO2lax3DVYBKKP736te3KqSzUlXLOVn6w1Rm5kYNisklcpWk+3hOifG
	 b4p7dUXKjXHHqtT9K5P8V0jiB5GqBPbfBH5hf0Xx5kSTW1+UjZ6BZsHRS972LyxLA+
	 FCJ0lfIgin8UEy4pAW95XmdgGWKchRsj/tcrjoe+oIJQRiLgs4hGL9WQiEyrI4M+p7
	 Bbb48nW7QSnTAbLT0LtKZVddn9vaS44zH3hzzSAEgEB/57+9MuqEaPNS/yaIFCGR2M
	 hwU1rIYL+2rggo1XMwcLt5oI62fiomsPOlvn+vzXt4tfrcTibPvTMQLz8+4XCBuv90
	 uFeGrrHpsSayA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF23C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174600539357.12610.3958213497180018383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d211518e57c2697504507848f3d2bf3ec55617b16b5a4c1a301f8ff4b57c56b1
Date: Wed, 30 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746005393
