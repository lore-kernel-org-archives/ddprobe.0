Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B8719005E
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765250574; cv=none; b=a4UCSPYZkZe/UNVYd/mYCdjs93zmdtcD+TcFfTqg2KSmukazjMq75TdcqbGtXS72tdDOxT7IQ37WmFA6JWVv12XTRXIcQpv3muQlCbFBC1PxeVHfuXW+m2NoOtJALdOuKLnsawz3hEZY3IE5sDeCQT/B9uc10w2mwPsOt6gq9uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765250574; c=relaxed/simple;
	bh=71/9ftN21SnjJ/axC9Unj76SJ188KZ5ZRUpxnORSqZ4=;
	h=To:Subject:From:Message-Id:Date; b=Q2jwteIzfn8pJARAFZrkPCIVFBrWJJwjw7BoTkyxifa6cfd/c8f+8Scp5sKEuk9MOUyavYL2paFb+Yp6DoKdRScLfX1SVcc9MwAs7nwWLFpKy5YhGQXnmmsMyOl9UwvyQj+GPXjyfAiLUw9FvhU90uotYUctayY7vqKgZMzRmYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avkz7GqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avkz7GqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AA2C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765250573;
	bh=71/9ftN21SnjJ/axC9Unj76SJ188KZ5ZRUpxnORSqZ4=;
	h=To:Subject:From:Date:From;
	b=avkz7GqWlMqQ/DZfzhnmG6rPbQa9ckxLnKG+VJFkRNAOhLc61IUI7S77Tb453UPl0
	 WOvKyb8sdRs/21nLvfInqdYzWbmrhYSk2FEB1flBh+SUjNs2UlaASEZu5iEPwflGc7
	 oDt9CA9sx80rlEFTIAPRI/h3g1C8PrOVozeAC7ELtm8tt5skD9XDY62VwDlyaAyH89
	 aHVzVTWaO3T19CSHmoJSu92lJ7nwF/ojf5EUhBIzoN60+yi2flevq7GrKwiACJrqWF
	 K2r/sOXCLz5GK2Dr4aXSI6mjEXdEHiUyQnYay5WFpcyA1pOFzR3TNApDOy9Cf2MMH0
	 SLo5DOa7S2mUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914ABD3B7E2
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176525057358.14475.4170266948979880996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6abd00aea94a5192e3853e2b05ac4a2fd55f5c21756ac5bb84bcec45038e8d
Date: Tue, 09 Dec 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765250573
