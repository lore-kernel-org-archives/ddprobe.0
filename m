Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2577D19F464
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759951794; cv=none; b=NCMLyXirF71adnokU3r6tblgmIBHYC5zG3nB7JXHOKRNfad4AX8NU+tb8dX3R4NYpxRDDlFONk7VzqYOvuRxJ6s4Z40rrx+uCcfPWK+2UBRTyeUJXsT41woGkv/FI4WIw/mS8v7/Xrai3tralmqISsgQwLboFhItk57LShnDPDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759951794; c=relaxed/simple;
	bh=47v76sx9ZEvepiqBAv+2zjwEM3VrbOJm6fVYFAkPl0s=;
	h=To:Subject:From:Message-Id:Date; b=XfTx81hB/PGUntUwiQaCjH3BNHTUj64jJIvbrifeBGQ6z6IiIumcyp7XSc8XhJpMYOElLmZswYIaj4dGuvO7tTKqb25VX+UzNW8AE+ZTbQJi3xRU+WR6yHcJ+hBrQVuA9FpC1Oa2GOgjKT3KpGLlpE33p3fIoYn3goynTswmO6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4XQw1zV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4XQw1zV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4DDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759951793;
	bh=47v76sx9ZEvepiqBAv+2zjwEM3VrbOJm6fVYFAkPl0s=;
	h=To:Subject:From:Date:From;
	b=H4XQw1zVSUspIjYNnszjMk/PPi7FOLIbVcCPWQw92CpTfz61qziC0fyC0CIpUKKv1
	 krUbRYPAi4/TpdaAA9KG/bm0PLZ55OmEM1qvxRm4ex2CvOYJO4eKBENOVXDksFQPMJ
	 vke6b4dED6JPJ6Y7Msu4R2yDaPDKU3YPZB6GWaxLyHlO070Nuw0E+bNjcGVmP4jeTL
	 Nmh2lF10ms1ozIVgrmS17DsHtPZC3GUckbzqB3NEqFWSMpe0sSzR4OqmZfBRtSNsg+
	 h00jfZCYqMd4mvAP6kF+eMsS9SdBVMwCvp5aERLkuY9vANzBI67E82fe/2CW0BpDfy
	 HiKgEsmVYHGkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A8CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175995179357.13311.15579661081553535696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1300db2e487628e331b5c23b33604cca459b314a9657570bbc22eba7f93be9bb
Date: Wed, 08 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759951793
