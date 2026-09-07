Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B32A47F787
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788782434; cv=none; b=TVqTpWtEMkjZHYLD8H851Q1GayTZHavQipgcGwm+mAwOa9BR1X3WuHLjfiDSQmRWBkfA5gq0ihu79EUM5APD9V4h+79W0SwQgZhGC+sunrx9vvzO5V2jkdcBUkg0HaBQp+YByNyhQY8kbIt764cOI7kSCEQmVFp5cvL0iiJ6aRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788782434; c=relaxed/simple;
	bh=ecVL0qZeGYoIjdAvwLa/2iorBDUqKLsPulDiibeb9nk=;
	h=To:Subject:From:Message-Id:Date; b=g9EBt2yf7+LHahagP0s2Yknn+essBBtrLXB1FUp97MIDgy/l6I/WZhvubfcVTY6EXCHfqqOs1UKSD4B4uwaw4Vhn6UR7lHtwdVSeBHXbBb/ctYQmsUfyj+6Bv3W3TDCdACNo5HIMxFkgeF7Nu7TIUspJyJLj+YNstU0Df+4cTbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=df6npMKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="df6npMKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81C3C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788782433;
	bh=ecVL0qZeGYoIjdAvwLa/2iorBDUqKLsPulDiibeb9nk=;
	h=To:Subject:From:Date:From;
	b=df6npMKQttKQhcQpuCDP/2CoUsDW7twEhVtjBUoT2TPt8oWhyjCPfTgHYoQioDJlv
	 qkgoH+gs7xf6CM2U17498J1hb6QgcK9Zr+Y4A55Uc+KHhBAS6I1d8A1bFrqoIT1Btp
	 eTYuf0PcOsRbNRFxtM0aUu1SfAgNOYWjl5PrFYQkMHT3ItRgLSyt/UmuYEKU1dUzek
	 /cTxuQ1ih6jvXpBbmqQaSdW66ZT1dQEn/g1uJ+uKgiONj5+UUqcGvO4EdSvTmaUfod
	 1PUL9VJrntO5ZxDv2prp5t/bj+kb9GymNe9PrwTsnLsH3laMePFrI8QI9s/1AOYqF7
	 BvxXfLUpq8F0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F29C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878243372.5519.15611045933482978349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27bf13bba98548bb4bb8de35cce8ffbefa11542e8a2038c72d5eb36612bc21ac
Date: Mon, 07 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788782433
