Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB7467E67
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707371897; cv=none; b=n2zbNl7eDAS6VVjoqiOQuKGMPtN53kFc6/8PDpjauNMhHL6XQ/TxdQ5MJ8usqVKZepyKOG5wMKjEP6IwUr90bkZNTkUK0qRe85ap1G1H/a6Nd4EMKxDVG9/3edfQp7+UnjIZqU1+iPNMmmoFhkXPV0l0MeiEki6jlsosD+vS0SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707371897; c=relaxed/simple;
	bh=2qq4MMthJow+ZoaynwkV512lN3S1HelYBlGr5qq0HWk=;
	h=To:Subject:From:Message-Id:Date; b=JqanmLPXOT2HK+lncnpWpLh6Q9uSNxlaXiI5dN4FluPYxp6GYK0PbdkLH7V8POE4M5qLByG4UpokDYqPWHrUtRSmzlOeaz5t3yYcahCCxK8cFC6kc71UteUOC7jNa82hWkpem1L3q5T1CeWJv0T7qs2hUVD9sOXnMEArxr0h5E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUVnugNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUVnugNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B539C433F1
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707371896;
	bh=2qq4MMthJow+ZoaynwkV512lN3S1HelYBlGr5qq0HWk=;
	h=To:Subject:From:Date:From;
	b=eUVnugNFUiB3PChWpcKVycofS2cChj9V4kpxNEq9+bFBJEhQEu7UaRiBQdLjYCoUq
	 byeXP1LQedwVcNPYxubFr2QkI2yriba59YXFQ95WctS54jcd+6DeE2a+iKTLOIPkA2
	 QOakvshrs21odvL1JztVaLN+miD8JtRpe6aAPKh4mrDseIkmNP+uWvkEL9/+KW4/6Y
	 bT80XHkg/aUJJmgWbR33BXZtJGWi5I88c9fjHUiO1IXmFXKHU5kVVJfPX+2lw0kyVZ
	 fbHo/mTZfnF5sGArB+wGhj9kNxp3ZRRDm8furFSect24oubNHxCgEjicmY+pNSfbcK
	 BMyvSItLd8Smg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F120C4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170737189644.922.18058889543295598017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e5a906c29959f7140645cedf4793039c06156d7e62437ad31db1400c3ca85f
Date: Thu, 08 Feb 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707371896
