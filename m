Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3507F186E32
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727525154; cv=none; b=TWS4cSilmGrOSgPtrAZozwWo5PnH5lWhKtd6H4+huTAT2OGFvedasZaBg3JxHJ16IfG6XRIKBJYdwnXg4uPmmBEQ5yb6bZ8czrv0WJla4dxRyeznOoc9lLiUPFmnLUIAScnh9039A2ZbqCiEw0kv7KVVV+RKxRNhQ7VPomchWvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727525154; c=relaxed/simple;
	bh=50C+pYSs3XlaELWBAattnGpK3tI7yejVh0dmGjI80hE=;
	h=To:Subject:From:Message-Id:Date; b=eoLXEV5gLLareGWYWIhIh198pVCAkJ9lHPrkTLjgksogGxNH67RqhmpF4KsJA6IciifFBLOCunbQvOF0PndcBNVx+VSfkLawBy6VawBQBTd+TEslBb0qsl7NOIu4Y8EdDTojG+PXKO5A3Blzt912xg9kJIC8O3wi/DLWkcuOOP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4btUo+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4btUo+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89A8C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727525153;
	bh=50C+pYSs3XlaELWBAattnGpK3tI7yejVh0dmGjI80hE=;
	h=To:Subject:From:Date:From;
	b=d4btUo+4k18BzEBnkrE/lK6Ic8qWqNRqvoxKS/xE4VCCUfXncToB71AG7GFlBzKId
	 vA7pz0u6hhQSZhc2e1w9PPW4nbOKUluPD8mGbkszWzeCR+9whrKCkibIvWQKFHUQnb
	 J52KPsUjAFueJJNaOx+7YL/Tmt9N0ciuUxJJtGXUqisism0a3Bvurdd+LLNV1jqhOU
	 U0BqNacUxKbteDYeA4AQkmQcr7e8gOa+5l3UP2jnP6v3WEaNxvwPDYIbnRrmdHzc/j
	 5nD6+mLjzEzFOtTdn1jQAggxj3tMz3tEBPhUn1CtBdiab4DrK/qLoVLIY+4fCnftrt
	 fI8yWrPP7TdZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3564CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172752515362.11839.12522645485670526657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b342da922714c9bce217dcf01fd5f20ec9d8094e209c2d0fb57225958f29eeaa
Date: Sat, 28 Sep 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727525153
