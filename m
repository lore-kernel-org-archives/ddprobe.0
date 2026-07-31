Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBBC357CFA
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785520834; cv=none; b=bzlbiJFd8OSDQWrcR8CiXNLtBXavnSRpuOSXBHQLj/4DoFhNXhVB40+GVYHGYE+OyFutL788svdo1u8mbKvxt2ji4VSJQGqCIqQCZxwYfo76pT8pmRuDWbHXnyZ8CyNQBv68fxMhHLgILW9F6gfkcJ+rt7XDVcACiIqQJCo/Qwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785520834; c=relaxed/simple;
	bh=I309PAtEmEXgUy34Pc+yunudeBQRiyC7A6hQ8nH/YFQ=;
	h=To:Subject:From:Message-Id:Date; b=cREGfa6phkFRN10J2i/sVu5lPXS6ifA6tvjP2Gw6DRz5CocKLelbkGUsWEGiMoA0OOwR0fI++ZQ/POqmhtqyq569mx3dOEQuS8YFLAhSW4DPY/nYNSPOim1HynmTgTxh1EvkEQPpJWF3/5h5Qz2RTQYVXnRUktDz+VrbFuJwZIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULF4NL9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULF4NL9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A48C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785520833;
	bh=I309PAtEmEXgUy34Pc+yunudeBQRiyC7A6hQ8nH/YFQ=;
	h=To:Subject:From:Date:From;
	b=ULF4NL9u3aMp4FDd9YX+UeLbP1fkk10Hug6UtMf7iyFNMPxI31iRZuyqzKTP2cRiz
	 IXZVvwiWxQDqlev1lUDDBerxZ/UbjBv34w93Yeq0fN/OcixN3CnN1NKNwXb7QQ59HF
	 Kf+cP7T+EWFqjqKMLo9BA+dnJHxAUCUbZVgcsiuErJXq9KT5noPNJtUSjr3FUtwrgB
	 v4hS1TWJbA0pCz0C4V5msxIMEF6tBQHBfcNdPIGYDLjWNHH0v17AI3V9PSugilKfDy
	 CohjIwdAyfVJHXFMq6/0lGcD1Oxgt3GuzuwMHbJrfXUvyHWDGM5LY4kCVp1CD3vXak
	 Gw1pyv6CuP66g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B376EC5516F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552083372.31450.482441683481396212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef36277754ae18724ecd42f301d8d89254d88c6268204d7b52b76dc48e793b2
Date: Fri, 31 Jul 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785520833
