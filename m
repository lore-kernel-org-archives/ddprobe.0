Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2698C192D97
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753431594; cv=none; b=uRfPnhQgtdDtFyBiadytXbSkDnAjQwlNaYl5lYwZnMW027m75yMqNmIHd87fF0bzgQv7KDaMSHtvUycd/i77+Oyi8iVrOCqY533GB+K6rD77dPrbQOyyyU57UN7TmkmYjPH5atL4LuD2J+YMuR6zRPF/qh8CG9Ft1WWgQJ5im80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753431594; c=relaxed/simple;
	bh=PZFbnOU2bXYbLl2k4iP0kJMYAd5sqRbq448apiKCNvI=;
	h=To:Subject:From:Message-Id:Date; b=KqS6Uc7vm17c40a/ImZq3x6QzKy+tj9N5wNARrcf5L/kDx7Nex9HN8cfI+fY+Cvf9vE1K6GgmbcnjoeLo9oMnZrgIijl0FkrwlDdqupB5h8LatbYR/VOmtZp0YbKbudXIdt6SX2wQUMa3ffQp3wKI3kPP8fQ5mYZ+o4AjpyhaK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwROfJKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwROfJKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBC7C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753431593;
	bh=PZFbnOU2bXYbLl2k4iP0kJMYAd5sqRbq448apiKCNvI=;
	h=To:Subject:From:Date:From;
	b=TwROfJKTRCPfF/JXXrBqr39AbCAFtaIM9rdwMEFkvSYTgRffEwvBeXcVUsnGYhV3J
	 zXyV4mQrrVUmJT2CprkhqRTPu6SVu795DaY5FSZjeY8pUJ+DFA6urViXDdpiE4Twlg
	 nBdvxObKGD4G7UKjdAAN43g+TXbz6Ym+Q15EA70irHPB/FiNC+aYYv6ZOFzZL6S9do
	 SNoplIFwmVqiQyUnuHCzC6HQ11rHoWQhQVZ3k1HiP0xR1kzG+6ArtiQjzqVdtneWfk
	 +Sw0huoRVPDTFMg7UB4BSxANLAzvq5+EEV8BEiLWd7rj6qMfBJZu7JZO2Uy8RXULzK
	 KRA6+T0a2R2ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F30BC83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343159357.26679.1615417081089202592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa77b6b7f747d63e96a47a47799f55b27bd600f76ca0031937c1cc745009a4c
Date: Fri, 25 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753431593
