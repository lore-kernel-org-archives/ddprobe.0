Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1977E0FF
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787415034; cv=none; b=VoAXq14s4QoYvHsQhotaM0/YX61Tukdkw4DEGW0KLpsEG4w/5U6F/Ys9h94xTNoUJVWXvXwieNHA7cgymo8fPDVuG1DMudllapVCPI/nA9kKe4kZwChcsLpjjPgtF3M7VK6FatNxGYwNNfKVRfcfhgA/Mnc2VPegNIqNpR8gKRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787415034; c=relaxed/simple;
	bh=K8y6XnsvgA9TCqg4yV4ZPf4dHgSH3nFzwxB6bpDQsTg=;
	h=To:Subject:From:Message-Id:Date; b=svp01uX8SoLnLb/C7M/cR5kMjoOZ1MK/V9rFjCbJ9iRMBo39UpWt2563bCjsobuD6YAlCknk2VhwTwg3RrS0QDDN08LcFEk8j3A+VbqOjbeVygGxyBWsBDxGaasyKkt6QZn4TR2zhakKW240pqKyRy/U9aUED+0JEXTDaF8jL7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjnZ4TdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjnZ4TdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A63C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787415033;
	bh=K8y6XnsvgA9TCqg4yV4ZPf4dHgSH3nFzwxB6bpDQsTg=;
	h=To:Subject:From:Date:From;
	b=LjnZ4TdXBtH5QxQTyjBlNMEADe/BTATS+CqHIgOJGnDIl1L59WWFcuM3n/16JxMor
	 4453f8IM9S6PhV9Izl2WRp15X93M01ycdoLsHvqnMEMjyasEEi2ZADWV247+9B9uU9
	 OWsOFMkRhKEhUGU37qkUbiRxdYd8dXB6bwJj0+E7OcQGERPeln3YcuRpqWhZ1e3j/u
	 xm2BhFiiB5slTUyhdMVuQkFZXlHqqvA/Q12/OQB0nLmQeODjiun3KJbDIcYmORZB1k
	 Z9f++wsKdmAEafu9lyA0Y+fXd2ZQe527pOibGXKtEq7udq/7xfzk+og077eXaxVO3t
	 f21SKvkoS7i3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD177C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741503368.21958.5056355726584575198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec706fc3490aafc4ac17edc8e29ac0bcd93035814f65bd8ae613cdaa82d022d
Date: Sat, 22 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787415033
