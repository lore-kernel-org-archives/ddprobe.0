Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46600213E9C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779237635; cv=none; b=hPbwLqwi8ABYHZSs2YIy+mxYxzj1lEgmYTd8tNN8fhFvkR93djnGUCo75HBIX1Ra53OeFeoACkHqOM75aqxRkiDhDjZX+cYZF+KdwX9Y4zi1XJrXdLpv0Y/d+bVlNIBs4TQcbDQ3uFBmKEj2LetYIqUWKt3hA9insQBkf/TYA+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779237635; c=relaxed/simple;
	bh=cm8Eh1lHpy3rhdAMxXNtzc/RT1iqzflVQyKcAwzVhwg=;
	h=To:Subject:From:Message-Id:Date; b=bhSH+tPwkg0Dss7VK/yi7GX7yVsrKgsKnMy5aZmkJpzEYTLOIuIIl1cIJGjNwFqHNiom468AaWSwL/oGRcmEt8mzbC9iWaNfvwpY/T+Kuc5wsYnWiThaku+mGBqxYdv/UQtIfBh78bpM6KKhnrUtZTcVYA/obxX7KCyDnordk18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Waa7/sef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Waa7/sef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD134C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779237633;
	bh=cm8Eh1lHpy3rhdAMxXNtzc/RT1iqzflVQyKcAwzVhwg=;
	h=To:Subject:From:Date:From;
	b=Waa7/sefNNayU76nxx8sgkc1sJpNwmGLG3CP3gMrEosToIm84Pk4ohxDTXpuNc9GO
	 xkkKMOK2WWQt6c8N3ShORxQVrs+l0dNNJ8uUDL0fX4qhinEfA5Xj7qWaaTno3kzDO8
	 eSp/nsdmdeUnzY4jU/ZF7ygYp59Qx7shNceXvLTFkRuVoNoFiFgf6sg5U4h6xj6/A/
	 YRfOFFSgEnYnupy03gLK2uMC9YCU7/NBaLFp2NUnyh/ylbFqXi04Ye3jfWe5LLUoiv
	 +zqX5xrhWmtfTgvyam9nW1m6WgxON5dDQ3EizZDTVj+UT20UxSpaMGjpwBNCeYout8
	 0WPBxqSQ3At+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50E7CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177923763370.29142.9988313964972226732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d931e38ebb35c554ecdedd3329f7fcff197494e816782857ece7de0a9810a0
Date: Wed, 20 May 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779237633
