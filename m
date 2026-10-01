Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E0F4BC006
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790847034; cv=none; b=FRSZwZrP6VVphpOxVRlEhi0L+j2pUk86680EQ5niUHLaswH2PVVRw7S/galKg8AXm0GZsob/cUFaJ2MsndJM22l4BsPrl2wdf+f+uMoI/w33SjDJkjwQsg/VrgOH/GFUw4f8yiw2gSmcwf8++O24mkkii6wvDuIlRJ/5gDTuh7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790847034; c=relaxed/simple;
	bh=HiUXDQY3HwxdVqkia0CyZDynUX8qbYeBNqMEWV31huM=;
	h=To:Subject:From:Message-Id:Date; b=Bw7oijHOhvhks5nHX+pyqu31xHlIYyfzb+OqT5/PKP3inRrAMXpFaN+lNn3yLckHWBPZsibkxeql57mBtwyanPDOxFaDt/hBcnrq9W4IuJxDHPnfbR0blBaR/2PWHVR5hyXW9UpDmajGBqMsvxTiPaGyJXgBtpzjk0qMfcCQapI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfK93OGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfK93OGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF28C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790847033;
	bh=HiUXDQY3HwxdVqkia0CyZDynUX8qbYeBNqMEWV31huM=;
	h=To:Subject:From:Date:From;
	b=nfK93OGZ7J5LLedHgM7XzW1QJERWPANU41GVM+dKxT/DA4bw5sUloC8SzeCYB4fRI
	 2UMrnS21HIYA6t68DztelGyOv4DMTzuV2/K26oi9gkqN3rZlczv9kPY3qBNp4d3VJo
	 KPSRYlnh28xwHd9wwFtPsIAh/fuj9BObBne5pYoUg/QudktD8XCtRToz3usZKzA64A
	 rJgTqTx1ww6N1+jOrng0eObk7xp8hUQq9FxJKGLl8IlMo14ZlLWMIgYTBjwKbhHeMq
	 nJp1etKTEr/v/WtKtAkScmBV2hIRwEYVbUleSEQXB+CfqmsdHSt7ETVoFJ4CYqsXUR
	 RIa7+/DsA2KrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBE3CA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179084703375.5213.7851826313405820314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13a7ab675b5e1fe9137a346e9a85c4333ae53d9c5b9b5dff9ed902d5bf94504
Date: Thu, 01 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790847033
