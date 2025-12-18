Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA48334C0A
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766064834; cv=none; b=D2avCrJzhboGoS/ggk+XmrCsrl/2mudUgq37rMgTM29vI6NORAN+pIwY5soYOPQeYM+poEZNdPfpqMp8gCxE5MbiVPFeayVBa/5KE3ZrUwa/J/poQ3zOFmMYIurdmBfbXLPs3dKhUdWYVV3ioaK5/JKO6V57pLPT22E/N5fkiWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766064834; c=relaxed/simple;
	bh=UeKNyVhmSmgipDOy/kNPeVk7hdaSKJ8odp8Br/VFLvc=;
	h=To:Subject:From:Message-Id:Date; b=GjHamTyJmZZlRwtum7DARUJJRC6Fv4EqgEtd6skNzgqIRgWDFDuM4/3bEqYoe5usdkyb96k7apaFU30sUwTiGPj9NHcfMH7nvIpoy75lz38uLVEXv2KWe6j9O/bOPi4CFkFh6i9aNtuwUrA9CLKcUKFckjgfZdT9Z65qECOyljo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VONwKIsX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VONwKIsX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11EAC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766064833;
	bh=UeKNyVhmSmgipDOy/kNPeVk7hdaSKJ8odp8Br/VFLvc=;
	h=To:Subject:From:Date:From;
	b=VONwKIsXPgf+dj4chuWsNnz8CdhJcf5kiSKxiXktOaIUflx9zLhlzIIYiko++jpHF
	 kGS0nS8QfsWSnhrQDUQaGm8eE388LdTJ7EO8T2Y3nAz7bmqMq0DZux03uesqtWwFaa
	 uMlf8Y/vcEggikQ/+DVzPKuX4aFSrAQ1J8exQo15AnPlE2bMkBlXA4WKmOEja/MOIq
	 IKaIbOc9tFvvVMObL5nFhIDTaQvLokckKYGkqmeQvPIuPW1p14hwZH9qditjf/NVuB
	 KNGR9zwZygL8gVNKYudOL0W2CLYTi7sj1uiHEmEQSjLCddKnLAEd4hqxJigv0BYD7M
	 hPvbdwgSj6FTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FF5D68BE4
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606483358.15334.4507197922679725490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfbf4093b7912718280b5d17765805b72c6cc74123313ddee6c67880ba0fc5e8
Date: Thu, 18 Dec 2025 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766064833
