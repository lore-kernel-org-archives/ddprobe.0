Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFCE288531
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753166994; cv=none; b=TtZ7zPv1BDXfcKxReOVHb6YRqgrZbRlqrLCx1H0ZCCiLWeAUi2roH29ml8sTb7x3Aw5QKXLDg1cBEpMAeuvL3PTS7C+nYiz/Zi0igiNq3fJt9fWEqyHI7KrgpDuDdL9SWDL2YfnOIc3AmUKdTBHQcJk8bmuU2I6RjPlI0ceRZ0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753166994; c=relaxed/simple;
	bh=zucluFvl19gmWdim39xsUI6KD/yHdapWjmsexneyMdM=;
	h=To:Subject:From:Message-Id:Date; b=ExQyGAAqKJe9w/adUPcCCHYa0j6tQ9f2XleshXAEYqBxMIyTG3dFWS8hNoGleaKfjIjw5IJhtxGQogK7AkorRgq3dKcggNyF4u0lS5d+2iFYOk1gAOfPd3XuwKBL0HfkwcjpPK1M/DrMEpDxf+4CfnpOrPv1MrxX7yyAdS1MtLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lip1YkCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lip1YkCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3322C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753166993;
	bh=zucluFvl19gmWdim39xsUI6KD/yHdapWjmsexneyMdM=;
	h=To:Subject:From:Date:From;
	b=Lip1YkCb1TjY3iGp27chPgi8LihtV7Sci45NHiQHl1nrZXkwAamMiyzH2XF6a8QP3
	 t+boYNs6r+Z1uIyVX2XrSxFbdVach9+ZnZKsO6kdwJJMJyKN7o7+7qFSeyStnmdZkr
	 FOmHnoT+ywiZdkFUAELV2GpjOIpvoE5s4eJsMbTIOem3Cu3bFYQ1+5WF1CWagiNF54
	 1cH9L6lL9vqpmfYlSbRT5EOjkgKdfGt5105tNB33dRTTjbqPyVE1e0bkCtDsprOnx0
	 csxq9x61GK5Y6OzEsrv3/fKtMATPVTACznciuf88ZlsfvzIl4Ip2atke/hAExggfpN
	 DLNJZecXBhM8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFCFC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316699358.12518.11261361865717328186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf743ca572a47c51d2961eb0125f767f17c02226a43399651f67d9ad6323a3a
Date: Tue, 22 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753166993
