Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B7129CE5
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718236103; cv=none; b=EQ6uDA5aTQOXlRKZI8Y8diRgqC6oOBy12SQOAJp2lkbDvJaxkqxM4LdIo7EqSZ4P8rmaTNHSTi58mrhiGJZiAltenVawwdMn385SCY4Auee3h//IB/UHCZ8vXRWILysFylcTYLdu6c61VjVyJeqwYsajkrbHaw+5s+RqzpkdibI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718236103; c=relaxed/simple;
	bh=Q0XkUmH6pK06pOVUlUdxp2jQqAFmD900r+EiXUXTEJs=;
	h=To:Subject:From:Message-Id:Date; b=X2/KDNwi2MiAkDzKVwSS0sBWUOWZUchpdIFvvwSVS48s/jZTK3ZypZ2uIj+W40JR55HjLWaPr+Mjz7Xmbu4wrbUH0+fz4CzP7wFBLVCyUjdQtZgoRLeFVup1XBCfKbQVm9kbBogtnUD8JbfpvyCM8bbDU89aY++RiRYUn7Xrdz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqKgG5np; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqKgG5np"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2605C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718236102;
	bh=Q0XkUmH6pK06pOVUlUdxp2jQqAFmD900r+EiXUXTEJs=;
	h=To:Subject:From:Date:From;
	b=SqKgG5npvxGZEW6nDpPjv7TqyIb7LfToSPKGwRelj4JAZmVK9nfeyeX/KuvaZLfqy
	 WMfeeebjRi4TCq8pBNgtq60oM4Dtr5AHlzW7xwtb/Vj64pt6L0ylYEG/WR2WxizGjN
	 PSl4kU+dFnlClkUBx73jqj/Ynp64kFHas8L7sbGV2/MOk3X8prlluTimiq1nr76Kq1
	 3lXuHvAfD661i11+9jVLZeGAmL7w+kySuXcD7jMrJAsqrHzbk027PC5ldMLCcV/VJB
	 D3GzYXZZ2a5UlVgWnvpM1lnaB6tc8OfHHee5nwTeeVsEFY/3iiAmTir71AoYcpGQBo
	 r79i34xKy3c1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCDC3C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171823610281.20791.10564993742527272601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89ea571450c63fb43d0630612c202f0fe731f856e076a98939defaab8886a89
Date: Wed, 12 Jun 2024 23:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718236102
