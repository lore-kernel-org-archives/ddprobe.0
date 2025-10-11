Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1827E22579E
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760167794; cv=none; b=cLbM0hZQHAOsUY784cEfDdC3AmR8mFXZ+aLZgov5w9b/iAjgzWw9nQQVltMx6nuhve8Vrd2xqvyfA+FUp25Ertu6Fr+PUXCJJA3zvgWm1dQVlQa5K2t/cbRbv3p3cXWlAb6Z0bPund05noLQF7NhKxN2xORzuO0NHHJjUytDnqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760167794; c=relaxed/simple;
	bh=G3eL9g1/9vSR2dj21OFPuXiCX6+pLZ6dPgv3klYTUI0=;
	h=To:Subject:From:Message-Id:Date; b=k5VAvzKnCbZkiWG4CEaW8gdI6/aoRp19AUAU1jtrWUsbu6CQR5k2sZPBQzumn+krb2kfZhhorp9mbbcZ2Cy4/FRuYEQIwXQgRdwlBJkqItFfU8ZNPdo/MoQLOJBYFWOQgJn5HTB+qMxBG6hQmG+Dq/Wbo6muaNCzPboEMLbFXxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQDxvrqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQDxvrqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D8DC4CEF9
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760167793;
	bh=G3eL9g1/9vSR2dj21OFPuXiCX6+pLZ6dPgv3klYTUI0=;
	h=To:Subject:From:Date:From;
	b=eQDxvrqUr/LdCPmxX2LBvOXPBn/oiAxcDHYnkRZKvnw13mpw8G6v4aACV/5qJz9Vg
	 JkgIBT+j4HzzDCTyZdReu6z2aPxg9ytET8p2+yUlecPvTCnPR8UPFBKYVhmm3p97tl
	 BC3K99JJf6YH7Y/OTfIkRYuSvoSLo8wsIH2ywJHxnqKd0eDfmMVvhi3fp2WFD5m1oM
	 qDxOolydaKbCvYb3HcMjgtibnYA8r8EWw+0QoH4TfNU1ia5cvOhP8gu+c6eYpu06t/
	 +CJ4p/nF4SpSm44CssyDY8Z4F01xlaruByp8UXr5M4GECCXKQhNoFgRcYlcm5TG+BC
	 lxNXlR703L8Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95092CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176016779357.31393.15175266949055658196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70309fb2365c1742f67d2639624b2d788528d3beb2bf5d5938056053a0050125
Date: Sat, 11 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760167793
