Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7A432AAA8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779829954; cv=none; b=L80g3ST+67/BylkSZhJGZqmIRWT/5aYitUV+wOKvQZ4lQT5LvfBleQOAmVtAilTk9Y2XgAZrgl3UrFNX2SuGPBpJl/dusXeJlZjAfOvCGpMohaLcfDfR7LISPcQwL0gTkiFejjJDFVHDb3Cb2fvgG9m8chg4n6K1hVQwgcqmHW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779829954; c=relaxed/simple;
	bh=4iUs5jrIqAennw8VYPkFO2HwY22y7pSvQ9D/fzInZHg=;
	h=To:Subject:From:Message-Id:Date; b=QzL5DvZLKy0iK2U1na8YaGVvG7UkaZyp4PFcTU5qIYivc1fIcAQ3KDXXgi4ud2sbujqFv9QRkL/IR+p7TwIUv9XJ6ZVDCjfN4txrbRqnYPM7Vx1/sj3lmAn+pAOCEqD+0keEvBBmZxJeJs6a4Q2GBJmvvP288qiXpz+GPG9PNqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ip0nRUea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ip0nRUea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BFBC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779829953;
	bh=4iUs5jrIqAennw8VYPkFO2HwY22y7pSvQ9D/fzInZHg=;
	h=To:Subject:From:Date:From;
	b=Ip0nRUeaaUuuaCy3hV3/qRk9GlCdCTd7T2336Ogx22moyWTONwQkZmL5/NDFOof7Y
	 zwEIYq7pCrubahgMbmaqtKX6T3dH1OW+XsS/b+gjKQn87PtPjCwB+GspmxHQQMJYIt
	 OsvdV85FgE9cNXFbHImU3AzAZcXuyB8EmzuhAKo1u3U+OJyZRuut+dkQn3yF6wkKFF
	 TojeNQYDQl9H5nPU7FlQNfJwmTurpcu6SJOKh6Qi+zL2FikkZaLdj7O8q65vj8V5fG
	 yCGVQHJFv4bA2lngNXgrJecenZpa/cySBi18s5wqr1hTh7z5RDXLtYEyWO8yUXUXT/
	 VxfgX1TLHFSsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92A4CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982995368.13673.9093893421466708665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f6dfe875bfd09b3a8ba11c97a57a5a04bae208cc41536845c6dabccae18e63
Date: Tue, 26 May 2026 21:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779829953
