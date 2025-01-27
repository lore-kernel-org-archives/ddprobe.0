Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9751FCD13
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737975354; cv=none; b=KRGzXKqeOd9L3tx2gUawo7hfwS7AJiLRYELdExYHEnV5geMa0MIunqdqmfb/DEra+u12XOJuek7K1+El5leEbIyhO41kFEeOcERsRmEDUqqmrQwhIT7n+7Sk1WYtvnKIqPm5Np5LK1k/sFA+onerB7xHiQU04UlGfYMdVF1c2e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737975354; c=relaxed/simple;
	bh=TxLldGJEI2llEXYnaXCUAyabNO1zvhP6GXHoBOzRyKE=;
	h=To:Subject:From:Message-Id:Date; b=tsQ9ex5TsaXN3UibO5n2qfb4T0ThImTWTdup6KJBe3OLAZ8qvMsqbpSd0K9Y9yvE2GkDhnEsJfycwA6eDVS9KWUZp6RdTb6MI1qsi5PlAOtO5HZ0cTGvit3pEB58fqiOS7WUAHSmcE8EpugsrudsdQfasPFgckxRst/thloYsG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBm+ny23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBm+ny23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6EEC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737975353;
	bh=TxLldGJEI2llEXYnaXCUAyabNO1zvhP6GXHoBOzRyKE=;
	h=To:Subject:From:Date:From;
	b=XBm+ny239NRDJhWwILlWcYU6P9JnZeGCb4qR2rUKEDDCACTWai94KJ+NxxOlONMRU
	 g+swXyE9+ReOOvhl5S5c9MD3+JTUEq0RX9sO2lLnYylZv7FcZdzFpgilv18gHf9YDn
	 dilB35g+YkbEqEh1cwu01lLF8wneEEKm3oVU+CQr/f4IEQtr+MomZAE2gIN9y3GgQ1
	 muBkA98/jW68NugaZkYt1uigoY+AEr3DcgiwcYlSy/at7s8iWrRg2UNy1G6mtq6zUV
	 0K6hpORHCjVMBcKoxreJ7xnegsKXG36VdVdB0/IinjfLTaPidSM2q40CIKOQbnuipZ
	 bhCJDiZzZaE2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFECC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173797535357.5366.6642289762261371118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d3aa236573d2711823278201182d263fbf2822fa97f5ccf39256d54f9e6830
Date: Mon, 27 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737975353
