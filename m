Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140DA2D8393
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769522034; cv=none; b=DJD/CRzPVdoEJpsIg7zOD6qIRj1UEMQBGY5v2qd4OAgZiv0NWO0T9cexVXWUfZxawVkIfkTM4gr6/ujPcbhlt9qPTjNbzj1FxIrS5Kp8VTY4XAUUHbTyq2io3L86vietm7GE0MNmKA6IhkpNA5mwJWP7aY+kVQyfy7cL4v1UorY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769522034; c=relaxed/simple;
	bh=49+XN8AA7Ui2q4wCf2UDv7IcaWZQ9rWc7RiRPl9a488=;
	h=To:Subject:From:Message-Id:Date; b=axOXtYPr8gGvzp7Yg5eXEr9/G5l4gnfbRmCy0ude9iZvwS5hkl8+IqONiiRKuFr7LBZe9OPE1q1cO40X7J8aAAR/n5wbYIHeHf5J3qzh+xSpUgaCF6O1ZgiqAdHngQc9kicms6C1U28YMJksNOofPfbZkcbBvaka6ImVwNuR+e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPJ3Gksp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPJ3Gksp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03D7C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769522033;
	bh=49+XN8AA7Ui2q4wCf2UDv7IcaWZQ9rWc7RiRPl9a488=;
	h=To:Subject:From:Date:From;
	b=gPJ3Gksp26RZ2wxfsTbZmqZLOhGMS+PFremzk/E1BfK5bMEGNQgbH5uQuX5rVifQc
	 VMQ+GmSwhXFE9LXYwoiF0GYCwQjkFQSmX6wiimuNDZWhAdHnAQZK9E7pC9M+kHw0sk
	 QC1W3NGLqnvREPCoQU202/aC2g7HNQpKcqETkUJoYFYqyGktcQ1RjVV9hOdBpJzFuf
	 NjRA0jYIZh+BrGi+bGvFeowI4RQ+vRhwQJsx5+jm4tk1HjzLX/qXemUAIYzte2XzP5
	 THStIyl49mrhp6dEAJ0/Tx/7IPVReXjWNnOavQ/DtmU4fz7MG3v40e7ilXmwN4SS+w
	 24PGlFEzARWew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B9BD2F032
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952203358.23779.8354811486194940120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f7bae34a2a27c318574a4c3a8c2e0250f99bb46119d0bfc5f013f5a9cd9744
Date: Tue, 27 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769522033
