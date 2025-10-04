Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC3B524F
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759537195; cv=none; b=H9494iy7HEeWp9RDJRN4hJfHwL+TMTufcLsHii6d0u0eUsR2FmDk/cNGwBNtak60m/DGHCV+jM+PiQfai4WEkx4oHqoU9aAKVUrrDrAqNVWw0oJr1DFOZOV2pxUWFfENKwMA9uQb3N5+nfBHGWC6F37sycgrW3j+ZYZBtSWVhYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759537195; c=relaxed/simple;
	bh=mo4OY8eV4myg/ZDstTKXdlfcDa47pKyEO8H8Tbs7bRQ=;
	h=To:Subject:From:Message-Id:Date; b=pcKo3AnKT7JyK1iaDlfTcpDm3Ab2u/MMZGXpKrfYxpHuBQKexKT4pP7vzv22z8QCOFvjdQSOFSXyPIcqJCyNvYoy2bMdWAHZlu9OmLFlq82ksuTd/7NOZTR8daqPKQdTWWjJ2TG75h69dnmdRng5xLleWMbBmJBaOGKB/3Bm56s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtLc6T5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtLc6T5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37D7C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759537193;
	bh=mo4OY8eV4myg/ZDstTKXdlfcDa47pKyEO8H8Tbs7bRQ=;
	h=To:Subject:From:Date:From;
	b=dtLc6T5FUCz72n0zIXx/pH3lq/GLu38peTVWYsxhHel3g8nEJRzuZhpLk7fO8JD/o
	 E8cbmhLM6Fr5FCYemprA0EoD7YiZkPXLLZgMaJr5M5PDH9Sliu1HUXiyT8juYz+W+Y
	 tMcyDa0a9LdJxHzlkWuTI7T1Wygsqg0ayK1guxj5iXYV8Akh7sJC0kQrpqjrZnAgxG
	 ii/qUT+i20tkstFYfK96u3e1sSUvkP3USLyaKCFX7SdQIdzm5DqSGwJMwWASFajzEr
	 MnlTittzIuO2KAHOjGvsokpzxYnds7VIpawitRDDq6aQ11r3S0cJqMynd6riOPc9VV
	 +/Ue6Ubw9X+LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94756CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175953719357.18933.821856107230478920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a499f965eb62cc18802d8bdd359ab5a546a3f544113f8e94158b4abe5e0e92
Date: Sat, 04 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759537193
