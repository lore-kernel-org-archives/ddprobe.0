Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1199416132A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777241854; cv=none; b=fdFU1eqXuEFg7sVrQVGtMYVgP6WIypCkFc+P17sSlfhAQS9MMeRdBqBvlnvb0A87NRAuF9U7On6DjlKIyjlj7oukDiNE8iigusW804B5TTpr4+KqtrjbenhXcyg8HqCLoHeJNnCJf1GbZAoIr7fE8YTlXmyhReQ3ZbJLDp1/TO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777241854; c=relaxed/simple;
	bh=9SLz/Kv652XPv8oVJl2YPqQ47f/AAjVGp0au/1Dx0fY=;
	h=To:Subject:From:Message-Id:Date; b=ZhthreYCLKpyMSWNYAPYjdExXK2M8TP9M0YHdYbWKPSjUys4aOAjVzJc1IW5xqf+ydb5wxgP/dwUSNTEdd7hy8ApmRa0h6gaH/CKt6/qnP/sLfOlhUmsGSU2Iy5J4Vik+gOkoBm5W0be24nrhPjzgI7ETH6Nw8LWmBEXdPFwGyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDbbFkM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDbbFkM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC35CC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777241853;
	bh=9SLz/Kv652XPv8oVJl2YPqQ47f/AAjVGp0au/1Dx0fY=;
	h=To:Subject:From:Date:From;
	b=rDbbFkM+3Kp+ed/Vf353x1a65uJ2JyFA9giVuNUG10chIWHKTedBRWokgwBJvrLfl
	 hsOzJYpT/pfIbk0CEIOSpZyvo104Ky4vpN3/tPj0KekT7TUzpkhvb+z8scdQc9sJSV
	 Tvf4QYJMf70mfYsdZfaxp5BGkAZlgpOpQSMdWuMC9VIS10ymiB5jWaXUPpFQqbxkO1
	 CXFL5CqvX9ZZ4OP7YzHovI8BURGaYpOg2tk36aRZsLteBNwjdB6blJ61HlCzHHvfW0
	 gu5Zk8UI3MTGQx/7QWfd5+WVIH8Y7w6PvI7ltW6n3OVuJWjOPbDqxgl/hIJarY5BRU
	 jVEhxkCakWemA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA64BFF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724185368.2949.760026753139938518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6307b9756bc7b365d48cb36eca14cfcb69b044ee4de7a2e0a40d3d29ba4d70
Date: Sun, 26 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777241853
