Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CA2433CA
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734617154; cv=none; b=WxuUlkK+drVCuLaRuUt/CIoYCbWc0lFRMwrtwJKWRL0dbd+lyCnpl9QgDkLGOYQoc4SVPxIfNnJn1GwMImRMELWlwrMMYbmDcspSJG8l3i+WKj+nHq2meaj3ul9a0AbpCOBUrqZhAsxXvxPIXH7/7PamqJ4tCcBxiXEj8B9kRLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734617154; c=relaxed/simple;
	bh=EzNRlUFxR+BbOc4FDueUP6PL1wD3ShC4hZM4CzvjJjQ=;
	h=To:Subject:From:Message-Id:Date; b=VaMJ+iUE06em5Az9dnZXLRwtSisTLHQwpfkiSd7J/psH0K6skyBGL42vFmxpArqYdaLb5GNbOqZBpIXGIhLueu20DZBwTta+kH8/hEwjIPBQ/0Oqnf0CM8WJWCpSBWiyLJzrqfEo7k6VGgfG+WapbsxGwdvc9GtpljaaD33/uKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4wTlcOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4wTlcOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C042FC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734617153;
	bh=EzNRlUFxR+BbOc4FDueUP6PL1wD3ShC4hZM4CzvjJjQ=;
	h=To:Subject:From:Date:From;
	b=P4wTlcOV4B10HwvWiwnF3Pj/1qeTxB5UbzdxbG4yyp8Br4PZ0F8yiGXWwOJ0Hd64U
	 ue2SiGTc3EBl5wsruTT7L2Kyz9vYLAsFNgcZsIbkH4P7eHYAMhID0WmMG0+BZVkv3i
	 /WMxCApwDXyoFZIFhtLp86+HWEYgFTDhnpc/r68Z2N0aRhLDr/7NypV1hUY5hHS0LE
	 Z6jWW6pXC/axU7ZSbytbq1P1prhqmhFoMiL0cB6uPsP1LL6i4Fmn5y+/Oe3RcqiyVR
	 Nq4P+zeU3kRjFV6vO6t1Tt7YLUjqSgXMILFqqCwhGoPxqwGiAm3sCqYutsmJUHnXA5
	 mJW57JOuPAe3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D12DE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173461715362.13572.6130803165937547782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f21710c4e9416e275260d656742eddf8366763fb643fe046aefbec6bfbe587aa
Date: Thu, 19 Dec 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734617153
