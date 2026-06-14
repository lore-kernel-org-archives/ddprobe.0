Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963CF1684B0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781403994; cv=none; b=urtDJe1dIbCfHALmJgzkoNPINsCeYIrMxjitfQx8dpJhtzl0MBkUgsmlt4XX/h1DSFz3tXuwg5+ZvmUO8uzk4wNTvruWjSuuJgRUjxu81z9K6Qfcq6Ilb63oz8Em8rYQwty/F/Ln/B/kMxwkx6AbmJA9rs93du/aWk9KLlErgeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781403994; c=relaxed/simple;
	bh=tCPva5bEu7YOm2H0/osPAPvExBVdKhzFQ/s63w9j7yA=;
	h=To:Subject:From:Message-Id:Date; b=BNrmlwFAKAMwjqW4+RnRakWA1hhH572jVRV3Emn3fJZQcJmuAPB1KS0yERP+gvgwYfQ7kMBKuh32LelpUngHZatEe6HLn7x936R3ZRTg4+sP3nBNMa5kw1fyQEXRoImtva7gcj/X7M/jVNlhqWVx9ibnHTA6Cbhck0fTQE/gjJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHP/Rkw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHP/Rkw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FBBC19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781403993;
	bh=tCPva5bEu7YOm2H0/osPAPvExBVdKhzFQ/s63w9j7yA=;
	h=To:Subject:From:Date:From;
	b=NHP/Rkw//7sIb6OtvBIA7BMrIqI2GqaKn5WPsSMstrJ3msETUTDgHKFT1dzGYo5H4
	 lsjGrjE1kvs2sF5bNBCrNO79h0GUF+bsIa01ns0rHqAafW7n7t4buNlJ5p4gQ1PQZR
	 Y8b6jsQp2sJ/FKrbKfgJyN+iAVjRQLt3KP+hD+kC2Y5lS5MPxzLzCH80MqafMOgAJD
	 1lEoNMGBqT9LDA0W6SOSZzHjv4yoUuNO3mP9K6TDEx+WB7hvhAn8OJ6U1S1sxO2hDl
	 ssFg9Q0UzTKo7msdbIGCXU9Wj44X4HIXFh4a6NlV/pHKNJp7gxrR7A2ioSaA2Rj4Q4
	 zFWKgux7G0XUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9E8CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140399367.14000.11303462292699068181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8136040aca2ac4a93088b0a5fe147caae5f427e0ebf2a67cff707296d20d4b6
Date: Sun, 14 Jun 2026 02:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781403993
