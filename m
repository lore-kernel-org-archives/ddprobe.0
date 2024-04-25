Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCA23BBEA
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 06:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714024883; cv=none; b=q4+GcF+ND/rrlscvukqWvURKP5o5KqvEPe9pq7xGbv5q50ZbLCIrfQ9ynqbT2zkZZQYNeAY8Nx2xiAPMJykFTPA8kQRbyrfGLJ0X1AF9RpehFUgnripDtpi1sKYJimARU4b+iCU8tvhzau3wJ6o+oaIStvu6rLIxZ/VMYdgMMY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714024883; c=relaxed/simple;
	bh=eXf5y/X9wBVMusOdfJAokgBguNMVippOWYbb29Uy/RY=;
	h=To:Subject:From:Message-Id:Date; b=gx2FH6fIXMHSGCOlXw8aXo72OZsRAx9W5YTQ8xERkB3f6YAztYjr9qQm/Y0azPytWLeqkHHSmSj3OwpbjnLEBovE/JcKBxqu6hTe0C0j6XvkVdLLAW0lt1t+5QnJXb/g+UEy2gn9kzJZ7hLBpCy7PLUfLDmD6TvCndlb1hDNXdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSwbQ7db; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSwbQ7db"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9073C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 06:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714024882;
	bh=eXf5y/X9wBVMusOdfJAokgBguNMVippOWYbb29Uy/RY=;
	h=To:Subject:From:Date:From;
	b=mSwbQ7db6CrB+WEwD/q/23SbMjyP36k9BUtecURR6v+ExJwiJRQrxMMcOvGYFUD75
	 wxECva/DFsCjpjWGlmhyvNRuYyg7OOMMgVSmUEFr/dgRxSxyYCTsI93PIQUXiwBp/c
	 Ir+/Mab4JNXP1N3KBXKZD+MymNLmo1fkLewmzklNLlGE6T1Fo3NivY7p7B5ZgycnX+
	 Mow8k0cFPF+ANJhzIGlLlz6OIb5uvqEu60Eygp0AGtpCRGo/WFYdZqz9C1ruOkX3Sh
	 ZJDOSWenAc0ykJqVEK7uiBr9szotsW7WKm87Y8ibp+tkWKpVnMrZlnmATXldHDucQ6
	 LGiRnLtWAMdmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5EFCC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 06:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171402488277.4476.7533247551451767148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a25316c0cd0df313c381976cedf0d19b9557135616eff3517e8f9105bae0cbfd
Date: Thu, 25 Apr 2024 06:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714024882
