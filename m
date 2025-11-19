Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABE513D891
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763511714; cv=none; b=E7FdgmZe5asBGfEAO5t5QVKlBrtOmIBxBSEI/K6hqRro/zIYuIAhPlbxN7HV7Slxf3qI5f3HDekg6OhXM7OhSGFPJh1Qs8KE+8bkCioYd8sWAxLREMc0XTS2Q+urFENo+yewBVA6MNN6qXMfDYxsaZs9wbA8RmRlMA9kf3VySvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763511714; c=relaxed/simple;
	bh=+X2DjmemDWTY7uLay9utKi/Xc45nPT/CpgbMTG1qfjU=;
	h=To:Subject:From:Message-Id:Date; b=tvRk/bNYVUXDJNLq4yhy8MJe1c08fdn2n5TJe3cTLO/lC0b262yAbwZdiUSQM2zCjmqDyHjbaORGwwYOcBdmqJchU3gaSkm+qLxnoBwxHhVMSjYLGYPCqkUcXj1sgHA2Cz6SrM2kayB1ew49JtpiwYRwnVp0PageWXdGtQ8Y3QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5LWWpaS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5LWWpaS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C97B7C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763511713;
	bh=+X2DjmemDWTY7uLay9utKi/Xc45nPT/CpgbMTG1qfjU=;
	h=To:Subject:From:Date:From;
	b=S5LWWpaSDxz3Fl+ZXSZoW64pmAURy0l4Ed1kkCaYNY8p9McddGmWRaV10sDFeiPAI
	 etsP/5XtzbWm1pWDhh9P4WiDf2PJGuT42SJ1IYzRhU3z8BEJUCg5xvruzHe4BnkPto
	 o/ZL0XvJQKv5JTcIcv7gdSTzdDunDuVrfRwLiHIyerXbiBRZ6pMrR9rRzzcFtItlj4
	 bgRiH3QuA4m0VFrdvHtfxnoaTsOd9hZD46VHEokVMqrMHctrB21EX6wCOWMm221+ft
	 AJN4+Wg4OQZwrmA+Vwxw806Fa4mDE4Mu3iF2fWWlNA870mF4ad3MIUWvXmxom9Gl2X
	 DrWI3j0moEFjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946AACF2561
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176351171359.9700.10755520894708058044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76ae376fac3684afe4935aa80eec52b3c1097f485c5b20f6c80e110571be5f2
Date: Wed, 19 Nov 2025 00:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763511713
