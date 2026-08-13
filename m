Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4889E38B131
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786600834; cv=none; b=bIc/Hie5QC3lS6O3NHUqy8DsZCRZZ/uaZEruoM3aLfNzEd790YIGDCR5yuSuJmSnKXfb7G7xR40RLv1xQd9rt1FaS8pAKd/It41HtJ0XbiAZOOzUGk9cbmq9HJ797hXEemXOMrBnQYAqEM5dCWpcy6yNL4D6FwnNmZJ3lgvYuG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786600834; c=relaxed/simple;
	bh=3wQah04/OGEfrG5bEYuODQUMsLPe9mTut9wTgcTf+f8=;
	h=To:Subject:From:Message-Id:Date; b=oOGHyqd2TxAenmrM/PC/rI+2jPUEaNhXfF7Hn74GIZIxUzmK1CY2IvJGJP6ByyX0VVbS9MLLmDNe8adIXeIBPyJtgNZrBZAnXdzqyMsP2z6WRd/rfO6xebtZybMhT/MQrLT1NzuJ4uIwIAwOY6nBeETBLN9gYixLOrub6CnoF1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uu2DbpMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uu2DbpMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF0DC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786600833;
	bh=3wQah04/OGEfrG5bEYuODQUMsLPe9mTut9wTgcTf+f8=;
	h=To:Subject:From:Date:From;
	b=uu2DbpMsYbkOAMaSiVNJPWcTyDJ5c2/2eRK8kNre8Tm/mmIkkabQYrs+ZWzwaKOQQ
	 4G3GhWR0tlnehAdLxQi/MRih9zJC+34gwm3aoO+ekLyKCPNpUdJpe50zU+3oAbN8FZ
	 sQrsz5Ip5DHVDyjz4C2RCcF3JmhLDr2wI6rea29hB+EXeF5YRoEWtQGJtTXp21Yihp
	 U7VbOvVVRQpTfIRMTMFM+u8/exxR2A2I5Pnke56pfT4X68H7McknqpFrribN616Vz/
	 DHNW7A6fprpOs5CejNcVMAiwUrq5clT+P70OCxncUaLX1hh5sGUMwZQQqUAkD939ke
	 rC1rQxla4wtSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D6EC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660083367.7368.4793609347939261438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39ec16edbd2108060fac5c167a357dcf75f6583323435ec86e0759906385a69
Date: Thu, 13 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786600833
