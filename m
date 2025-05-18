Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45040C148
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747533594; cv=none; b=bkO3ZoQ3Eyv/7z9drGo2vrwuZA9+ngZvhqf+2q/MfH3VHES3DnsK7ZSuyuFgWbvd76SOYU84ngf13oF49s0P2M8MK+zYx1Z842Opt1fRGjHnWXC44PBw2yhxtEHrpG0S22Vnq/miggym+KOk4BkPZP4HfH41hBLxNN7gSnQdO/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747533594; c=relaxed/simple;
	bh=4erdahUBDUEf78x+471GGmYYCXsJBMXQYeHUpX3DGsY=;
	h=To:Subject:From:Message-Id:Date; b=gKFmnj6e1lUobZl5fpaKFN3HrmxG8+ZafaGcxYK7lf8yBU3seGVMAr2xbRKhM3JNus4YvVV6xJ52aS+bIHpqk8wJq1Y9maDOl+yNL9SIkP9JBI5vfno+cmZ3tOQ26KSTwT6QWeH3c2/Coshb/pVjJw9ehxnG3ZxJiuH3QrjiCO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJzjFf6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJzjFf6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A850AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747533593;
	bh=4erdahUBDUEf78x+471GGmYYCXsJBMXQYeHUpX3DGsY=;
	h=To:Subject:From:Date:From;
	b=XJzjFf6a9ePyTIiOMlpnwXldBhhDTenpe6Kn+fc82EoRxeGHgJ+kDRLmmhc1E/Ii4
	 OVUB4X2X7ynZhxUKmKGjCxrj60/bhwQnTqSPpK6IY02MvKRKsKSsMQmylsmK0oyIU4
	 iJyWf5JBjvsUfWR9p80K/Dk5PkQwHfoKvyoAjub9PZRqWDlsU6fH6FylSnUzvl8lmh
	 1pH0hV8jAOsYO+uuXQg9BBGjC7UPZHTTaQxu3gh8VP9d6ImjRxXeh1+Jo2mEIbdhEO
	 j+lLuytEeDaxX7EeU9E3otmp0fFEheKco3hpOdZi/O0GotDmfN/nNobDT/kX60PA/J
	 NQEFuQHM9j4DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AF3C2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174753359359.11972.16354370277373078575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090829b86cb4b641a662ea6d3687772dd7ea659264dafe706893f83698ff9971
Date: Sun, 18 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747533593
