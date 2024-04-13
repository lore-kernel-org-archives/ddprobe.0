Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAEE13ADA
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 13:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713015563; cv=none; b=qfDK+90azfKlLraTqa/aBV6JotgwTJ4UNdfS5NV/7c+pj5lZhS3VIFOLv3JsoVSZgXc2ioRaWzpwD/C42aajuScMi8T5gjFNG9+VTmdsuLg1toWRAAoxUr2NNW+r67Kq9Kgwv9gsgfo8gvXe0pD7cXw2iQq8t1+v8aUJHNyZVh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713015563; c=relaxed/simple;
	bh=04sAOBiYeak78DkgaNc8SD/s8WZWjHoSYQgXtlixmT0=;
	h=To:Subject:From:Message-Id:Date; b=DCfPH1877e1c+xZHxf+GY5n7evJsR8mgrwFC5td0GZWoOIw6FlTUFNcKnjNR5XX6GfztJrtbk20+wDkgOCFKgGwQviu6CbzwFPTQ7r6Sm67uUrA5d+VgUNmNC8SBgfMn2gNpmTcOiKVcjuVP9W0ro70S0L4JUBhq4P2+QM7eTU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avMoUEX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avMoUEX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB251C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 13:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713015562;
	bh=04sAOBiYeak78DkgaNc8SD/s8WZWjHoSYQgXtlixmT0=;
	h=To:Subject:From:Date:From;
	b=avMoUEX4rSb1ghJUFEFuFKDiRudQaEYzlgEc64Rc+k6ucdMvWWtKTUf8AbkxvSfw7
	 Ozl63DfQ3o5ka3Ky9Zo4MT5/jVSZ2fuapWn9WFks56BKXDNYv+9cJkHZh1tht8QgXy
	 0ab3HXL0zYWS7CxeD3MwM0bJdieY1fa0cb8zKDvEusy2s4gXWO3USZamVa9+wZ6mu8
	 2fv9QmXzRXGUXqFJ2uTZLiJeHzKV2zdk2KgEFoO0tnDQXI7STiXB3Fg67KepjzuZXq
	 PSnYrxPCEHARsYLcf/pcc2/vTL7n6/zfP/KEdwEemkeHFV9qZ4BLsoqp5BP/TdO2tw
	 JrBGXVQ5cfV2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C50C7C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 13:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171301556277.2011.2994263723346520079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd7a78bac28721e40e4202c8c46f1b447e853f488385f47589a5e7f89c6be18
Date: Sat, 13 Apr 2024 13:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713015562
