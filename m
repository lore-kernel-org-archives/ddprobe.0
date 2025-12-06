Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C923831C595
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764980573; cv=none; b=df8Y6ZYszkBX2SVwp5/W6yvqmZhmTeNx+x3loQWSEN2m9o+Zh8OYnSHlxblXoKppxosrwQYS4pPDrGFbf++pf9enR96zcAhrsd1pcpPfUuoeLSuwMK0xzNNAPKg33jm/AjeCqr4i0r6E0LlXv6B72yuN6io9KBUh5JawV8sOSD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764980573; c=relaxed/simple;
	bh=Nzti2WhxuG/f/4Sx8WQiS64dyRbetmlOxj6yl4oP3Mk=;
	h=To:Subject:From:Message-Id:Date; b=tuj+leQiWGhCG0LHMT90qjEcqQAa+MzBHTA92FC4PytOLVcaCHRVQ6OvfowrF5OYw6IQD+jbGoKdkE0xPU0UWOi2Sk1jUADf/ULG12O5zvZC36gOjHR4JdGn55I5fDfYbpBMzfLsI9ZO+a0T7E2rY/DggyL83/5DeOPatpV5IxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgvpMF4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgvpMF4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A981CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764980573;
	bh=Nzti2WhxuG/f/4Sx8WQiS64dyRbetmlOxj6yl4oP3Mk=;
	h=To:Subject:From:Date:From;
	b=NgvpMF4orPs5qnJIG0IhSzplkitbMR22PDelPwywf0iT+wbNj8m/fmeA6LYKPwCBv
	 p++7GFy3b2ZO9zOB7L4K871PVaNuzgbuRKmYkh+1VckXsoOjrnsRcG/UhLHbUj/ZV+
	 11uz5unzL1FGxXyeb7ITbWDS8hrMPtGhPYEtnhL7Vtr1LSMlaNBtYAStiErrtrQMGl
	 pgw2TwQ1qA54iSuTGFvj59YErRme2FWfdOLqWMvMUE7NlBFJUDwHs+5j4vzEqIHNhc
	 o3x5N9SjNeglXmZ4qjaIt/mo253zX46PAlrmGAGp0HO6SmHKXzvKhHZnwQGjMTblGj
	 eRuJE3wCIG7qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9768ED3ABC7
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176498057361.21612.18163567994628772131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cfec5a7002a9bed3a6179df81b83e8a6db135670bdb4af1787a5a735c0c67de
Date: Sat, 06 Dec 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764980573
