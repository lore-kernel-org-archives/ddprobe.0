Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224CB15B57C
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725711954; cv=none; b=F3DbDGHpUxQiASXGyn2EwMA9Zq2fnxhDAGIjix7WCYYjloKZ/U1GBbuQqQFv88/ff7UIy973O0QPoZDhzM4tjSTkGNKQA0r8NrTBnhtMOL1VogHVJAEqRcAFyM/lXqW/UKFcB0MDTzpBW+i4W1d9lWlFpqW7OR1MUoxJr3HOYe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725711954; c=relaxed/simple;
	bh=fidn2XwSwsItdAgoZ3fbqj/6QrjVRwIw5Zdya6/0DDo=;
	h=To:Subject:From:Message-Id:Date; b=FiWTiOXfQDuCrFyVlfLBNWgTvBJDY4R/RfN5/Xqm0+ZbCTsOS79lVtxLRE3Psfl2iaNfRDBGEv9lasKkciussEF/QxkQpUVcMAzLFqQlQ6rINdY8LvSEfDjR6wJyB1x4tKT3Nt/ypfj1YvoC5d7oAeTC5RPnlTWfYpJsNc+dxiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZIWn4jw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZIWn4jw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58C0C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725711953;
	bh=fidn2XwSwsItdAgoZ3fbqj/6QrjVRwIw5Zdya6/0DDo=;
	h=To:Subject:From:Date:From;
	b=fZIWn4jwgMyVKK1mKXjXMF62FzD63eNh+RTEJtwHs2tncEYkwAwcJXItBhMrmFrQj
	 INe516f8Q9OTDympwwjTAJS+61h0nvl2SvxyyrumoHv8gsAGECE4kJoldd/4C7qM99
	 iV6sC1CyGdrjKfxXFA/lHDYNpHEjICZ6c7tm/g9aCYscnAXLINhiKwOzgWzqVbf0J8
	 gNuNAr3am19/JnehYTvj1WRxVg7zakgvzwd3bmM4x0t1hBO95kqUrn+0L6oRtTEcZK
	 OQSA9HFjBPtY65fX+xdfk3HApbChm8gv+EL8mLHbKPwSLgwJocIiTPI5jbg01+CmJf
	 iPMTzcmmS6VrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961BFE71080
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172571195358.980.2590525718152153457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7412e825e0faac2e1e341364bce069d1e89c7e21f438ace47e2f77db73c444
Date: Sat, 07 Sep 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725711953
