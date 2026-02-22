Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBC1352F87
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771789494; cv=none; b=HFEx1+e/hi2qpC9Rrlx6ch5BnapUJIvDvxvSuf5s28G+bBOruPZa4hysAisIwurCjLotojW1VxRWDW4vTQzYfpgYiJsLhW+xNuCmN7mxl8Cy3EiKOnW9IEjDVPMFvyoJZNPVtImts3H9ZOVxD7u1uip8OQkHNLBARA/AyUKOIJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771789494; c=relaxed/simple;
	bh=zkVHpcvPZzFqwZ4Q46NIaPHngPP/D+D2l4CHMx7LUyc=;
	h=To:Subject:From:Message-Id:Date; b=hKdACUaFUwaj7zfHo6pBlJS8v/zp2jnNwDaEsjNntFOH7lWUP6pUc05GCL6FT7pgbMH3ZNWQJo+h5pu28czBVA84ixb4kA9ZEhExYh79wpNSJZjGS4zuPzipN5Ak7WxNO+9zogq9mduyiollzzuZm79AmmTtnilXywQbWxWjQHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebHtj+jw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebHtj+jw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A40C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771789493;
	bh=zkVHpcvPZzFqwZ4Q46NIaPHngPP/D+D2l4CHMx7LUyc=;
	h=To:Subject:From:Date:From;
	b=ebHtj+jwQpNwy82M/BIkpTVVNCBHWgT/DdCRzBp+H/KvFNpOg863oJN9z4jWCY4Kq
	 EfJ1dLMNUffhO87BhRsqVFBvP8YWc1go3M/Zz+rxmpVmJiNzFM9ZOn66QlDB2r52a3
	 viZSRS5MakkKNb9pIIHtqCbRWSah3ZNXDKD2jh8W9/DPhi09WsFtBrTsyxOfiCy+pI
	 S8LCIcVVx14qLc14AHT59qlogP0+tW1cw+9kXHapWZfBcETi4EGmkMcoxZOaoxRIjg
	 O9WfmwqzjMSHriWIio4GBFMTyzbHemLoRmeQt+eVx+DbBC6xKjAdPs3vLoglJ5ChVp
	 5f4SHqzUDpOHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F2AC636B3
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177178949358.26402.15781591111332595600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56497471a3ba47be2c517129caa20851374f07091dec2cc07ac6052354c7a9b1
Date: Sun, 22 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771789493
