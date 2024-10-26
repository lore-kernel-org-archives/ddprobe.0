Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291501CDFB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729929954; cv=none; b=pjl0VIY4JaLyUm6Zou8rLT8S74focuFOOrqp/kJPnYIhfk8KQY5xIRVsyNwHfzH5c1yVtrlxlkEBnTTNLj88hiDW5ULAyHP9qNY+fsNm8XZgdDNMHe7lRtRlbRzFoFqDDYvRN9bB7hjkekqpznbCr7nwZKBhIx2VerxO1E83BCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729929954; c=relaxed/simple;
	bh=a0ACZGz5Z7Q3f3YPaPTWkhlVcjdFJ7uANwBNokMFsdE=;
	h=To:Subject:From:Message-Id:Date; b=lSexTcRfZt0nlh2e/DsxYY6RwO0F+6dLWgzcL6A+/PRV8G5KpmH0jhasW1S6dJk6jTgBSoMMwvH8o7/2IcINeNWIPM0dn9fCFeI34jFst0Hfa3erWsmQWaZ5a1rE/wgUUP0HcB0jeZjax2eIr5DsC++T80qEs23teBoDMVcpHYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UVtPBOKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVtPBOKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A5CC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729929953;
	bh=a0ACZGz5Z7Q3f3YPaPTWkhlVcjdFJ7uANwBNokMFsdE=;
	h=To:Subject:From:Date:From;
	b=UVtPBOKVvGO6yFYxrL5NpI5+AJUO4p8C2YLwar0WWvJfQvphqxmEomCB0zxXodRAL
	 nnCazfk13oXEAd1QEtk512h2qkxL5DXoyjvgmv2qzwERv/BkgobZ7pEjC/hDU7D5mG
	 JkZOc8nosc1fC7Cw0WKi6nv4v9XO7t+rJ/tDudTJIRhE2PY+vGyTfIEsQzbkTo7/gh
	 3R8qGWa8cd8zykDyv0zOLR4jdFy/J9/iJDVwkah+IXeMgCse+A8mALYrWVLM+klmkn
	 nu7iULv/7b/8LWW4KeIP3P/AODjDV3gkRKFnZk1JUK/fP1bwMOq8bMUsRqLODgNaL+
	 Td5hKc+za3Mqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE3BD10BE8
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172992995362.30319.2547128505122136297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a4eac6413b729347e8d239a86a28d0dd57ed3f6815d2dbccc4b865fb3fc165
Date: Sat, 26 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729929953
