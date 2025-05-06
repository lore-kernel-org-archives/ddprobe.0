Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304584A1D
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746515995; cv=none; b=YJIAqVLmEj37hrLCCW7FX3T32AKz63vocDwgaI/66zX09aVdUTpyjWoJyQgyxW3Br7lNwoNOJjyENF7aWckCEw2p9d2qLdHNKRsMHeKZ+mJEOKFoGPhphLUZ6C7N9rSc2u0wZJy4oMY+SMst7loebqtBvmqrqbjzNN2bcgFNFb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746515995; c=relaxed/simple;
	bh=4CUbQPBl1AiFtCKFtfQGtjNtpskYd8VLOWtHbThegpw=;
	h=To:Subject:From:Message-Id:Date; b=e6u7oFstewOROQzB+Gv+YIuju1gbuGZ3hujnvDhv9eGUS66N4s3NKkQudx0/GAZDYQw5fvFTFkGAQXd+zt2SYCBsmchd43nMS4OOttuaGbDMCAcwbclssqwYl5Wivpms/h6flvrAJPZWFHacj2lJD+uT2pfYtBs6zlZzFUXXjFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbAvx0kx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbAvx0kx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF21C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746515993;
	bh=4CUbQPBl1AiFtCKFtfQGtjNtpskYd8VLOWtHbThegpw=;
	h=To:Subject:From:Date:From;
	b=SbAvx0kxt6a48iHGWEOWhsoIee9fvJvEKwtCP0AAhagsKX8Z6sPrkeldXLSrWGr12
	 1hobRQvYcBCMMzENpCF09ouos0IsKhnhi47n1I4Ukn6r73WxUeVbPNTS6NmEGVt6Se
	 JLs+Dwfjb/e/40TIAd6bnRZQfifbtZZYOZuGhWkcyIwJ2XhICTBOH2P5r2cGtHc9sX
	 XwJSjiSHXsJt/np6xY+Enftf8DBugBXflvHayIUX0wGnNn7U2ibVJGgK5a0WlPawqG
	 ayu0pZ64BOWExn/uYhAKnlWmMk2Um70toZtze5ztzgJ/drpZUrTDEHfnPc5Nzmbcc2
	 PiSf8u3TVc+FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E691C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174651599357.9437.9595709450671791561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c35cbe9ccf5ce80f2e72a40a3463e020f43ff09ef9a00a47758893080b26fdf
Date: Tue, 06 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746515993
