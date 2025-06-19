Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3517030E83E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750361994; cv=none; b=JMRb5oJhputjEVXN2BWtEYjvztjk3l63tvAQldxzWpeHVxbPVBc82bac3mNJrNM/Fyxbt7FROBPaiTJ2yc5DMNBY+eDtI+ORmOkmHFCmDaATLPNp2Xxzn54Sfsgo+LrpaeKMDnI9VUGjxQ/8JlqpsREtqMXvHAaUo6slqQPqUlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750361994; c=relaxed/simple;
	bh=ICNcriWA1vBgkCIv2UInlTO7t9zOG3FsqRBfzVmf2WY=;
	h=To:Subject:From:Message-Id:Date; b=gd7dTC3UdJFAEOqQKOXNzOSGnVnKEvZ9/T8j8EG+3GM8J0KlMRVfL1QfMD+aGL27Noy8Q+zy7LrxK+vtryjShbQjeQ+Cn8E8bl3bjoDW10+pD+hOx53SxLAF2LkSm1mlNTD8feHJZbRwSU6sSrtwZN4rPCFEdJXALxIFfUwPgyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJGYwTpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJGYwTpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64E7C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750361993;
	bh=ICNcriWA1vBgkCIv2UInlTO7t9zOG3FsqRBfzVmf2WY=;
	h=To:Subject:From:Date:From;
	b=KJGYwTpKgjedFmsb1V1YZ0lKljj4D28ejcl87ePVYZu/QnfDLEjH8AdGbpUJ82eH0
	 gPdz5q0aQ4gZ5DGP+Cw+P+nNqDMxdGhqX1u+YVpa9p+JxJ5vqOWOhMbe72rW3WLjg4
	 pH8iCQ3gCcGZeSu+VpT9Gz7AqYOXLLDMngJQ55sxFlSD/5djfsu4x2cuGIKg0jqrsU
	 2PhG0SdS2lwTHJ7GKDzCDvLTXgZSZVr/VWQScpHH8u2RJ63eqZ5qUf1RRXy28COM7F
	 qZ/7+xw2gPmVLduYQfU9mlz6dcjkrVYvDvq25Z2UhvOUEsM3totiY8c7pKSiagHJ5h
	 GHxgGfFSRp2mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910B7C7115D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036199358.19080.17297649099783653345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2a7931f69583cb99d494eeb1a11144309b5891d927af9635a59eaef87e1691c
Date: Thu, 19 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750361993
