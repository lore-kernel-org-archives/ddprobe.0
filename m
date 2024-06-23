Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55169163
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719101543; cv=none; b=g9D4wk+YRWy37RTl0p1FhxriYaOmHFKhJhifNifx+AJOsRoipj9jOapzqnoChd1AdSW54rgwXtBKPfos593ts7Mw2CMpb8ne+iviByFdrK7B+z50FUfUaAFmsocepzc9ySAkMq4vtov6qvKQ9mZzV81TTfec6CeWw7WEsEBobPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719101543; c=relaxed/simple;
	bh=X73+HcM3K0glSc5Q5RL/2jb309dE6908G9G+6ibk8Gg=;
	h=To:Subject:From:Message-Id:Date; b=gagQz/xKQiP+DYlT0uyLR2liSpALjd5xPo6scbrhAxQKuKLIrg16jfudMCR0nK7ROTc4c9Fis/AlVK15oYSvB4RI/PIB1fQNfBU3bggr0wJ4XwVBH+A7PddNbBHquRnQXyGmilg+C9FCCHHCQETKyGZ/V5yz+ys71xfbZuauUis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlyQu9eO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlyQu9eO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61E9C3277B
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719101542;
	bh=X73+HcM3K0glSc5Q5RL/2jb309dE6908G9G+6ibk8Gg=;
	h=To:Subject:From:Date:From;
	b=RlyQu9eOlLsJHhd8rcVFsNAgSoNxZyH4tg+zFOM7qBlX9kkTjauC5dFmOXfzzUTAZ
	 nHzxVKW+XP9Ts+ScOeMmZIo1+ZBPToTvtD1nf5xBb27jpoJlD+VWh4ybEpxSXFFn9H
	 YKXyI3Nn51Ur4zdjXDqjW3o8mW5UdBoZYE136wZ8P680mquRgE5IGws7fDErYX0RKP
	 EOwYGSMiQ41aMf3gkI4zcuuArMmSTYxZF1Dtw9vsewGVeLpbjrA/fX3QY+2LSJBJt0
	 tcvpXssinPxnc5naMHFp792agFTjSUS0d9QY7I4LyJeVpH5XE2PeAFeyniTUFqsBqm
	 SdHk6qlvovbsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE140C2BD09
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171910154276.14073.6040446880015977071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f447c4edb626175f40be9d2080521b76f12455e1165aff757306d2198fbec405
Date: Sun, 23 Jun 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719101542
