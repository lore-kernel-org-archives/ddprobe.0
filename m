Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596151C5F13
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787375434; cv=none; b=hUPKu9zZyd3q5/r5OikhbHDRuD6WbW2HuN100zSNGDuPZuWKdSzI2ciVqyI+AwyCgHduv0J8VnIJLTu7Kb56a4XJ3bFBbIaeIfdLxGPLEl15lCJI1LRCQNkPV99Aq3aB75RQwLxy1aCH86graQexo+T2NVRqlxl5d+optWCGXRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787375434; c=relaxed/simple;
	bh=elq5ankDyvRj4oiHX7iXPgacs+zeiz5HwH14JCNIHRU=;
	h=To:Subject:From:Message-Id:Date; b=gmnvyIfqKXDllnS2V9vpQ48p3MeQMu/fUM6kIzj47JnrI61uaH10Jjclm6J5QNDeA6oWQdG9kRj85EWDrBZaBAbaBlB7axmKTo8nnOqpAtEeUnj1/YNtBRvcPXeFBaChni/1O/ZDPFuCYzM4p3RDlmUhwoG7KlRvGyFRhd7lkEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NM0nWeRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NM0nWeRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6169C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787375433;
	bh=elq5ankDyvRj4oiHX7iXPgacs+zeiz5HwH14JCNIHRU=;
	h=To:Subject:From:Date:From;
	b=NM0nWeRVHsrtkrv53VWnivA/lF+HH3e4v4r596aCexqR7KdExdVUnJpVy1UtTUedv
	 i8VZwoja6/h7/2QyuG6Kizpchah3SHa+gi9e5FF19C8ZwXcmhW8dpiJQYBUyEmyjeZ
	 myZy4Oz8cwO5dnsNTW6Dwfos0kOhyiAcjDDZY2gulsvxOuVFSabaR8wfuDzD2+2+PD
	 Z/AmwqKBfw/8oX7qoe4Z6WCXcsimo6Gy3ayEQZJpOzgSx7HBemsCwUBR1olG6hQZuw
	 1HKLwT9+4wO5HW7RaDklCW4fbynx6YUAqWw4GVC1mr3QGnBeQ9ncJVTZa+71mrUVzE
	 dGH23DJW3V7Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7ADC5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737543369.23891.10479619208815064127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13721a984e5039aa67a93e764fbf71b55398b68fff3eab26978d6e2d48ae9f33
Date: Sat, 22 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787375433
