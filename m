Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DD227701
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743233995; cv=none; b=nr1uY/YQvUtnfHRcF1j/oDdFp32p0OlgpeMFeL8REUJwwCD4g88aJXUq/sF+VkmamfJlKJkLpNOHcsxUBCETX/+bQ3PDPyMNxHsu3KFvz73UWPtKMUxsviObsamdqYpVNa9uE8oezU/quznVMN084jveWd+NofxLMJy8WVX5NPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743233995; c=relaxed/simple;
	bh=m+vURfAbJS1IlQxfEWA88UKfjzg3Kmu/WEdJaEy0lZM=;
	h=To:Subject:From:Message-Id:Date; b=ErV/1lrhCAIQ9jN2owt+hbRhkjjENKsYtaxygp4xCgzURav0DVH1IZ3dK8lBs4ENitqL2veS+huvdMtnalXwKH8OyTN5QUFc1TT16Cv6zEvf9MlpoyKEvAafge0xwuhY7s7MoVMrr/W6dk8wq7kMJ1DYkJuNtlv8VpqpozY4hBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nROlg2Wh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nROlg2Wh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5535C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743233993;
	bh=m+vURfAbJS1IlQxfEWA88UKfjzg3Kmu/WEdJaEy0lZM=;
	h=To:Subject:From:Date:From;
	b=nROlg2Wh2fqTX2Orxez/3CAQP335eTakSsdAoGx7QSLheFs1+twvIewfclsCotOm1
	 JaRVFfp9wTSFMVSLYZwsSkT3Wlo+pVKBcpg34tRPDPNgoiAvUYhSjpo7wknlBidnMS
	 76X99Br0tscW6YfVspXCpyw7HlNq1HjjBmNrO8yUPlcSq+PYI0D0Ianoc2+VKXZDfS
	 L76hjJ2A0Nvu0Httga3995SncGdkE7NymwAY9Yrt7FJ35Zqh+S/SUZquoQM8UpkZLo
	 Ke9OHnCMVRWNXMON2ITkf9hseyB7cu0YUtDGgLfq3k9LXapkmizdH0b6eKiHx3Huec
	 ACZCYATTft0RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94057C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174323399358.28768.4393311308060710694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdca45cd74aa2666c49d69730f9ba1a0bf3e73b8c54fd2bf73f2b41f7a4034f0
Date: Sat, 29 Mar 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743233993
