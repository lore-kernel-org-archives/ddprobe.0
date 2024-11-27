Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DB81114
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732692354; cv=none; b=NqJ50PC+C4ZTbFuQem1gxOxL37gWJoGMv9cOIfNrKWx0Gm4aHOOHnCnGyC7EIhPjd3qq2mu+d7T1zAsF8eqcXLecDCTpFldHZH87kne00qtmbBqFLqEE6y41cr7yhTpN7eZwSaFjnzIQZ4JvxgwNKBjCSpdvuUNTg26ODlvcACE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732692354; c=relaxed/simple;
	bh=XZHjbT48qxqaCcppGD3P7Wds5tCvhnW8IjIYO5VI3kE=;
	h=To:Subject:From:Message-Id:Date; b=iPg+JZ+mojqH4M4FWKUUCJmcEiHhI/lp7v9a4T7CeuDpN89E/xvbGmdNRLkyoxPfbA5hTEVgPRdTlPJWAY6b5UIg9Ml4ll5mxJdT7BjJBpVpSx+QYlP/ZSaGYTJe3u/6U9JaDWMpHe6u0FsYlHAXB0rRjq8UfCs6dSHBwUCHxq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uw0L5h1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uw0L5h1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD674C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732692353;
	bh=XZHjbT48qxqaCcppGD3P7Wds5tCvhnW8IjIYO5VI3kE=;
	h=To:Subject:From:Date:From;
	b=Uw0L5h1uEHlmwAlLB2axeyDrsbK1NBatOS+FJL+lS3peT4c7og7N6ntqEd4WUxsZg
	 TB7yvdkt18L3FdssQ+yZXiMiTbGZ3hJfDdH5xZxwycgGf6AqQ2ybaj1eLY4uT7Iab7
	 xjgqTo+2KNyNb6tIikLkBnZcGlUkAH/upsGWov+Q7OgC5/Lt31Stpvt7PzBOkpJtti
	 2/PXHOypHaVxXl8RzsXG7zhyLG14ylWcsc7/KsHdwC1yxKK1qMd7BlqKCFgBOCYfFB
	 B+vtQEh8qECh048KZ9dE8S/a9mF4VLCcyakTFIsL5rKmHjCn9fDWzPz7MS06RqdZgs
	 aiK+RODrG34Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F2CD609A7
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173269235360.31441.14988138790883965894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a28b8a3cfa4d325cc488f7541fe489443f7bef2989a82eead5689548c82dc5
Date: Wed, 27 Nov 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732692353
