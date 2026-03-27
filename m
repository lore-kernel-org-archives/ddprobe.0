Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4F82D0620
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774649094; cv=none; b=amQE1puVsM12EcPVLxjxgNIyUKzqC0xWFJIpH2pwQ5NQnO9bVXmYdBzUt8T14gj0PZ9oeAzgbjBhYdjEEBL2/4D2UM+8tnL64Yia+SUXTVUCg3cFS+k7OPDnucPqydbhKFKF1qhkF0Sw3GXHBggSLdZUQ3zpw6fxbOaoEA10S80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774649094; c=relaxed/simple;
	bh=MkZPYtCxpykCs17O+NhjWMeUGrEd4FFx9ngA0NMo67Y=;
	h=To:Subject:From:Message-Id:Date; b=r3aYmT6jJhgwroA9Cm492eY8BU+mRc0wgQF6504rlJVBMxd9cxBZ+apJfLdgsrhcgJ9lEp8loIJd6FxZxkubzQWbTJIErXycuBe4CxlpVeXBMTFG1Q7Uxcz+cgUVqbGS5ECEwcFnBZYKBA+4Pnq2R3Ob4JHG01bRkG47d7ngCbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tR/Pkgkg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tR/Pkgkg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB4CC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774649093;
	bh=MkZPYtCxpykCs17O+NhjWMeUGrEd4FFx9ngA0NMo67Y=;
	h=To:Subject:From:Date:From;
	b=tR/PkgkgRSszxuh4XIJ9p7QEsh/wFKFBaINCfkzQK+M7U0JbPQapI5HJR7mafFTMT
	 G1IiG5V988IqOt0MnWL2/faClpg/F4lpZ0pKQrsnDjwoo6zcYux8mm116Z2qDA2Wno
	 VWzD1i7/sY4UnwB5Qf44wQsOMb3cyZECZSKjI9V6Xcm6pBIQmUa1aIsSpP8jQxJ/29
	 OAn5mFrzfl4KelTH5odDEBJwabok/ZPQqR/WgLzwSSqAS+EBr011GkNCgb0hFGR252
	 //mRQX7vAb7YK8cRflgFwVcHLvbuJr7S8UQACfE/mT3IQ9IjKtlbDtCjSoknhMHu2Z
	 HCMueqjPPWryg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A43810F2865
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464909360.11014.6958487067881550877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086e7c872f062e5c046433eea3e03d3a3b874742561f874be465155f808a5756
Date: Fri, 27 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774649093
