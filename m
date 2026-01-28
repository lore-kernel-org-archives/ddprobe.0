Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B6933D51D
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769600633; cv=none; b=UzNlg/7W0ZMzzE8pgcRlXvWKQoyXoyykB552qTmviH6JSt6mXgd9wmVrKYS9I+sUerAidXYUXzsk9GkpoAPp+GIOTVOg9rgQpcZq9mHbc1KtzPy51Qp9m5rYMXRVigONiTCGp6F1E+ObVWJFnEzT3yazqIJK/EYqI276yTxuWU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769600633; c=relaxed/simple;
	bh=qHJPC6yXV42z+aGDX/xLEDbacEBLylzgoDTnuZvn6NE=;
	h=To:Subject:From:Message-Id:Date; b=g/zlzXmQGRvOEUwWjB777/v/I+ISPn2CiO7a1X5uzpOcJP3Km2t1J21GJ+rjpJME4H6F8duBoY+WXiCd6LvTB+zEclu9M9N/Muwg2h9EWVKURkSVOhkypEckty+9aKL2iAnzC85QJboV9HVKV30fORMcYZzMnUXwQzFA4WCi9ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djcrh0jn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djcrh0jn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B7BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769600633;
	bh=qHJPC6yXV42z+aGDX/xLEDbacEBLylzgoDTnuZvn6NE=;
	h=To:Subject:From:Date:From;
	b=djcrh0jnANThzwHlJEUPyq6wSAdwAxg+U8SQ2uMKGeghMTNHZZT+T8BKKk9x++ht1
	 EIr7yvswUnX+OotLwqdYPKm3ro8Y7iY5rJoLJZyj0eyMqUsN8kPktWaIDjJ9OHP5F4
	 prRqgmXIAsr1cSl+Y/p5YQU/qX8d13XUQ9lObGHpwiAs4alY3LQ5i5X2Nix7pdPFKv
	 VSSOPGMZm8tVyYhhjRp2SfsLWQi/g/FKw0Mqki9cjy7lt7NsaWrq+/F+hF6ueCWPae
	 a3K7wGJGfIJn87yGnZTjNod3OpZqIg4C7XxnJ82sDAdVuoU85eMXfQSkZj2Ai/acmZ
	 aYrnUMZTHIUTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9143BD25B47
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960063358.25695.10524745345181295693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff52672759004af427a7211844c00e866c1af1dc36c544ac2fb9afb5caf98db
Date: Wed, 28 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769600633
