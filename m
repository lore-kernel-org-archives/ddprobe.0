Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CEC225D7
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749860994; cv=none; b=plWxsIk1P+sL4aqM10DmkFxs1ECqZ5Kl8Iw4B2vEXrzpWb+AV0H2ve3ft3UIf6PDS7YkTFgwzHucLxJQs5kIEw8QEOFnLFDjF+xlkXjc065zwHbXlvrauHhLwwLqNpacOwM/aBG4r0Av864LmJ5H8ckpGs1/jW9EZ64tGlPoHLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749860994; c=relaxed/simple;
	bh=bS1zpSEUbJapER2SzxscluK7pXRqclyAlSi2yxo11So=;
	h=To:Subject:From:Message-Id:Date; b=m/S/ZVZr3OlBCcJ3439We58gHTLnt544rTuQLaPOnwwEpFzVETnRsy56pdHEo+b+O5CIbQDWGTSLmv/Ses1+nke+2M5PMMImhtNm4xXWMOnPmC+YZImWc8GO3824MlZyj+hsmdWHbOy7PN9U3uR77ODXjfkUtSSF6i+4ELJ1Lyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0Z9oxnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0Z9oxnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27D2C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749860993;
	bh=bS1zpSEUbJapER2SzxscluK7pXRqclyAlSi2yxo11So=;
	h=To:Subject:From:Date:From;
	b=G0Z9oxnWbIOIxB+rZ1wj6qzXo2iQcMaABvOnoYrzUOmU1gzDNkRYRE6ueqET915s0
	 rWB5EqooQD21ajgS4Qhk+4+h/DWONs8e7DWqz6F2EZXxlir7zHnvwRQgARbg1GPkaZ
	 P1fJmsHMDJ3JK6/inBsWqvmlu7JuSh046EW4XhP9ez7zIq2qp6ywbYH749s3dYt8TO
	 iiklfjw6xi6MScNXhTiMNfF1qHQxMCFsdkr5AiDTRYZGfgtfF3hdCEFtWxAEa1zaNB
	 tsRLmD/Z8O0XMUgd5miqGMeuQEEkd5tKUyEW85TB7L/tjUsw0KBAAB08FgYFiFrknh
	 dQmK5c3exsFzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F8AC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986099358.10303.11322941878961183249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892fd6ae825e6f1b24b041a6e45bf28df62d75e179d13a14babfbb9f06e76683
Date: Sat, 14 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749860993
