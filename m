Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3487D26E655
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 19:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741289934; cv=none; b=iBfUS8eM7AzkdP6fvRSpBEkmbXZz6Rm3O2faxQWk/PS4Uzg/fCIBP1r/xW4RaFu7HXgKqDJ3hHZIVUXrld8zuk3prvQosakIXIuEr84zfuK/zDa5BCrSl4oqVu5c6iCt3tj67HXnCBbX+tjHlFFTIz+MjvnA2ztmKcduQKPyzMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741289934; c=relaxed/simple;
	bh=ZaLwg//d4KoAgCKn8wjTDfCn/dwhlkcKF0zCkSqN4Hw=;
	h=To:Subject:From:Message-Id:Date; b=umugX35GjV5T6Sls7qg6lsi6Ze9EUzqDgm9MZ58KDuTiCzeSn93uRe7MnSlxWKjud7BEafmZmcCZmSHVub2uee2sMBMfCycZfbNYVCSbILRAyYcREdunJuCXHerSp8WuTAg6dWd4I9A+cfb2onl+TMdb3BvDd0Ak+8iSqnpwut4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8dPF41Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8dPF41Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAF3C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741289933;
	bh=ZaLwg//d4KoAgCKn8wjTDfCn/dwhlkcKF0zCkSqN4Hw=;
	h=To:Subject:From:Date:From;
	b=F8dPF41Qc5CjJQgSf9rFlTwI+s0mgYt3roMonQaJwY63aOKfQ3/b/Z7Y9ZPLFa/6M
	 ZPt0lCUBNCl8XLz3dxX+X/JL2f6Q6D3uREG/g6W0p59luu87J5ebAsgMJgJYYZhDBe
	 vPI4UGW8j/dxCxBMUpy7kKxNonmFfvCOUq2Kc41hyjTdCy97zPUJrudwNVLyc4OrKo
	 1++hAfGzQKz232JNGknDfkwZOC6ssZeP3h2ArJDIC0WUgxZOjsngTHTG8140LcaN8m
	 zEjAatU7OD4iK/Os7FYSb61+2R3v5dmKF9Oxn7VmQXIHc2++uJMUMVFDKJ3oT9bS4X
	 DjCS5uVix4UpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A652C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 19:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174128993362.14140.15103530286206167423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97a615284639df8752400d6521cbfebc8595850f296864511c85b22afb7b515
Date: Thu, 06 Mar 2025 19:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741289933
