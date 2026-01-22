Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D8B4418D7
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769080434; cv=none; b=hL+MNao1yshBiHpJTIvJ8IzCGWZjl3Thhvvj5+Pi4SEPlh1dzys8Rx4XmNjwq2OJzz5W4Q2PH2Sk1BxUXWbFgQxwS6x4ZSjBEd9SNHTZlWkDx9tkdR53rn+SAiZJFl36D6qR2e+O+kpv9Z5kHp7Uco2YueK3IfMHLgen6cg6Qkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769080434; c=relaxed/simple;
	bh=T2cO4xIAFQWt6uU3IfQb+a+AzW/CGy+c6kBOwyOAxlc=;
	h=To:Subject:From:Message-Id:Date; b=iV1ziVmyEgYedISgpaWf8fDUw+yiGKVD4wBMjkf8zjt8YpcY1VDt+WjfPRYdySdVTHEJDebVFIII24PKBCEUjpwH+LVnXAv+UIcVzJ8ia/IJbalDPYx9wD+DnxnyNfov7vPLcpnVxpWRR6L6CUthVPfpLH67cGq1K5t7a5yzqrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiE1vw3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiE1vw3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27C7C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769080433;
	bh=T2cO4xIAFQWt6uU3IfQb+a+AzW/CGy+c6kBOwyOAxlc=;
	h=To:Subject:From:Date:From;
	b=EiE1vw3ooQ//BSeYVqLh2hG9FAT1pphNY0eESL96nn0ViEK9h9Bocjqr9O8sr6iNo
	 Mqqx9IWObpe3lDAbC2VOSk1YzZcF0itiUxGAbA0Tl+cTsW+IAWJv5lzVI7+vTOFOd9
	 ImbITQTIUzgNEs3u0UyAYnt23bYHP9UaXbYZOGCvSA6v7+vIXoYr90hbpYzSmv9H4q
	 zrlnWNAITPj7Y87FsomryKRE8Yccxf3BPlTy+hRMo5xSwg9StIlMDWHeF0OmFBPKvu
	 mIt565SgYEoy2WkPpF3t6g8ArnAwu41QHFUXtuU8SrlJEAJixPTeQlLTEN8LJBGc6o
	 A5hHOi8LLSGig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CAEC44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176908043358.2301.1112697324453449099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ee59e904e86c44c2d289d24cd1f56ce999d452caad7db6cd8b1d4a63c7a1fa
Date: Thu, 22 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769080433
