Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380D01BD00C
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 13:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740920934; cv=none; b=qouys9BcDNegMHJm8+PaIAWTQ54859CTnan+w9osX8wbeUgpwo9UOwxwKC8QaequPdpiWckXnbSSaHxu8lccI2ugDK4PVFQqNTOHYAFmujmA0QgfC1StaQFdOh/H9sqcMVSL9UbXn2I5mmId/6hETbj3k6cbDBuQs9GP93RhTDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740920934; c=relaxed/simple;
	bh=noMBUt8YkmlwtIUMZcpm6P6GBOQ+lW7JVynedFIje+I=;
	h=To:Subject:From:Message-Id:Date; b=BZ5nfiUD6HAzNW681pYQP7Jb3WM/D0vSvYcsKrbyx0G34T+JC7RPDXn/wJX9DWA+x/RhSjemqKJHVfGmTqg4OTkAyY27QbSxNW9ArARJdwlpgENkismUVdKBCbLY9GZIPARPMAVCuutzRfAAbdmNaDayyRk2wdxu+tiKGuImxow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8hAn/Bz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8hAn/Bz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4C1C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 13:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740920933;
	bh=noMBUt8YkmlwtIUMZcpm6P6GBOQ+lW7JVynedFIje+I=;
	h=To:Subject:From:Date:From;
	b=V8hAn/BzkYLaJo0/VIF4bagvG2xOhFxWnkEp3QPTRjaJ3EX8t0W4dcUZ+xYs14N7A
	 08cVO6zBoNhulstJ02MHdPBYsV2EMNgT2B2Nkrgo1hLM2fagjXEo/t2PUgsEd42lMz
	 emb+gn+WsQlhtMSeJcbxUTvK8jCT9F799PPPIcN+1vH7tKkZZz4+KGuk+8PKGvj8E9
	 u0ONHVKL58MLZKkQbrbvYqnriVWjPSmWuktVfiiwGIFqWecnU4W3fS2xdzmE4/FwBO
	 +r25bxV9qa9dWHDeoosuD74BCHVdRnc+E2grUp8I5i0i8J5mWD9F3RhzRNUkU9Yt0R
	 eWbpHM3Zb8ekw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99621C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 13:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174092093361.30241.10993400005251836846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6184d8776b35d0c741861e204541f359664f0eb97f7808f08d8e18b79db7a777
Date: Sun, 02 Mar 2025 13:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740920933
