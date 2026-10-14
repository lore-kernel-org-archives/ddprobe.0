Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721632D7380
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791965434; cv=none; b=i9PAwixoBMxyBfYol38s34ru0vxgjGH2LXvfkU6X5J0v82v66Ciz6MTrVjSnMrbzEoRgGSszm+Pciee/AYP1fXDfFZgtvUo/yz8gNA8lqSwrG8gtyOpovrxpZezfrPncTdo+noLA+ScYdEAH6qNVVONfqhIVFic7FTRMu6vdlPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791965434; c=relaxed/simple;
	bh=Xqr1ACBsYTHnXE2XV6YiA0oixOI6pHBCsGkXaSJMWXw=;
	h=To:Subject:From:Message-Id:Date; b=gE1ozGVETLCVBQppH+On9Ee+8GD4CIh2XPGcAiWOlVPQT8UKEVFrCJYbn4BZ4RLTvqiQaXKG4LFD5Fh0rttYR3S2vpJ6HJXMZG2UgVYmCo5IPbCw/5xnvjXEGRBySHMaafGsxxeAS+IMESougDnTJqOn6Ke70cnL40P6e3ag6qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqTeWKoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqTeWKoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEB5C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791965433;
	bh=Xqr1ACBsYTHnXE2XV6YiA0oixOI6pHBCsGkXaSJMWXw=;
	h=To:Subject:From:Date:From;
	b=rqTeWKoV1C+jEIl16OPn3wAdHXMksNjyhp7OyJsxIZJ550hTV+JOOSjepPY9MkyKI
	 hPB23oGFEPhG0sblxTcolBs+gjnAMugzV4EVHDXUZJHvRDFfsFyODJNglUiMtNMrsA
	 RqseLNjafl60aFzWrO3aCwjL+yx8YFnajdswFZVPRieFAPupPN6ThBfFXFEMQSY+CQ
	 QWpvoqVK5rfcpW/vCdhw6nwuCbAF+GaY3BJUP5MiCo/dNvO6lRxU10yT4+4lLQJ2xy
	 Af3e6UuVcFctfbJKVpdmaqCyHDpbQVIJVrInqR6u5nFRLlB3POln/nLdxF7gB4xxWF
	 SeZsOqTZTJq7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5F9CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179196543368.30964.5628375851756346362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f4e768df447444eccaac1e21eba34465d84cf099f365816a7f4a8b8347212bb
Date: Wed, 14 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791965433
