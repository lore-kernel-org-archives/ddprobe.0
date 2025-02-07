Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE4E2417CA
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 04:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738901754; cv=none; b=Ssot0ZB2+e3oguE1s6XFrUnaL1TXfxeLB9R+JpQDY3gSwUAbIJHkT2Ium327nOruzMzQ7NRDrZUX2rPvQ2KJK4V24dIikncs0N2jBEC4Ht+A2/kxZFJ01fwDtUMyBGI+ImzVERYBYDunsNvH4//jebBMqjaNHRMseFDdUsqM/hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738901754; c=relaxed/simple;
	bh=slin6cj8WjLtExrlcKE4PmsiNgiPfaXEdsDmLDksQ1A=;
	h=To:Subject:From:Message-Id:Date; b=X9GFQop9+qJlcMhozCMA8xltBYgXieGnuGyh6yKWZFnLsk+almLNTTzrbK4/x4PHz81xQZuhxlbdgE87PkL58ZPB66n4dQ1Hz4f2H+rUsiuc8ugsbpErPOGIcV+L+tM38rKGxXE6m3is+ec5+RefSsRwlg2pw2WvnzQ+BNLCSCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=desr7EuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="desr7EuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D27C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738901753;
	bh=slin6cj8WjLtExrlcKE4PmsiNgiPfaXEdsDmLDksQ1A=;
	h=To:Subject:From:Date:From;
	b=desr7EuO7uONdqL2JEHHyPg2H4FqoSDR6u4BTPfc69f76VYAZWiXnQR2+1zQGOeJe
	 rdH90asjH5FT5VB9VgCKwHP7zSOrKfPvNTs0NJ7v+tVIkeBm6a/s0Li/YM5nzI5t7s
	 9vdR6ev35PL5n3W0ZJVBoKicotIlWGO7Og0RL9KMH2e/vmTCnl6mFgQsmtwZWzFy0b
	 +T9dH/9B53SSp4xlgtT4HNuVOWJdDk/S/LTCvFG5jPgzj8QAlhlnjMSap7xxwJHHrG
	 fybqXtK3vRG7Wg80HI3RaOs2eGeFj7culxXFpgs2c5VmxxhgL/ddeuZqzb2dSeElQQ
	 4I2o0X1sKwAqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FDCC02192
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173890175371.22162.12745931489949675935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d937271e736c2a42afa04012b26077d1bbeb6c22ccc147545c6e0be6febaaa95
Date: Fri, 07 Feb 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738901753
