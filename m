Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2843B3AC2B
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723325754; cv=none; b=A+++NttBFMHg6uYAscGdVo06GFx4wgQuH2Y7TugCm15gfgTccu01iZa2znCKlygxAcLbrDRJ4CeRSigdUldDA8g7i/i+joy5zPqVQoOhh+TPeIrAYEY5Gam0WvS4jWPfFeytAgyYVGN2A5xRn4sTHTAzo9tUkC9LMi+hrPOGdxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723325754; c=relaxed/simple;
	bh=olDZplnqkoBIq8YOyTn99035S7dCvQA6SmToPRrddvY=;
	h=To:Subject:From:Message-Id:Date; b=ZFL4sj3+siTHSvsvcw4RYL+2R6oEk/yhEoKZPMUqjI/OP3OYgFHGA4EU3iUviXDq0Mft8OvPfHU7fwmw8mykO9Fmo4Kf30xZNQMCPHbOF8x5zPULydpd3COZtc4hu6rM4M05tFg9J++ZzNx92cganvUKx908psqqGyu+YXltTUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuSYeJOR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuSYeJOR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC420C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723325753;
	bh=olDZplnqkoBIq8YOyTn99035S7dCvQA6SmToPRrddvY=;
	h=To:Subject:From:Date:From;
	b=HuSYeJORcU1CToXcTxy5lK//Vec4c9scFnb/24EPJ3xpzxJRfbXSnKyU1W2jTGfVW
	 hryr1CxxZxjlSVv8vmB4hPXCY1T7W1dV72MHtBIrx1TBG8kvdVLZNwLkQDRs2mUPCg
	 fvElrWMfeQpzAbuv7sjHDGw3V2Q+jj0D/v+OOIj7ZxE045XxgC2bVNeQn6t2Y288dm
	 R0tIxyCDsKm++efcBnQqlCL8AgAaRH8eQJcpYpLm5ybWuMPajMsW0Gy0CXO+n1SDd3
	 potl2sdMGP+mbF31iqacqj4Zn6k9W1awMrlJdDQG6ZsvETmY7YgtCWCocQg12f2YLw
	 +EnZY8HaVtcBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BD7C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172332575358.24229.447398389109384444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc7af0eb0947fe9163fe40425aefe245c8d53565ddbd71aefa109b8656aa777
Date: Sat, 10 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723325753
