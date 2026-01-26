Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C912877CD
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769395434; cv=none; b=okAYy9mYmwXZGYnssvQ14AjpHb7cnommsA0ASnjU1YJSgGkwf20r27hweZgn7ZZT1TELKPf4IXSsNPiCkafRLCVABenm+Njees8Wp6lFbpf9Qz46m0LkLqMxjGgU4DJPt6zrfyrddg2mNn0c2BTR5CCqLb6WZ90h13tm2odw+aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769395434; c=relaxed/simple;
	bh=oXmhi9wYFJynjIYwwaxRBa/FJUXBtuWrmlWdgu2FpFE=;
	h=To:Subject:From:Message-Id:Date; b=Ro9e9tOEdNF3N0examc9SQ9mNtNCH9GypF+RMUdc/9VYG1JGmdW7wM0g7g3gNN3H9m8wa1wYe9rIycB8NUrQwKK9yVPXU0LBX71sWhbqnv+2z3pO7j4aIPIy3RRiySlgGX7eeBPE+pYEN3UEcJN22W2ySAOEHRH6SLlWvLHX5VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHJf9Nup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHJf9Nup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BA1C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769395433;
	bh=oXmhi9wYFJynjIYwwaxRBa/FJUXBtuWrmlWdgu2FpFE=;
	h=To:Subject:From:Date:From;
	b=QHJf9Nup8360qgDQKWS5YQvGo7PxHvGWpeUX9Msa1/bxTLbuPZBsYsEEnxfwPSjAK
	 kdSu5Q3XXFdUe/x8DAWod2cd0uY5rrV1/HcJjMHQMNkihUOa/Fmne1z6Np3GmOyJLR
	 HjWYI68pKz33SRD8V324mnzcFjfaQY8X26qMZ1iSbLcpYJpR8bXpd0dl1EHXFE1wn6
	 vRuxK2SmfHJkwtyW1+6RJ3hT+l8gL8HpSEZ/9J+WFLG/5pOsKjwuldB9Xgdyt99ouT
	 zCusqo/XFxNRt9KX9ZaVLv2JN9GXXw6GqOnsTQMAiT4o5peWRzaUbqLHloI2oQAG5S
	 ugtnbcgODGQoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D0AC88E42
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939543357.9242.8596041474035562296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a851a35b0c528dbb030eee38380b8cb1a0d7808a988dc3adb23ad12198bdfb7
Date: Mon, 26 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769395433
