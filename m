Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0AB1804A
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759331394; cv=none; b=oaG+X6taMN7yA14GORatIaTU3ItnsxSwQKCJSnahoIm3tN3VaLF/dK4UU+wrPP9MnBjUXT3LXaQZaqFxLGlaHxptBY3K8Hb7Qe5bbh84MXVpRmREb7D1zZDuiCKwRWk4jyFQ6HpakWZteBTt/vAU6XcvcJxlYueU7VudnNDoYC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759331394; c=relaxed/simple;
	bh=eIWkFObnUTL8QO87FtwvzYoV5r7VhEEz0Cy3dOSLzps=;
	h=To:Subject:From:Message-Id:Date; b=nDYzyqVgMNnkLDODDwktPzpf0Aiuo3xKSL+4kxcSTVuak+goF8GxgD3un7kZvyRm6a0F2WsOiV0P7Z7SoOMGXf78X2gPcGnwH68HeQW+CyEtqNGsVNl4yxFw3/bsANDdtaoVvey5gOuluA65aqsEdgvctO+/fGgPWVyjeouwSXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXY4oYto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXY4oYto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDB5C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759331393;
	bh=eIWkFObnUTL8QO87FtwvzYoV5r7VhEEz0Cy3dOSLzps=;
	h=To:Subject:From:Date:From;
	b=dXY4oYtoLJtl0v463ZDdN54YzGv6awzIq3uJzo9F5UJYK0g6KEfe0lB/aQHgSMwrx
	 VWrFvTfseAnUGqTVv9AwfCO1Vjtx+WRqLE1i35NDaDXbuPVOF1ZVFdfturNWLOwuWn
	 vaXJncG9UgoxaRq83bD3UqwMhJAjYHD2Vje7tjbRp8D+BoMohpHn4IJwanaWwW0lZb
	 L+MF+eFMc+wx2+07trTBdh9T1+dKU+0YxBH7cI+Sji4zWYIxS+vbrTBTY5bkJ1HAOe
	 JXu45SbiI6DLDOYj/eB0B+k9VVyPDEnH5G5R6ZUTsBdajJ8NvJ7ImPqUK8L0EPan1X
	 EmDnztxFtrglA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B69CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933139361.17826.2281575928479092285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244cf3afaa3343cd13b15ecbf8e5d09748f2c1dc02300b04ef67ab736e9906b4
Date: Wed, 01 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759331393
