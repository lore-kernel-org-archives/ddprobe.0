Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CB935E1B8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787553634; cv=none; b=SbIPS+UMRE28GHDhBGDfLAGfJK5+ui/CDs0kJT6vPDVFMtfWfhkURsPsDDUZBJ8LkEzZSL8Doaov1hgMAOpGa1U6RZ2eMEx9Fj6haZfCMA9eLoiys+7Cz22HF6xRivVQ3KR0XpppKWwN1GQa+qM6bveTo/Km2tz6K+P3/swFYyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787553634; c=relaxed/simple;
	bh=TdKFi0GHCVA810ftwoaCJamgVZDGaOFFhLpfmEoWQ+M=;
	h=To:Subject:From:Message-Id:Date; b=vASPQwzPlMmv7FecXkBBTFnMu4mRgNiOUj7l9yGZ6r5I6+VA4hhFp5ZeyG3r5QYiR6F2Rh0aQwceTeu6OlMM4tUkPMNm9ZmraWH3qLVe1x91wvJnlps2pry+nT6aY90xJiykb5+/IsFbTTEM4ZE8kI56vF65QPgQ7X75dhZ3kQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDIYRTyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDIYRTyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF30CC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787553633;
	bh=TdKFi0GHCVA810ftwoaCJamgVZDGaOFFhLpfmEoWQ+M=;
	h=To:Subject:From:Date:From;
	b=eDIYRTyuC+v7ozb/aEP1ML5j6Yqfty7U0x5jmrrkbbpQ46YvLPgNeQNB/zNB05uek
	 lzBILg04DqHthq1hC6u0WYvXzrai6QKnQBhC9oTygQLXZlpCxCUaqTzVYU/eWfjoLg
	 f7c6WHVdj9RhmpTna+lBOfLW+oaGBhHVULjz8/tE6rH0MrD3hpdTr05yzQs7iAv9x3
	 ux8o9NmeGWia1+c0JplFmt4yh6ZAaujGBx0QkbzxAtOYfCwcOtEIaLTw+JDP2mYfgM
	 6GiSLnzoK2N396YDi6Wj4YXedatga0BsktmqCClBvNTO4uqdJFsaavKMO30sA/E9W2
	 iebitVRJuYyCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1A1C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755363368.30923.11045768817422738615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc1dabc08639372fa05824864ec301d0367fa04e450a4eb7967abdadb42a4ce
Date: Mon, 24 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787553633
