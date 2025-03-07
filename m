Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45984192589
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 13:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741355335; cv=none; b=G97f6bAbs5Egq1zXuLew3dTdVZXbDSSAnFcTcpdbY0sCoUU0v2Vbv5mdLU1lQDwubluZBRy+r2/rXGvhpxSiWxVssoG/7Bui90ShUHzYksKxXdKIYwpQrsFTLWMm49t/fIvP9reCk2B1/x0kKHuqCqAORM7n1hLyFWiSOq6gYvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741355335; c=relaxed/simple;
	bh=qgKfd3gb4ekIVgWHfeEUkyQytUsiXhYiaICRSufeQFQ=;
	h=To:Subject:From:Message-Id:Date; b=Kvx+sF0PPTJGPz2FRf0XD/4dCW16Rd3nvjFzGDQR/bujqS3d1nc6lO0zpx6rZU10TpTDGKl5VYHn5fQH8NkPasaSpEPeZSAIK3jxSihXZ3oVsfHIPj/hyvt/dES7+C2cLkIV1o/2jYT99Rr9nXWCOqfuUsmHvauHOXLa6a5LFCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dM/st67T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dM/st67T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7454C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 13:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741355333;
	bh=qgKfd3gb4ekIVgWHfeEUkyQytUsiXhYiaICRSufeQFQ=;
	h=To:Subject:From:Date:From;
	b=dM/st67TJovzcaCxGLJFN9Cowy6hURraMkwaR4O59RZ1IwWFOITgC8JU3XloMA7TT
	 z+6NxF9WXCwyz7DlijME9HU+dncew6DFAzegwf3K0nCNw6oRpDOxI7lCM6FrU1NVSl
	 aySfzs700mJx+qjGfC7zBix2n8sKPH5ankoZ5iOzf+2hY8hIPdG//sdPxRzmzJlnwm
	 dl5uRTOUR28J3foWheMhq+RmbMsg2mwNdsZDl2jAwkqSL/n1RFS5XUAaEcG+P6oO33
	 5Hyp6Op/08D5cXcZrjIEyjdFM3O3fjlrRPc54amEJNfe+UdotcE+aXaOJjJUFvtZ6E
	 jVbPD2zBtBaNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C8C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 13:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174135533359.24289.15987437567912869984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d69643d16e99c1aca28dc1c7086b7eee6b0dedba17fbc0a47d223e255b5251
Date: Fri, 07 Mar 2025 13:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741355333
