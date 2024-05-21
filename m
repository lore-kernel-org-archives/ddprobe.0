Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D62F148822
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 22:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716330803; cv=none; b=LG2xdKtIGUkPT1pVWr2iq7+FQRILFWcpteoDclyFJeqqS53FpAijJIOm4jXf5DWZDs2vWrvyM195dS0P/mJNJNA2otAXSpbpFFDU4LieV2xE5Fr85yIqkyDqTVc82lZ+6InXNYbD1ynGfw9jlXPbJ4Y18t4MS9uXKwbfa9GSqZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716330803; c=relaxed/simple;
	bh=6S3fT9YQhLZhlCQmdNplejsxg2JUxSCpV93a+eVgZQc=;
	h=To:Subject:From:Message-Id:Date; b=RnEviNrTP7rA0R0/OPVR7UsVo/bTi+WaiTvnaRUMMABgzxEnhDmFJBXnvf5tu6Oha4ZIp7bN/IJqFcIB3N2QY5BWVu2Q9ePzPYWYLMZlTd427Fx0DWcBwJ4qwKs3BeAAODwc43NEdVXQUcbuLSlCOgVnxyPbxUWHXa5Y8Xuw2sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEZXloL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEZXloL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BFAC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 22:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716330802;
	bh=6S3fT9YQhLZhlCQmdNplejsxg2JUxSCpV93a+eVgZQc=;
	h=To:Subject:From:Date:From;
	b=IEZXloL/3oUXIvGyYakEwt03jt76xMDSSYZo3KsU19jsjBU3hOy/oKkZkdytrB8zW
	 npKudCm0XdeuHDxuifw//jMzXn0f4rEBSCb02BdAWWtnPjZxOhf7Hc7MBsm+eLA/4M
	 m6ViWN9s4i8sPAU8X3iOcxvMn8t+3s3oHM/hcHE5gx6yd8AkNNahOgplozBNOclLMp
	 bCQWq/dQOi7oSXpTUrj9Rja1BsetwZffqO2Ut8NRBpxa0PAaQ1P2ME+PvWRD64Cdrn
	 umkTY5JAfvx3lwBB6OPFM3Aw8lB28DahyJ/wP2C1d+8N7rnrNxPaVhJohUnPNvTMS+
	 4zTO+2m4RHWsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE980C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 22:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171633080277.17545.12070523680861553462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43752d2ba083f514bfc00e5432cee14e1541245b7ced49327e211110b6a53a5a
Date: Tue, 21 May 2024 22:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716330802
