Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E21546D085
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790586034; cv=none; b=u0fldbHS86gEJLRNedMkuhOK2g/grf/krlO0X1rqsRc16Rz3v9krC+nKmc4P6ONsgV1q0IPuUgzy8FXeenVXfK1TYKRbtA7e2/LLqiAZTrFxVfJhq09GUkGxAoHwi3roKLOpp9rVJJiOTnt9JLJNRiNuz2j1ZQ7AYun7Fpa1eRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790586034; c=relaxed/simple;
	bh=j2nIMnaLrZrlhCXd8v0VAOCD32900yL1tcVt6NaixYQ=;
	h=To:Subject:From:Message-Id:Date; b=JoM9qqtTcvzJOWg6WjSnfdYpGpCPVU2S2bla78qKmeBqzC0LYuKCEqu5XgYCRr3nVsZHiwJnix6gZKN/4tYiA1u8YFwunZvLhISd+/evw47ev7zraWIVyQnCUPNSDqh6DsfFBK9O/uFapgi8mcBQ6q5IZnyAXlnd0frs3H6PhkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCpSVNqm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCpSVNqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45B4C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790586033;
	bh=j2nIMnaLrZrlhCXd8v0VAOCD32900yL1tcVt6NaixYQ=;
	h=To:Subject:From:Date:From;
	b=CCpSVNqmlbZcXU8xjguxQ9IvfKW3WeW/URQ5fm0RQdDHz4602u5T2dnusDit5XgtZ
	 xu02BsXqscBiOLaFLu5geayfn3+2+lOp4N2BfZxa5aWd2gcHTVMXzS7YcsWCfz6RJa
	 oxhG2V5hxFX9rdxuWLXn5KOrGTHoJIuo8xXQ6ZYw0lAAaeLco7K1UzsQAA8Whgytmd
	 z4f4igLmzl3J240ZxOxdI6BY+azDYYkhhe71cu9tajAND9jd653veyder8flYL8NlE
	 YwuVIbYBlyNBhBhPtu6qIy8yJRcn1CXGqFm/fSZiZLXjpCiHbC6mgNUiNX3xAfyA5h
	 o88X5t5CMCxWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7ACC9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058603370.13670.9224547880553365556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db45a25b4383644ef0e2e653cae7d79fbb890572129222ee7dc2a08650e6910a
Date: Mon, 28 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790586033
