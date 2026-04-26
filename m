Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F94199FB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777183654; cv=none; b=stEdopnpYtSDJ2QRTlK02ZbNXjHBhzQw9qXhWbL8kXmbMbnaudPLWs9sG1bihk+w4cc95Qt+C0YMaNOTMzdzn+Ek/6Z9gRc6X+urDLOb8Pl6C3xbuBjwFcYFJXNC+1QCT/hZUUHBVw60sPCrw7LTDWY8iWzdgg6wXK5I//1X6HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777183654; c=relaxed/simple;
	bh=LzSGHNvbTF1nSigP31+j3rEaC9nRsGXdSDQ8ZEc7Ju8=;
	h=To:Subject:From:Message-Id:Date; b=ix4JWDUhjpWXIikgkfiLgja420AfdhFetyQCNlkLkORkaA+uVg70fFwRw5RXLpzf/hBsYyztMRWyFkPx3uScEn7PZ0FhyDizML+iMXBVaoWXmAInQj8UzbTxAZashrA35qd+4TkkZ4WMLf8A9X3kkQAVAAVDdGpHAtmaGPnYGEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4XaagRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4XaagRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21AFC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777183653;
	bh=LzSGHNvbTF1nSigP31+j3rEaC9nRsGXdSDQ8ZEc7Ju8=;
	h=To:Subject:From:Date:From;
	b=P4XaagRVsjQbCawnKBg3lwY8TQh0cHFQBkansSZWArUZpT/LuT0i1KbOPvCEWkKBY
	 mCAaKuCKh3L88EYeAEwrV/HqYvqMByTqYEQD9J7AT82640olfXYJo2JOfRSh545vav
	 o+0lp3T/IGKeiMBcwJ+x98Y1JQQzPgw+Mx63I/WGdswIbp2FmCBR/8SbommWKbATH1
	 EgwzzaCQD5MfBjBhQvfLlDOwrwKyKDL6AGuTjmu91FZxww5ZhSxltHcFCIUk5tFvsY
	 86EgXU3UZihpUAXaILkpv1ev5GUR9UTZ6Y+3oEtuewxF9Cwx0U4zpwD3c8jKguZBcn
	 LSmSitaxl0fEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0DDFF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718365368.2469.2279787763547869686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e780b80fc52cd7ee032617fbb74cf01bc4777065ff5bb88b309bb55da304e3d
Date: Sun, 26 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777183653
