Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F92714F9E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743182996; cv=none; b=IDbwy+qvMXD0f7JBcHIlRqPKcMmkE25M0j9HDSfVK42N2VUrc3RgRm7fSUYa+g+qsOY9Ae+MTi02Vq0PMh3FfyuLYD3sdKSmqcsgzvbpg6+Q8ezup16vuWI4HrhGQHMjBT6gwi/3Hy9s6TIVQjvhN1QETET7TAMiPJWvQIxLZpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743182996; c=relaxed/simple;
	bh=04kWpNvx/ftJAuz9XArFBG3oxU/VWUvkea0pEjkHuiI=;
	h=To:Subject:From:Message-Id:Date; b=f1YQScYgqjUXyVTHcgZaOhSRPyY7vpBkwUjDyR+fGFIfuP2yXEQE3oQiETFNYqK9HSI9PbIojYljjH165UFL5SqhtjOTb1ZoewWT0REMOt7wKffQpoJsuQMqSdPJbIfxA0vBG1xeKAeG8XQuuvcYvzIU4PW4dqa+O70qadmxFZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cnt6Lk1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cnt6Lk1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44A5C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743182993;
	bh=04kWpNvx/ftJAuz9XArFBG3oxU/VWUvkea0pEjkHuiI=;
	h=To:Subject:From:Date:From;
	b=Cnt6Lk1LjCXHewbUsIns5rI6rJFtcYEwD2g1IUF6hXtk4LlnTxWOUYWA0M2ekexlj
	 UiL8ER57K6OWhE1RGkkrU31hF9nEhcpveB1HgzQIxofRVXGOEHnn1/svRKKxUqEpyG
	 fxrBKJOvaBXnjjgMMIfB0UOO3oa1DChCMwZxODEdC6er7WhbrZx+8rJA/UYJKjVu31
	 yjaG4Z4XrwpUg2UX2qlL7Z0D3B1nexSH2X+K1Mygnsnc4hTBAik7ExVq8Z/eiApI6L
	 MZXv0csJoC3a7flP16KJmCk9rON2MVVgKuZN1pbknUR0tMM/wxQxHwTymzGnmkqRkb
	 nsqRjfmkFqIyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93222C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174318299359.11270.16012108032997915335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134a8fd8280f7696cea9609793b78e5746ea10ce0101f519699db73c357b80a9
Date: Fri, 28 Mar 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743182993
