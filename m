Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5410770817
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737650754; cv=none; b=MNj6EKjOiSFhUNJlCGOlyJJq1x28mjRMJI2X5qVoUBxR566KZ7FoxZ1i8HocEXXkVJCVR3U4qiz1Xy13kudlwGEVBccg6UzLmIr1JKIDm0C+Bv0pvIFOf0UmhBoHS+zv88wvnME3ep1O+FyR3q/S5BDBj6PpEH8en8Bjp9Qk6Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737650754; c=relaxed/simple;
	bh=CML06JKX+fSmhdLrwJnF3czJljcYQ2lATc0dniKP7ZM=;
	h=To:Subject:From:Message-Id:Date; b=d6m2L0o/5EsrG344fWky177WIG33pYwqhYMCz3RLStNctS3Gk1Juo1MAU6jwzMe1pykLtSaCEcf1xYylZoEDoGsh2nYnPylcd4MtzKmi0AseO02rnBgCBSjrohRfOWF7+JsNoaJNqSRub7OUyhQyONiqL8j2F/WZCvrXQfUPHcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdhVHMar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdhVHMar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D5AC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737650753;
	bh=CML06JKX+fSmhdLrwJnF3czJljcYQ2lATc0dniKP7ZM=;
	h=To:Subject:From:Date:From;
	b=LdhVHMarR5T8YHAbO0KN0HUo4nd5V84DnsHLG8UD/mWgHNm8A/GbNa16yleGel3Wy
	 qi/3vZ2DnWCD1DwF7pyLDizzJEW+jrXBbMjR/dWdHXMSlgJB0kHCb/gSyzzX0eRb0g
	 tJMmFSdXi19ELZGeWbCzj5YqzfqYttZcjHV2faIQ/ZCRqXuoVZ6acc/PctY9UQrrfq
	 IA4jsbvn1rZxCIVyQyEOSVUK0WM5eJYkXiwio6JX14bILowk1JMHA9EJ8s8HNwWe8z
	 TFz77/GQ0SlZaPS40ptM05XRo4+usUFGHfbbt+IrKXVTeDc3JTQkslw8npBl5AHpXT
	 8eRsdhTgZvvcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1065C0218B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173765075365.31031.10502204198975216468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d6300bc3ab6b6a830bb764660aa4562be9f67ff25d6bef761ed1d9578a70c3
Date: Thu, 23 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737650753
