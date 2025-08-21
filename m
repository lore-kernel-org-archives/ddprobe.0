Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 879C223F41F
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755749395; cv=none; b=Bzu15WqQZdqle3OuIAZN7YZngamNwNKhBhRw1QBwAup+euBkaBaArkYLCbxUiJIFDDsJaP25dNXN6e/1FFPPbHb5FteLf/w/H3ejGCUF19FlcaToSxZu1beFscJUt9PkiSCu4wG7plp8ZyCmApp+qxV69oNeDrPCOqhEa5CmcBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755749395; c=relaxed/simple;
	bh=VjawrmsyrlXTrBJEo6zZzjuLFUPnmIg8u8f47khiJMk=;
	h=To:Subject:From:Message-Id:Date; b=C5PXN+xu4fCQDeKkyr4A92pjnzNodPXdqYQDoSxXkQwje3xKBfL/CcJiimlwWSoJNDYmIegsDTxprkoROqTEpgKOSH/kq1ifSGFv3k22WReSByO7cB0yQq2zdxdYQCXdL1r9FypyBgr05Hnu23yzlqvcyj5LG4pAdq9l7MLSWoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkOKFU0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkOKFU0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BBDC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755749393;
	bh=VjawrmsyrlXTrBJEo6zZzjuLFUPnmIg8u8f47khiJMk=;
	h=To:Subject:From:Date:From;
	b=lkOKFU0Xvrf8MtqYoYcTwRKel1TeThrtcsCDI+QJQo94uqVZHGLX/pu4gFH3o77Qw
	 fOOwRkhiTIzPS+YOR2XF3KTdMMMlbFEaAuihokvhgqqGQko5VV5KFuJKHRghKxxouT
	 ej84077xZaWJVDra2KHUaDrS9S6J4A5z6eUNgPYUKBRgKLdUVg+vpT/qN8+uOwdkd8
	 0TeAmo+CE6i3vgh6XCdVO58FcxVNLp+a8jB5a0vg3tI4tPP7SIC7Ub5lPmhlL6W0i1
	 mdTAoMe6ue8emBspa38iUG9UChE/387aBwG+kOf6Zt2oCetSVruUnbTEsKAlGTZ2dN
	 4niQepNQCu7Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B2CCA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574939357.1441.4395741526317879249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e0576d02163ef8fbe7206161226427519b53c0d9f13a5927bdef9245dc16a81
Date: Thu, 21 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755749393
