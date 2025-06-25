Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A4315624D
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750844994; cv=none; b=OmbfExArqa809sf40BpoYgaGvg5mSUsgwiGy6DjGa2iy+bvjboGfIgw17kjTwXxsqy49Hx+PnB4272h6G/lUsD/qUkoIiknmtpOCD4RVS68Q6zhjrgQbMMrtxIHx3cc6s7eGTQuWJZFKypUU97NIKEMErCjSOFbup07ssYCyWek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750844994; c=relaxed/simple;
	bh=7zKp+MhpC9+XyeOp7AauEnMuAnzLF3n18rAuNuvyxo8=;
	h=To:Subject:From:Message-Id:Date; b=U1yiujd69IbgkyXEe+bKO1h+rowM8jBrmMNha7lGjQ5R/gVhQVW74zRxWpESOPPckEenZ8SwkxLiLF2gf8YSy40cIWOGgyBT3k75xZeDzIcqIp8NnlOaO8wEnPjNJVHA9zFUzhKFnzevpsWXWp+V0AEmxq11h5n0gvBTGsonL54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1Ppigdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1Ppigdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4890C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750844993;
	bh=7zKp+MhpC9+XyeOp7AauEnMuAnzLF3n18rAuNuvyxo8=;
	h=To:Subject:From:Date:From;
	b=E1PpigdpUlSCzJkSQlY4x3NbC/b8rfIxcZIDSFJ5zMJwxfpcaIX6mFLD1k2ndKD/d
	 U6myJgcR2ABaVeBdVKGZoLxqZwBMa2xFmVOHdElCVkiW72A1j9oTzTmMhnqBcMGGzB
	 6Sb9EUw6KV78/oMijiP2O8ZfnPP6RNeWZtJVg/AMWj02HE6E66PCLGgUyTYT0oWQcQ
	 3+Oeb1hfzRtP5xcjZnwR/cBayTibmL8ssyx9EXiOCvRXygqho2FruFUbNz9m50XxkJ
	 XlgJO6TLFHVO73TC/YQ5dTIAHvNbfrm6R2ePJKrP7uay9dIEKa27nDN+GbpLkCjcmv
	 BBFLw0FAbooPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F1EC7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084499358.10669.15028293733549641615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78e4db95cfad4b1214548cbefc143ffbf75f6dd2c6a405306d49c54982c13eec
Date: Wed, 25 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750844993
