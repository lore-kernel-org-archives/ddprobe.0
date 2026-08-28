Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2793A8758
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787959234; cv=none; b=dExoyrplPm4YS8P9zDicwBPc/oVCHigKwUiKhp17smOvNXQFl/exWDgbl9mzukz+zqtg8PlA3LAnMP7dxB/TykkVKr56D1JKzZPQ7+woZ2+MlW1kv8u42gkwvy0RydIhvcVIfBCqrd3YV4uPfYZdzRpbbhGuna0BZjzYIsqQpFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787959234; c=relaxed/simple;
	bh=/5KKEcsJczL/+lNI0LCFohpJ/6njTM9YHgDy9xsyz2E=;
	h=To:Subject:From:Message-Id:Date; b=iBnzPR6ckYCiUfFUZ+FGdhenSB79yXDAtDRUX4ZI4oDoJLeA6UVINHqjlZblts2eXKtPgPdJ7qr042cNyD6znzUHCpwawvgLcPer5NP4KEo7ihNGPqlNRDBvhUzWqdkVsZLt8Ce85m6wfyknHhp6UP4hWvBvIvlnRsxApmhCB5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXXlto/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXXlto/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD86CC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787959233;
	bh=/5KKEcsJczL/+lNI0LCFohpJ/6njTM9YHgDy9xsyz2E=;
	h=To:Subject:From:Date:From;
	b=SXXlto/Y0VGS8OgNCFuAvURJQbXnyT4e6DdcQ7d0hTq1zFNmluwoI8ZyVngvh7hmp
	 n2LhM12NC9NnQFcBwum+jP9Tl/5CRN1keHTntExomXN2ke0p3zJ0xMaaCAzVZqtlF+
	 qOoI0ZhmGyw5Ap3N0Se++f3Y/DeNm0ELdfdBgBv0OVeU9RgfiV4NqaS2K0O+9maOLE
	 3xmeMnf8OLqxjOb9SnUAWi0B8mFDmcHHPDLHZeIfUpHx7REcwg4iT8xVsxlWmZu5vC
	 dyt9gtEl+FouZuztLyVxMUjqzwaPdxkz25bSp2It3VO9ksX89zom8nYpsYi679Az4S
	 w2CwfKwSDmOzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4A3C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795923370.8172.8996538214556442312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549e843058d9994df8a19bead696dae2a6707b432715ce6e893d7615b08fa418
Date: Fri, 28 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787959233
