Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F583E7151
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792332034; cv=none; b=ktm1zW8fHReWgdc9haotMswRV4SJiu2LUcNrJdUJ/XWiqF3Ae8Y5Wqh7ftpeVbmucmDGWBuiMybRjxtQHhTtN5mhNgphysKGVhewB7JdXK/fKb2cnJbUW4XQZ5k9sxL1SueHZs2eYdY2J43/xh4U2/n1SxH6etgiu3Q12waWAkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792332034; c=relaxed/simple;
	bh=zA6CuCpUVKzS24qRciYi1xU2Wp+Frhyr8ozSCc3W8C8=;
	h=To:Subject:From:Message-Id:Date; b=IOyEhhyWfUQVEQVEf44LFgWWsOjuWsUpqbFlG1EdNbMhuZzhL/VJMvD9g5v2MWlg15gIyaNGGrlpBaHlS01l/9BLY2XAKmujJO3icyXQXG3QUVabQ3japslfpCcmqJteWWJc0Ip+bXp2SG6P0BLkrbeYiqjJyYzTwk2R42Bp1SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBuXCkIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBuXCkIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01E7C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792332033;
	bh=zA6CuCpUVKzS24qRciYi1xU2Wp+Frhyr8ozSCc3W8C8=;
	h=To:Subject:From:Date:From;
	b=XBuXCkIKDBejJ2flHRIg3LzVKwRRKHO4AfYxTR6muAxp5vlIbQs1S4MF7Be0Vay1V
	 l/uN7ytYAbd86kTHf7cTbQs4xaKHz/+6f+dwynoNu6cYW/5jQZHyzIugRviSO9LCnp
	 iTqXgl65GyEfZwKmOEyoLcVg3jW4MKuk/vN7Bz5oyK3t/pQRdWrB1yGooP+G7HJ7zk
	 BQWD9QIag9bvkWQ7XdrTpixgbmIns1KSicNJJxqG8FH62Rloqq6E7MjSFWpRjuS4Bb
	 NzwalsGA+3XRafuTinAstp1QJlXfhwYM7op0tLRKafhzn3wtWA3W74b+K1VPH4Gzw8
	 Gh6XrsVV+XeAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC21ACCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233203368.25150.11472230730084523859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeeb331b9d01176098f299c0de2f8041a5ad2760cbb7f95aaf56e49e31fc1833
Date: Sun, 18 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792332033
