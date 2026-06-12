Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385D71D63F0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781293594; cv=none; b=WpOvif6WWSNqPndRpmdYgvBwC5VHkS++CZ/Chbxlj0q9tv40Q5wAxDVlaxnamoIlxhbO9jdEjztnUKYnaRoQQ8m/SVIk71fp6cN/oJKZFFogEqzaTfhMB6Lhi5B51XyGm4NOrlQBO+hTLhpWmVuD6xXTricvn9qv7rTgu94A81Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781293594; c=relaxed/simple;
	bh=8hAzVeBGo6+jVto6dgB8R4D+2itTLnCWqRxXW5JO9Ns=;
	h=To:Subject:From:Message-Id:Date; b=oA6CTIRPyYaaAweHfeY5120OUFaUcSU1nm3Jw/2UsRiujetnMvtCoq6BdclLC368sCCL184x5duyvhXTWw/DTGkiMzOrIhmzX6nHlMA3vt/ij+1blM5+5in4UyyKG2A3Ogm1KkgKD/gv9yf0eyiv5CI3nmm8obktl0Os1olv2mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ez30bu1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ez30bu1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7762C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781293593;
	bh=8hAzVeBGo6+jVto6dgB8R4D+2itTLnCWqRxXW5JO9Ns=;
	h=To:Subject:From:Date:From;
	b=ez30bu1zJQBKyGcYEK3WdqhArRhzL0qHyeLH73aVuM3SLz20mBfAj+EK9x3uPU2PK
	 QxrIfqDKM8vHGcJ5ETBUGDCDeo2z32uwEhVPKCZM7pVN1KOE1mwR/yNkNt7GiSD2hb
	 aAizccIOugJLTrQqSlQKwemXqoWNOh0Hz41n3vtcdDsbNb1OUTD2prRwJ0jcZwCxKd
	 RaaOpTkolO1WZz4kKL/RSEIrhD1upjoTBJyB/sDYoPgqlWJrWLiGTYBP7Lw/Iq7uDQ
	 ZIW7qeMaREptS3W7VVH5pbZZWuIcL9qzvuK2TngvT+14s9EhRmdNvoT+Xr5HX7a1BV
	 4Pe7dfR8y5asg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A943BCD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178129359368.27369.14822347131876208992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 517e4ec9f854550a9e8e1b90ea6747e69bf828ed7992aa2c046585786741de01
Date: Fri, 12 Jun 2026 19:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781293593
