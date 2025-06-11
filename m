Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4FB18787A
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749667794; cv=none; b=NyO9d0MBWLn3Ui4AgnRVOOt0Z6CFHrknEkzpgL19xx3Shg3Qybq9vgNB5eb5s04HyizDVNvaqfS4OCTrHTnWM+XgSahJsdjrMGTkqcahNiEOtzCWqtUCOD6uLloslUubleg1lAlkqgzV5zbRUEqlfvaM7jJZQqBLcDNshlQ5vFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749667794; c=relaxed/simple;
	bh=QqXW3QvCQhTDhH1TSli4me0UYcWb5V3CNZHUj5+IEBA=;
	h=To:Subject:From:Message-Id:Date; b=Z551Lwwyh+b1cOj+aML9WHWASwB8JpIhD8GL5j2pPTkcg4oUOT99vjKh0cpH/trI6Aok0s7GedHAL8G1R1egkbgwM4PSvCxryZPPnQbsdHdXQF2QKv4lPAUvnz6YMhZppLTqsH2/h3VVrCJ3ZQuPSCnSOYj0qXa5qWi23DBlxZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHRXWzj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHRXWzj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E489C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749667793;
	bh=QqXW3QvCQhTDhH1TSli4me0UYcWb5V3CNZHUj5+IEBA=;
	h=To:Subject:From:Date:From;
	b=OHRXWzj83WWjGy2AntAus71NPN5co+oPjsAwKRaWV9TmTkGqDJcB01tUrtw770+oc
	 FQf4EVG4uXIBfdqj2YF6iUjYYp7soOVF9kd1557KnaeTBD9vtk6mSjr0jmQxr/ZNvy
	 SLVeoZA5yDM/vegxOfr3llQWEDcOD2zystMYFBV4JTAUvBIvur1UVTlgK/6fBLHiPm
	 WenVwXB7AtKJnjr4QPdNcXR/20IerRRhiHlGLh7rmfYvgKLQ2i2V8Y8Sg4RfrTOdDx
	 Oh0pSax7Ai14RdQbWGLDbutjaMjDMnlME6fPbRGQtnnjAnDHZljjhKxT4S41uxsMcG
	 22ClXdVngPaKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB99C71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174966779358.3712.16674808033180971179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53fbc70f3adc11409db1cf3448df075989bf6ced937b409cc0baec5a54d45ed7
Date: Wed, 11 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749667793
