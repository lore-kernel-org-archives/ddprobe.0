Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157522857CC
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777362454; cv=none; b=XS1o73RiuG1aO8WjnL7Tc7o7FecKhKhgbtE60NEguQkSXsp3CwyvIf9nkVgvTFmxM5C7ofgr6aOovIzZpbzPURsM6A+R6UJxEZ9AibORxWqPZNeMFxli0Jq5wwns1a5oU9UCI5iSejpWImeF2y5Ll/pBLIRgALtO8HXpJkw8u3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777362454; c=relaxed/simple;
	bh=lzWmR1sVr721FjVl6ckVeKjMB3HWyov8TNGG4pXAcYE=;
	h=To:Subject:From:Message-Id:Date; b=H5F/xUakq/cWVCoPUbB/RZ6y1CUDu3uIbE0KiWEFpPYNJA35JO4Dc7+YDTIPMck9JAV1htHL4X7tm4HOcbRLn7IH3rFUpG6LYppI8Ep3Ul3zYpHAtrHFAsRbTQE9cf3HqDnyONAipKobmWb4NbhjkXWnqubIOU4VJAu0QCG5oR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcNAB6AO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcNAB6AO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC616C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777362453;
	bh=lzWmR1sVr721FjVl6ckVeKjMB3HWyov8TNGG4pXAcYE=;
	h=To:Subject:From:Date:From;
	b=fcNAB6AOs4cMcKMB5AoFoUzVjAkT9oOGPuIovFzCDJfmPmg77MD01oN7hXEI4iwQQ
	 1v//Dz2vfdOiZM+HWL9ET9Sh2ouM/CxlAwMaURN9RLA0j6EGTw7+b/UFHmbOfQjgPp
	 kjihOowmWebGrqjYpPbVVfnzH8ImJqe7l49uXD038iFKEhHm12gkVHWYMhIGHIPRmo
	 bnXCgMbMgEx9kYonFdQklQNU7twHhNXXYrRgQf0km7eCcmSEEp2YcbZHhHy10ojxvl
	 PQiMdS79iBKj7UKYtdOsqNPqhoAefqKNkumtJgxAiGgMOHftj06imNp0AoQ5vLjR9B
	 4MMk4uQObsYag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5B8FF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736245369.22654.13566950406039257421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a8d4a881fc99dc505a38d08f8843da9a30db160ea6c5aed2e0fc2b2ee8274d
Date: Tue, 28 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777362453
