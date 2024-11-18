Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3710F2907
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731915354; cv=none; b=rfO6K9mCEEnXxcm9CNCZvX5vYeir+1ZOHi4LTvA1Tk56zq2mYPM3JV6BbYd8t9z7aUFrYGOBqVvvtFNUsiRwKRAYypCX2DgBoXwRYPsqFH/UPwgO4O8UCvvru7lGSeeQDAtRpSblhyINaX8LqOkybVY0VIOGZ+V7/p5fZr33zPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731915354; c=relaxed/simple;
	bh=5uFbKLJt8HtiVx9B2KvVWpAqSP3PK5WJSSZHgC5yJ1Y=;
	h=To:Subject:From:Message-Id:Date; b=sydiqcj94GDiGaJ3ftmD8frpgT8ooYFVQvdPjen5BBVF3NswUEgCwteBsjdwOYZxIroJiZ/NpPbw9Q6Ed4npVl+uvLi7BlRe3OJOe+dihVRVobeyYki0qaDDX3fEQ87pHBfHkMmGSareEBzrmoyY6I85DpDEDsWvZsJcvCXvGu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EyqfS9vd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EyqfS9vd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC50C4CECF
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731915353;
	bh=5uFbKLJt8HtiVx9B2KvVWpAqSP3PK5WJSSZHgC5yJ1Y=;
	h=To:Subject:From:Date:From;
	b=EyqfS9vdf3HzFxOZh8J18GetpS4gx12jextfwSDixz31WS1aPYun+7OroLPDN5ji/
	 neYLadKfqW4JLgXLRkIDbbaoEH4gVXWEGXOpLhpas+BWhcUAABn1nuP6k7F1pOtS2E
	 Hxvlrn0ml+OWYja9cBe88fznF5ctYRO73gFvRPj8DoPEaPUSE8FfwmXVQOJrjdVdwG
	 303U8NTZLHnSR1i/P49enrth3vPbjWyt3Vz8GrQmAsUS1qqEsHAxTzoS+QAkkOBM2J
	 r5IVq2hYhSsQiSz3pulg6s7NgZzjbYWGJM5upXAaWOrKZAra7MGfALhHwy4a7Zqy2f
	 qJ5upvyqYYEYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C76FD43FE3
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173191535359.17069.13203914761218388677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54aa151aa62396f581231c087c7dba3ce4cfc6db59d7af2ca8cab0fd391db032
Date: Mon, 18 Nov 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731915353
