Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD8518DB1F
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764869573; cv=none; b=mKEpAyMJHWYrFg8bGX4K4sHgSIhnUD5SphpMVDaW+aOB5gs9yspaBESg4GqJ+5o5Z44Z5KLvEmvp6ytBH7wZyBfqJ+TDLd/tuE26CDNprH+y2WCO/nSM5Ux82c+twbTbJgfy745/yvy1kPrHaEPIaU/LmujcTzFNrUIKN4lTf+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764869573; c=relaxed/simple;
	bh=ex4WQWzxsBjAHYwW6RnDViF0bd5+cLz7rrJ+jR1lhCg=;
	h=To:Subject:From:Message-Id:Date; b=VlZpRLExnDbMrWnCZKVqXkLHU1argCzShptQ3HjOcdNi/QbptjY/4bZCQ8Q6+8DEbp9fAxovXrOsj4vOJKLtDwV95znsomtez4jYreibv6ZULHZ/MxR81fe3pJbeqJZ4hsLgxHGxRTu44wmv6WYvzpXGiMLRDu3ZjzxkciCti7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgxQuKEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgxQuKEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A91C116B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764869573;
	bh=ex4WQWzxsBjAHYwW6RnDViF0bd5+cLz7rrJ+jR1lhCg=;
	h=To:Subject:From:Date:From;
	b=IgxQuKEpx0DnbCxUVEoFScvDdbDINExAH3675WVMXLAx8u7kZGLpe4Vq0A7RmxyzC
	 SrrvsUc8JmH68jclXXZZDqFfFFU/0Kaykz3+GIN+6+tdwo89Lrfz8bOgBBM8VEnqs9
	 hyg00U72N5RPBzkZq5EVncvXJJjV1OydHkjhdJIyrUF7JFRlh+Sr3hLdLj0HXczjpj
	 bTcP0bKlU6uhhkG+6rI2grW24/n/9LTszGqCRZCOSNnaRLsL2OD0qnxc9YrhpbnfFL
	 LwwxyruJUDjxOOLUDvJcf51Iy9O8SqINtKiSZ9SY7fBco6CHxBiIrN5DwM8wZBRlAi
	 00gi8tK424OvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93849D2444B
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176486957359.20669.6943429075602855417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f3bd86074cbec5e46fdd502cf6c67555f097fd0ff811dee679dcb89f96fd07
Date: Thu, 04 Dec 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764869573
