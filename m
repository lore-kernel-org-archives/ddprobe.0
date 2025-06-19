Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADF922837F
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750298394; cv=none; b=dwzXJZ/0cQHo6EOHAihpo6u5h1+fZwowbV4z5/Q85rTQrxAq2zIh5hYdM6bs6Qo+3JYlxffGYBWuJbrJnyXvUXFXM/57UmQfgM2qhykO7VjRIWehvf+SlgFYJv7UBmbbsyqJYXK1lFcOOTyDYX7YML0UYDweu4+ZqmkBzjnvrq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750298394; c=relaxed/simple;
	bh=8TbKyYAZQ7qgy+aCtOyCJgeB62lL35coP0cya6kUKJ4=;
	h=To:Subject:From:Message-Id:Date; b=nRFbD5iiNvIHjZBBtsCy7tupF9yzAPeGtGfDMDeYCjlcTY8cq7XcYPgwfbq2VGK9La9+RJH08exgPXqRWlU6oOKXNeCFr6Nqy6vEK7PyHVYfmkWRrq2jWrZRrsELErvJBbE2duP1E6mZHIp255Is0tpo4h+voA/dkS/DolECfFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXhRZu4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXhRZu4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6573C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750298393;
	bh=8TbKyYAZQ7qgy+aCtOyCJgeB62lL35coP0cya6kUKJ4=;
	h=To:Subject:From:Date:From;
	b=IXhRZu4v6+rQNu9DfZygJsR6nyK4kjxrNGI+8NDL6BVl1Y7vsFI8KoxwT9+Nsl3T3
	 7cd7DDKsV7Iy77HV3qv1I5vaxefbI32b0pJ15nhCTRcoL8XJJFc3pQdNgfqJk/XXkP
	 iIrMW2Dx6QqcE9MiAkbEvrUo2z/53GLLSXWf6Z0vHk28RunxFsX8HgvBeEzqz6o9x5
	 fzwFjHPtsILMv42BAYkxdB/sBwpnTzjCqr8oc2QhwsG0J+gX2Vv4BgcBovc6a+sTTr
	 e9XwO18S3aCRWTyiTc9KDBp2UIfGbN2KofBc0ahi9kTJ5kLlAHStqO4pzfNpasyb9d
	 UHskipL5yTxhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957DCC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175029839357.6554.9647762823579954749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ff7949659a3fff57f72a3d9c5173c33a56025d0a30b9b67385f01ec1e74df0
Date: Thu, 19 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750298393
