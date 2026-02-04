Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E4E238171
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770221633; cv=none; b=YKImH48cMOu6SbVhLrU6epnC0UYViJZxEZ4HGisXqLfSu4+kmToAFysIs/U5Q84hv21cVQ1AW2Rd3K7Cx25NDQSxk7fnb2be6z3eHuLiklZWIwZdlLA/x0GsnGlNrNZOZXdpGktjSbStuyCM9sPnXGsiZBSsOGTIHFH5UpMHueA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770221633; c=relaxed/simple;
	bh=X31/fLhLjytBydr+jakRaTSFscruFSt7ji/EHGmSZTo=;
	h=To:Subject:From:Message-Id:Date; b=cJqI0WnuvXC1TXoq1raIFYcjmoOBf+vyFU3ieOLWJ5USjnRhB5DJACWfeTYhL4txbpj8eZFP+UbEArFD78QQ+ZPfEejIfnfmsHeySJSiqgxUHTf03lHjm5mY07iO6+kgDvgif1OavYfe279kVLYlb+FQCs3NZJkwhm34t2Oaguc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKMBBmPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKMBBmPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54A5C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770221633;
	bh=X31/fLhLjytBydr+jakRaTSFscruFSt7ji/EHGmSZTo=;
	h=To:Subject:From:Date:From;
	b=PKMBBmPfYN7hUAYp6v/uRQjoVJuHz0VOwwVBjUlDXa0kl1aQ51eaatYJBI6ocsEd8
	 BtD7t2/wx0Pxj43ReAWYrN+2741XYWmCmzljCn5CIz2w9irl4MQ5BnOzsNErin4BMS
	 t1UQ2HvnV26QQWoApU+zHRtWg66EY7Ss/ZLhYkOFeFas0LIeqjHFyGWSmSEYdbl5Cz
	 cXLsp/loVa9OqWYqJd5VLGxcu8bSqtfKYoWgG4+Ywmd4pxy+skb4sveKsYuPev0lf4
	 aFxtxy3z3vDWcpefSxaAroWteABtRFlKWV1EzAt+Co1vHY9WrC6LkgIO09ucCnwQn7
	 VExG89C6WBXLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA56E9D408
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177022163362.3998.14119829824024117167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33389bfd54a18919d1d8ddbc2ada09506aa4917cda2b9be64d87c5d1173037d
Date: Wed, 04 Feb 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770221633
