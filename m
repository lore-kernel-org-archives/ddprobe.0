Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4C83B14A8
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790763034; cv=none; b=A+DIkPypU3Rq6mV+ye9ZjfurrQBUJ55bTwItuh/w49E9SMIWVGg0N7lTlZj5T/2ub3IJ67XYkDNqhkTddilAYZHqdi13fNtF5nu7FrBQKI80BUyvCmFWHHtqXMMaYF36/8soxEnZo3FZLl0MWHhmUJJLPTtS6r3tiKimtcwphLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790763034; c=relaxed/simple;
	bh=XjzaLrIeAwNRKb9Ojv6AQq9R1MZsjY3zL0tUiGMQC/o=;
	h=To:Subject:From:Message-Id:Date; b=bqC/W6+1A7crXs2kyUeQm55KQK+Z97lbjPh4IhV+HvRquWJ0q3uloz658kDvSLwsB0RS6HwzP1Wg5jOWZuNUnQUldpiGZo+Ucs5lSxf/46qiKifUioga+0G823Rytt6Mm7xi0qoqTmXUmokYsZDmDPk9GyUFV6jc9kHHCCb+wi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wti/AEku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wti/AEku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCD8C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790763033;
	bh=XjzaLrIeAwNRKb9Ojv6AQq9R1MZsjY3zL0tUiGMQC/o=;
	h=To:Subject:From:Date:From;
	b=Wti/AEku1sTxJQzBe97gFrrByl+7q5wldFekcbIk1Z13nBX4o2LNX33vK6tmHu3RZ
	 WLH7r1/lpYS+nqRYbYowV9aYGikWPWoaYQWRdY6t4fj3yVDWFrjCSxaHVc7/3QJXjO
	 7mg+Jb0G3tyUYpu/VbX/mWz/IgA6CitL0KA6foKcG0Kp4hM38cl4UCqYfr4KPb8ZVF
	 0cDarjNNTVe/4xvneMprx0AuN7ZP10ZrO1EkZqptySdyqlTXwU6q2kE4nGhgHYx/ki
	 Oc1nkA6Hzy8VnAyp9jyfPoEieylf8efrPDbaZZt4j2jcgkHt8CRns9mbbtU46Nc85E
	 I4jy4MuDnAdWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB41CA5FC1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076303368.20250.3225790985126054264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10b8c5e7aadc46a7dc2e851e920b0d80396e0de533513c18b11f8e3e218130e
Date: Wed, 30 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790763033
