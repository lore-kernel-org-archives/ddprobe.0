Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E7E3876B9
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778241454; cv=none; b=RjC2FDmKIZtMr7zLobUVa5Ib/UpPBWeOw8uw7FDBeUKcpjEXLlVKvLLRCsy5keVlTYq126GpR7G+6tyIvD82TvxkE5OnAiXiicUM1OQYdVJHf3vrAG1EaVPgoO7qjcWk8QpWYw61bzf79xTsKrhJAUxb2o0JA+vqV4jMqEQh17Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778241454; c=relaxed/simple;
	bh=DvUD9UlYvAnV54NRDbODcIIRKQV5wwYh6Jp0tzAAb3s=;
	h=To:Subject:From:Message-Id:Date; b=mYd3VXd9raNjTHv4hRLta2QJ0cMIzzHPcIabUaARohTVWncRQzH/N9toWkdxpZSd9QA+bmeeGc43AbYNyOPZMrdUxFfL1XQJ1RcVnV+ttJxdoEPs8ffnxluZdyCDgYkiN0o5niJyFvbaL3POKrTp+YH99l/LlnTQuG0K5GUAVLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSn1sDEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSn1sDEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF18C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778241453;
	bh=DvUD9UlYvAnV54NRDbODcIIRKQV5wwYh6Jp0tzAAb3s=;
	h=To:Subject:From:Date:From;
	b=bSn1sDEkV7+6pk1uOHGiC+KxBojnn4Qx5vzDHDt6qaQVym3k6ydwn/Nd/ycSn7hX/
	 6DbzL74u/9NyspXw0FGn3/WUY+Sj/V8gFIoc93ybYpg2QpfjbJSijjhUD9ERDwZb+D
	 9MuQaSZ3psvv7IleGACECQIhEHmQs7uz4s8xNFJVAWhyS7T5iQOXr94esbtDDion8q
	 GXPmpLs7j77cfctMJTjaoepT0/Dsn5IdVcjhDHbgR3FZUFIARh9j76fc+IsAe38pYY
	 yC3o1XcAtu72tD6Sn0SjyCtRoe9xldDiC7+gwJRtcDWXWyg5cIzSKbwSDrl1SB7eD/
	 jeTNWTtOgWFJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD8CCD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824145369.28349.11862455964032122145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b43f49e1af9fa12c5cc116c63ae9cb3e7332b7429d1f1ebd8e0099e4ef2853f
Date: Fri, 08 May 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778241453
