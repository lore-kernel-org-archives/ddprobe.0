Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3505B3C76A0
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785961834; cv=none; b=ZcHLl//O1+OUSipyG+X2ZDVDMbExVbQKnDmTwe1y5g5CtBb/cooyRby1Mb9r91fOCB3EKRCatY3yTaAcLnoJM+mtchILCQf5wFeLuAQs02ejNeI2e54G3jvBz+wBrHMQDFkVu+n5ep8MMl47Wu/hdJNDcfiu80sWLMgP67V1sog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785961834; c=relaxed/simple;
	bh=tAvJKjkGKc3gfiZEvbkGZ/s7I/84LosA350vaYYQaNQ=;
	h=To:Subject:From:Message-Id:Date; b=t74I6WTo0DC3sZWcyDTGT6+ALGP2UVyud0jxULV9Y05gKAfcDEk5XuE9N4+I9q7FsL/eTEQpLKHRBz0SNWh4vanbHbyB9LUGYebw3NI8RLbkGbWKgQMmjFrtJ40YCg/Wpne6GQ47xtuWNjyQqFo571UIVbsJkTUhVuOnbo1AR1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKBQvXBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKBQvXBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F2CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785961833;
	bh=tAvJKjkGKc3gfiZEvbkGZ/s7I/84LosA350vaYYQaNQ=;
	h=To:Subject:From:Date:From;
	b=fKBQvXBdQgrvhZKHyCOP6CixxUy4ttcRHgZze3AX26Kh3szO2zDcg3hx0lCxQr6Dz
	 YiCmWYeZKCvCPsnrMoftJvla08L78LmnhSbbUZwaeSrqUoZBsgh2Nob/JLvPcu6OZq
	 oG81rJiIMoZb/cZ1OJp8ZR493hSXB936ZQhLOOkZmB5XbnBoHjI1gNCO+Zg41Kv+Od
	 8NVdk9DMnTKsvPXYHGeMLXTtcj1Y6wJfUTwYTiexipsVqiIn8zNSBmZwwfnAi6ATjB
	 77w0nQva93/Bao+6wbHWHZKrVws64kWS5QsOIpUKjs3kdik/VlEEJZDVWH94VE62M+
	 6grX2IffMJr1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2213C55ABF
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596183371.13494.12085612314609058561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ba1a3ae5e0b134b88299e2de533bd83a8b636e937d21bf1a10fa54fa639dcf
Date: Wed, 05 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785961833
