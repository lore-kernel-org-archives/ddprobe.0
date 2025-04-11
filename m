Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434C7231A30
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744392594; cv=none; b=gsHYlKzT8zgjC4iZsiZbC6vflftBIytCOZnW6WO2vsthtkJlTr80Izh/Y1c8yahSvWTCw8Z/LNdj6bY8hVMBzzG2StRrPW0fF0ANCdFnzqsX0qdvPy/md8QO1rq5ZB+FD2yEruDG7a8ATasf8QeMBcgtHY3oT6UttJGQTlfXeCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744392594; c=relaxed/simple;
	bh=L8tD6G3jli0xD2Eh7i+U17CDYL40JH6p72R3XtpwJ18=;
	h=To:Subject:From:Message-Id:Date; b=V3KDzFjrus5UO7uJGlRGMfbvqfs/G3IHGuJR21IvKuGB8d6jM7tqqYQpUe6+P8ztgRHe44I9Whgz/gFhSagIZMX9j72c/bKyC3VetZiSyelADkFk4wcQAMxJOU3djUtmevJnMIJH7RtvHuvlXYLSmT/T2duMOoMQItVhNjp5inM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMNqAsxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMNqAsxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4C3C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744392593;
	bh=L8tD6G3jli0xD2Eh7i+U17CDYL40JH6p72R3XtpwJ18=;
	h=To:Subject:From:Date:From;
	b=gMNqAsxUsRrvefbhqdwxkxXB6tObl+7tXO2r4Xw7U/Hi6TuzHbQAZyuaBA/XoeXgW
	 a7NPCzMGH1WLbYF9lRqcKCKYO6CjXoYJAPUI/RzYW0dXDfQ0A6GbT60xS9pTAvnc59
	 14bHTO1wTzDK9/0n0RkzlO6+HH51oWslFQ46FqlvTJEN84Dw9nT79LB5Bbw6QTkSwv
	 uPsHm+jKJMMJjEUxhbWzsXnH9VgRp25yE6GjV8r4rupJ12UJsXDKZ9r3oPoHsWRBTi
	 pLqSw0qp3LEhP2t8R4AWQ6yNuEYk/1henc929rtW2nZ9MvhlVzAXtvaEWwu+wJ5RPx
	 tgbpRt802X3iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C736C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439259361.21554.14913614647848445523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fd8b3429b6eff81e5f30ae50bb4b3322295bf40ca3c4e0dc8fc4e33c5fb2eee
Date: Fri, 11 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744392593
