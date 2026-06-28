Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A96F40D57F
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782663514; cv=none; b=LZmoK+fGFj97q7VCK/FXlZFognNzxHCaxvNbaouccP8PWnjD1hCIxojiPoRMzkDnAQ5+Vn2OCGlxSIPs8WmIOrS9rMvj/yrFbPiWurjM5A8iazb/sHAy9Oq4kNhCZl4MrlFU8MspmChTyqGs8uUtVjGyCDiY6Hotpd3a8ng5u0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782663514; c=relaxed/simple;
	bh=qdZPM9UNalMy0lYbmsMDYyAgMq6L2DkzvSojhFog2rE=;
	h=To:Subject:From:Message-Id:Date; b=QKw2WQQHd+tLz3CnoeU5fFRGW8JEpa031aQaoFIrkMSwykP9Vx2S6wPpzV5pQfI9HF0VEZA3QTBiI7TMv/SdEjfHUJSSJiU+kJEm8tbuAaoaKAStLfd0T2BhsixbL9/pWaG3jDSslEhUTMU7038yTnyqUtdZpF+wqTsqrVCgEQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igHhx5wZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igHhx5wZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE080C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782663513;
	bh=qdZPM9UNalMy0lYbmsMDYyAgMq6L2DkzvSojhFog2rE=;
	h=To:Subject:From:Date:From;
	b=igHhx5wZofgdvrYXzInCbZhWdiDRJQuOoZllGajfc9j8I8nCEQwD7gyoAc8KzhHZ0
	 qX3i2ncICHHA1IkWbaW81vlxS7qsFhpVdadroti7Sb3gI7PZCenOnp559nH0WkGOfl
	 Lxrl2ZRxZHTM0xLTCxGq3c+4iJ4+tc5SciWE2gLfI+SEQZpxEoZN5lT75ZSHh82qTb
	 boskNmSKnwH03P/ssAzJALoGlaS7UOLTQzxMzaOUOolvSHA7ITBs21/8zSq4x93qVb
	 8RXUxVToQQxiTgkMOsqQmNlBeKhb7zDn8N+t6jvkLM79NXbE7AgbOzxy7FchswgGBW
	 lne/SSqwRrH5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1023C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178266351371.27906.15600004207717246088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26970fd0b59c94363cf2007fce38e7cde39e3e10fe0784ababcfa06f1399f861
Date: Sun, 28 Jun 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782663513
