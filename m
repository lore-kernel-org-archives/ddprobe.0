Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E61720A5C4
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763219994; cv=none; b=E7jtQZdPLmL3pVWps0hxaKfmqJf0xfr+xvSXlNdFEQsBxs0pSHxo9APo2YNVISCIRsnfE+Gt07SbH1pnNBwtI9RY4qTA/USnZWSTC6Bx5P9l435vj1oJEhHkzj2HBzXgxCUNcmGEb46jKwkE1/3MgL/v1VyK/coYJCKRM1aUep4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763219994; c=relaxed/simple;
	bh=SASWmhefyPVM6HRQzeGuHwB69xgi1NPQjaqSM6xyzIg=;
	h=To:Subject:From:Message-Id:Date; b=prww3pEzCgFqwLxFhjss2yK4gqVuaP5cpg1hbNXtzppYlGm3LJWVB+tgl21at1YoawbeKpNZT3TkyqwiDdzbiVMGpLgctSVyjgwbY8P1cJjKPe7/9IjFxto72v3v4a2RHwWxnJSxQ+W2mVT8WX4QLeoakjD6EEWhrlRhwbh32go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZSS/4Lh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZSS/4Lh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D83C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763219993;
	bh=SASWmhefyPVM6HRQzeGuHwB69xgi1NPQjaqSM6xyzIg=;
	h=To:Subject:From:Date:From;
	b=UZSS/4LhMy0j5GX4Zt5y1+yWW9gjKYn4oi/wFX0LEtCReN1Ujta/Yv+DPQsD3pk7d
	 r7bi4l3y9xZ0SzUg8TpgBHNmWVw6ympzVr723sYDXrU95HT1jjEDrOO5ybONFPz5+l
	 JJRAG/xtXawv8gksoJcEaF3aI7G3ZhdQJsWQgBN6sjVApYD4zrLijIWnCFw8y2MWrx
	 mgds9+T/M6aNvfpLN6cTnBtGe5xSO/8lmLKPQwhYFp/oGBzY3QtA0ksU6BrT7w/dbI
	 jigd0dN6sim31ueI3wZmOTWl7SiqO62ykzuvKThAqmkNrzaBixsmzAQcWP4pWhoOee
	 iwWmb7O8MeTxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDD2CEB2DA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321999359.13724.10972889783817622088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c45653a9e805d8cde2b54e6d679708d277dc7c89faf60877a8ba7ebce7412d
Date: Sat, 15 Nov 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763219993
