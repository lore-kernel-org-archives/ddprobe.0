Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A43652
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 03:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716693863; cv=none; b=l0gLfN0oviUDYLkCx+4A9j+F7P/TdphzBjJycdGeBVq5J3aj0opIIMExpCrxcPaiXPwmazbySvN2f50NvAbgPllUt5JfrlTP6pOppoDcYQmnT9SdiLvUzT70u3azPSqqJaVbVBN+Y9RncTabYrJJURkE3wdpw0CNZLZN/rjU5t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716693863; c=relaxed/simple;
	bh=usD+zV3wUUs0VYorCjddMOwmNeWJom8EIv+k6JqTxXU=;
	h=To:Subject:From:Message-Id:Date; b=IBlQD90aojsJ3aAGr73hTevOC2f4WSQgz6sVSOctIBeauCQgnpOUYbHOmMmQD7aaqBrbynkXUltpZHqFCpwqeg54D7mCI8IQOeh0aA9YKbmfa/QQ1j+6T4kWf30wIjd2epjnPB8Q+7LRM93vpPC3fz/qAzg6GQ79ADdurO7qZO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qc0VMqDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qc0VMqDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA78C32786
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 03:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716693862;
	bh=usD+zV3wUUs0VYorCjddMOwmNeWJom8EIv+k6JqTxXU=;
	h=To:Subject:From:Date:From;
	b=qc0VMqDOaliyqRW3vP6Oj8z8j3qDZyjZpxSaAO6K/67+Jj6XcpJHXs7VBFeg8r8MA
	 6Uh7oRcC5EBMX9L3WDR9LCdwNWUL8WtSv0JzrQcQpsIfL/j3gKHXqbiIU+I5YE0KkU
	 qpKU18qOzbWj4+RlFAh4RfzWfkUOEP6dOvdNUb+9x/QaihH0BUMSBwEY11XWV3x4tQ
	 e+htXShv5h/tyjDdq36n2bHwuLp9qN5/PxMnGyNaiE7cEKH/oi7TImFypK5EGKCLAg
	 zpUWEyVIF+mdRVM5Llfn8X/cpiwKFGNLkjc1IvjCwiCEOvwq3IDJvD11bnej2KyPGQ
	 GfHBSjByoM1QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4434C25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 03:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171669386276.21612.8071807774934025121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9202a5f2fc443b9b4bb91b318940de007e56a01bacaf9a0570006d83e3672564
Date: Sun, 26 May 2024 03:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716693862
