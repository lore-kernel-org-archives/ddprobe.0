Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2279E15ECCC
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774402494; cv=none; b=RExpEyUbjTDu2rZaEerlR9zMVW+pQCa/+8r1xEc3KXmieJB8w4mysK4hsDoneJZ6C2Hij0zYVQg0vWR1RLMU26e+PLMmPY3vI/YFVJYYF813oApYXgVYDgLVDrz45l0nqBtsPVRdKmXYR2jHkuwFbo6+WTDnO3vczzcjz9WickE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774402494; c=relaxed/simple;
	bh=oOg7votgImFsLLgCGDVRREbeTNwFFiGP7xhoyZNqjTk=;
	h=To:Subject:From:Message-Id:Date; b=iY+mVEtUSdXaZ0W60mwoTsWP75EhYaYja2F221xVkuK+hT04xHFsK+sduVb2NhWEyEPTh+mV1vSPcRi4L4s+BhZok9jmY6Kzy8WU/zg2GcXZfcV8NUXs8aTaG0Lg5dQWllyRIrSw+1BEO+IsBSuRIqYMVJEb1kRbghXGGiRc1Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqEqcBKk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqEqcBKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D0EC19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774402493;
	bh=oOg7votgImFsLLgCGDVRREbeTNwFFiGP7xhoyZNqjTk=;
	h=To:Subject:From:Date:From;
	b=VqEqcBKk+z3rPHm0BvUQxwrlQF3ebEppDdF76nfrCFyg7SIwJJEb7GIS1TKrWuAbo
	 CPHZtR0W8ehLdCzcUf97MaDsl4F/IPGQxiR5BplARD/3vFqEPm8jqi7ZHL3kxf1Oeg
	 8rJle+gLndznssJCZEhAZZV8snCksO6sQl/2MISDob3OXYP4Jpv/YbcnX2BRlo1fj6
	 g2l3vLoqeJQYyj3A7EyvJ4Bih2En99Pn93Nk4iqT5A9DbdUzussZXoVFap+5+dqM9i
	 Ue9thdGSVeQtCvR/ee68JxmdZuEHVolIbgWrux0cUx1xf/wwZY03Ti4a7IqP0ZSsgx
	 l/Fp1+YLAPt9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977F0108B91E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177440249358.23510.505909999349551675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd43781353815c2e55d29491a7a96ce6ef3d2c8f10c09bd8059652a34cb82d61
Date: Wed, 25 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774402493
