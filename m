Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411292C3248
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748834395; cv=none; b=U+zHFV9B2JSK8GTL4d4uQF16z7wjOH8HFjGlNKECMx4L+3Xs3DdINdDwPbrQ6T//McI/0bo8l3+ydS0colT9W/dRW6/JtGGYe67ZEdCoBF1ke8y3TS6kFKGIfzcu95cfS+MdFgT8uALz1+rCKiS8KXljXHhxEPFBytG1e3Vpj/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748834395; c=relaxed/simple;
	bh=cPi+mKMs0ImBSjfaLEPAKmE8n1I4QUEyu/jteeDGwx0=;
	h=To:Subject:From:Message-Id:Date; b=TM/BoeuTTNz+LosvquhIrOLlwDnBGSRgaw73522W3/pomm7+NvHQiVfKg2rKQzTAmHCT6NbVsImb/7K+BqEzi7xPENxH/up+3IGJ5r6RqfezdBhz0Yq4wTka+/JGnjSquui7dFporBr7m7LWEPmyyisH9SDJ2kEa0mbOnFZHtvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKJHwTNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKJHwTNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7310C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748834393;
	bh=cPi+mKMs0ImBSjfaLEPAKmE8n1I4QUEyu/jteeDGwx0=;
	h=To:Subject:From:Date:From;
	b=MKJHwTNsUd21a97xQZpqmhy1bcmtFUeN4Ptzf3CyWNDLoxU6M5LFry17dQ6jbg3bN
	 G2pDG7c2OGET4qu9ippZyssLj9vPxkrEE5jNItkIhiQvd2gPhUz2B3gYtdFLxIlEfa
	 FckwEkE1GkyG1kPhICOedsSLQliQVQ09+jW3xQ50CVZt00HOVSscHoiVNLyPpvBwb3
	 zmQPPlljIuFJln5XuUqkUWC0wVoJGJZnlz1d38W5TdU4qYf7zbv4X8G668Kw4BsbfF
	 kLnIz0Es0Z/gVP7u0eHkxSz75v1bjCFxK6QCDLdZTQqJYp1447GaWAbXquMYqRnmjU
	 27jdTv3/+7Z8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DAFC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883439357.16357.15456383558818875504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddae1e2c01cfa3e582fea1444fcdbea62d32fb93e2d142ae7ed25bd4265ac105
Date: Mon, 02 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748834393
