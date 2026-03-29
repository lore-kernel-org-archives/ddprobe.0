Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B281BC2A
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774755294; cv=none; b=OgJvUJ+K6L7kFZ6972zNHlR2tDroHKDrNwYpJN//CM7uB6WFU03DcglRCgNsr1GZStBr6gab9Ivo+sqboh57U+VIRzpo3IqnIEX6zemeUvF7O60felf8i4bI89Rf6dehcndBbYEK+x5v/DD7AtsuKxgP0H5mF9tTg4Q0TAjtL/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774755294; c=relaxed/simple;
	bh=Ftpqbwbo/TsR9HpEe6+OV69Tdwpd4MAxuWmC7sNMMd4=;
	h=To:Subject:From:Message-Id:Date; b=sI+Ld3ne/+d4w+tX66ejXjlJRj8fk6iLy66+9VxCFTajsyHtr357mR98IfWNR6P5W7EQ3ZGEBEKM6F09cT6wIRPVib/pefiGBB+5hD/tA2BZfefS8MPcIlgU5wGI5PTBQ/xwT4LLzzoDy6O8eqHkbFmdkMv9kI3SZYe90TZyjn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmLeJs95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmLeJs95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EF9C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774755293;
	bh=Ftpqbwbo/TsR9HpEe6+OV69Tdwpd4MAxuWmC7sNMMd4=;
	h=To:Subject:From:Date:From;
	b=pmLeJs95R0NUh1t94wumYSJdCzkcwmyCeqdxtKs+YKfgqiu0SFxg3j7Tu+fEgLJvM
	 eYSaiCzX1zb9VU49S3afTf7ooDxIGl9JNYr5gHwpdnerZjmPnwmQf4BSYGcD0NSPsf
	 apaIA7ls4kdoot5FrTeBiZNa6tXOrUl9yL03dlTDN/IWOFWX4Qjo9cKX8ooMLICf0I
	 PPhFWmbttwizW4641boBCaNQ5iFNxLIRNpzGmyEYFZFLQLatmSUy/f8xmL+XnhXfrc
	 jtfKFeBQ9g79L9VR65xFP3Aid4zxTUN3qQ+qvzrWkd1hj/JI7F8YV2XRL9+0uXk7X+
	 HRFhNk8uICLCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963D3F3D5E5
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177475529358.22871.6193075654483667978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d12c226dd1f87b63553594b222aeef0924ce0ff982575d298fc80ab662087e51
Date: Sun, 29 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774755293
