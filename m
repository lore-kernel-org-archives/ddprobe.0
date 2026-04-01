Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405ED3A4F5D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775062534; cv=none; b=kWvbtZCeAtDaK6nJc8BpQaSEf4noq1/FgdOqK2cdJxyVsmlQinoTWKZgQM9n347wXlnm+aYCc439V/foK8QbUuGQuG9E7oTCdX4DcdVvmATEyWZ1utWhsD9PZqFHUsCFRmUy5VVJw//8wHLSe8bRwml52FqRVW7Y+R7F4LrxjMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775062534; c=relaxed/simple;
	bh=IS+rj2ABP/Tu6dBLHXPJz8/PY42XJeo7YX+/E6VJS3Y=;
	h=To:Subject:From:Message-Id:Date; b=iOpCkrWyEDTkfnqXIt1r6p68oQljrRRYtKS6iuJPmOjWXwwmsmpF8W2lFSvF4GlAkZpGq4wIT+Ox+LfGOahD5mdgwtKQk9Lo6Ms5ajUcw9sxTW+dT2VWgdGTqPi+mD58KthXKE2gxunuaWk3/Vcb63J4iTCRSf4HF92Td6OMooc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYrrqrje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYrrqrje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4EDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775062533;
	bh=IS+rj2ABP/Tu6dBLHXPJz8/PY42XJeo7YX+/E6VJS3Y=;
	h=To:Subject:From:Date:From;
	b=WYrrqrjex6T386gV9E5BeUva5VviFKNRd4W9wBB4QxZUU8kMCNp6eXhU7PYGBewPH
	 e2pkUJEKJsvHLD8ToZD+zSlcfO/4lD/O+zjR59oKUsCLBhzYxy5xfIUcrdVZErVhhD
	 uxCqY8nEDsWWI7JHWhfYa/ziVZAfnn+GlWir9nuaGNldXAN1a+0LwnLBcXHTEJiTo6
	 0X9kXxysfK83qWeOyHhKoKm9tpJCRqSOt12WFRYnAIi2j2bQR8B7OkLywEzRYiLxL/
	 qA/ODNJv0285rtoW3/5IQVKXW/rJ2IX7fUhpacYHp24nh/W6A/snSGNrrHGEShKsV5
	 1YMd9no1ER3bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60BBD35165
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506253373.29851.8952465589304749495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9ae2ac1e5f740e3240e8506df60b5018e716e955645c990b340644bced899b
Date: Wed, 01 Apr 2026 16:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775062533
