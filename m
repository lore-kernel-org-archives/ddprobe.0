Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48ABF3595D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747628394; cv=none; b=VgTxqEKGjWdanZf/27pnoK9HiFd28QVpevHM3rbtUAK2Z8INSwQ9gglp08T3av1wphv4Pecwao+CpHk5kuyI+3dYgz8993JysVtLELoLf1YtXF6Q0nK2sY0ENyxgTfWkxuYGmUMEnktXpNBgi0RWlVxwNsoFViuhw8OEmz+M9x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747628394; c=relaxed/simple;
	bh=mq8CCNdi7ajTjefo0twuR0osD+c1LI/8583S/+u3Xww=;
	h=To:Subject:From:Message-Id:Date; b=Eqt1ZrnEgwPBA4wwFD8pw765ZzJIR1X6pRRK+ZAfNQEx8q1UbeFlU34ESgOSfIcdefXiK+yqGwpn6ekAMhzrar9OO3Fi3dX510T36FkOAr7l3bvQPWpihBDtCZnlgcStyVSJ3psx2LrDhhZcOoHq/xbJBnEzigSXJ2goaqWxriI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIEewRmp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIEewRmp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78C8C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747628393;
	bh=mq8CCNdi7ajTjefo0twuR0osD+c1LI/8583S/+u3Xww=;
	h=To:Subject:From:Date:From;
	b=eIEewRmp1/c/yKrAoMijlDNCr3G1326CHEbWwBJnu4GWlVoShKe9IRuECphOrH774
	 MWmMP4DMOLVr5ECJvOBISOH1hwoJXyfeXEOXrB9N5Ixg5wQ3XjCIAW2DOxqToeFlXJ
	 dHhHWOgYF7PmiLU6neL8mQeGazMh0yDi0qOH49fAf5iZrgTQwe5XCg/nt4ehLA+RGz
	 1qPOgLUEjE0eYeFjTZnqcHKq4T8ELFuEg04yWSJzvpzBu/AUzQ4W+H+X4f9Gqt9KMy
	 kSFICaKzTHiZAg+oVG4EDLbgJ6dLhDRjkTrRD0E4XuiKLFAlHLAuziYhJeK5YukymD
	 d4difQp38S9EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908CCC3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174762839358.27620.11514596349069076305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11441b1ae0a87b3b27217586ccf11a901de6b5c308bc5759c98486e5e30812b
Date: Mon, 19 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747628393
