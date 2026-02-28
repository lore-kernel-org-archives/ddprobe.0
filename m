Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21124368961
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772261694; cv=none; b=adRi6nS7dJyyxxtxUN3FY0nazfyjEWRkJpnb5uPI0uzRlk5M1jhxK7qQ5WExy1vDjufZ90PnMZAJRE1mJPCGQaV2LESm8auPVjFmHwG7O0gtP+QEU6IFpEKgUXmYVMkbwqjXcirV3bdWOm3EM92qil2NRpM6vr7VMAwFVsMaWxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772261694; c=relaxed/simple;
	bh=2ZlDy3+0h7z/A91RCr174kF70ZsQoQ4nFBF1zeOdaq0=;
	h=To:Subject:From:Message-Id:Date; b=J7yzsTT8JKFzu5nucJP0kyWgac+0IKfmJGW7Z5j3pwMsOQaWjdU59vbUbMiG5AFfSCEPvDTUTuxAfNtd54iJUIrjyRdzW45mZGAumG7UOW5JW7/gyUpP+9KzK1LQE2ic8suoi8D10cuHWasDY9aZRVFUdMZAkDyrWtk3FbujqoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsqyahVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsqyahVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0F3C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772261693;
	bh=2ZlDy3+0h7z/A91RCr174kF70ZsQoQ4nFBF1zeOdaq0=;
	h=To:Subject:From:Date:From;
	b=JsqyahVJNJO1JIeqNIlCxM8W5mDHnoUf8RrnT1XvgAPjhoJpfB510spBqyLo7NlEo
	 ULEFM3KiLXKgWZlH3/J9atOwONBAzGDrtNAncGnLM4F6oTaIgPXVui47Q1ufyzidRw
	 KT7b/3u+mr3sHqhbmG+uvH6ofYUPWS3tGLavkAnh2P8NOMsMTQHRV7/tFEx/rzv0DG
	 pPMKlGoRLqfmVp+RzGMiDu8PY2aRXCB/eUZFQeryNZqy7r9uTslZjlmbUE0JuDBVyN
	 VDIxDyPE/gG9xZOp3zIk/9Rm8YQiI6b5HC5yfGhaJ64fhn6Jnknp2ZpfZOyMtyX+bu
	 WYbyu4vutnKDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A68FEE4C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177226169358.21618.18120434480610348160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79933991dea2be01c1b69c6b8da74c8507a655d800dbf2cdbf091654cca7a248
Date: Sat, 28 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772261693
