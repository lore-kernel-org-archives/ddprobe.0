Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D93224A069
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772583294; cv=none; b=MGNu5wX5SmKwte+VRw/nfKUFx8HEEDXgEiORCLhgVH8+G00W2zf2s6ro1uu6Tg5OWPJn5LsEOloIJxJl/xSnvVxuN3Nan67c9ThYsKpJk2zTOb2il/5syvDPYITeWL+mhMxSSo3gak71T9G/YLgW8iKvTYERVPQalV7qGWeZ6Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772583294; c=relaxed/simple;
	bh=bz7DhcW4q6Fr+y1xkL3BYiPp3PMFn5slhM9zpdqqXPE=;
	h=To:Subject:From:Message-Id:Date; b=Dn/waZAh8Xe0rH/OOdkQJYws8wC2h0rV1Iphcl5rQUqrsPvb2kXvkzWz9D1MJAo9JWyg0Z6r7n0wEbOYpRhO6HLMcE58XjcC/GBd6HC8sj4Vp81TSqQFgf9Weanexowqgz+nuA3lkqi+uX/BvuKijZXqznghg4SbUoOHwaQyqew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpdPXViJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpdPXViJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33F6C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772583293;
	bh=bz7DhcW4q6Fr+y1xkL3BYiPp3PMFn5slhM9zpdqqXPE=;
	h=To:Subject:From:Date:From;
	b=WpdPXViJq4TeTKAesuojK+SSx7BcTknEDwXwXL9BYs66XOiLS3puMwUXVuhoFi9Cm
	 twOnVwuXFrRZPQ1UZpBnF0/oS4am0c1v070D/rXyXuFPvr4GC16ResSfpyUSMcn+vk
	 kCVAP+O8taYTfKuf+ibzT+0TqKfER+YOIQ2IWr5mGXU9l4lwJ2oQ+2+g5l5g4+KFdG
	 nd2W052WB53iSUhflsUWsnLCMRS8Ux0Y3Hwgskgierr9MIxqeGCIVDV1npl+tIxHdO
	 vb/K+oK7w/3SyCNSPJ2Q+gBkhJ+4Syy2udQOC8DdZHFksinzIdDeQqFosXpX94NWI6
	 VmvY+EEtDfsAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7837EDEBF5
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258329365.3759.7637234138197606117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c22fd9d2da49941d8ea86223a01200785ee77badef98baf3b2f934eae70dff
Date: Wed, 04 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772583293
