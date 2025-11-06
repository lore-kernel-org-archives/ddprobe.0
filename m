Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22712F746F
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762473594; cv=none; b=P2BcATRvnU0H5aQuyxXsaX9ZRkXdI9f0wqEVxZnQfUid4DKyMO+FQ4hvinIs+r0yYjK2/birvNUrTvhg/oqj+CJblv3n4SgBP4cMKx+m8l8Fom5x51yBYqt/Kcb+c3/81QrPBqtXEXzlQvw7BrABMaMaEjUNkjXKWnGgaKNLYhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762473594; c=relaxed/simple;
	bh=Wsdmq1BjM/Ul9A3nsDq6QtmMvTR/Pv9Cxfxc2BkLYW8=;
	h=To:Subject:From:Message-Id:Date; b=dmgAwErtDm5fwrSeW0amNsKVYqv2kTv0Df2wQvY9+HVPvEuQL801vSIdY62g3NHYiTZXXjg1RHWY4zZ7wGPdOLM6PlbdgSWZ7SK35VZF2FHTP03tK914pcP3H/m0XvKGoCgHPdGpf0Wm7dr6CNAXG9tSJ5CXghiO6LScmNPeK5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f59V7+3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f59V7+3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77E3C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762473593;
	bh=Wsdmq1BjM/Ul9A3nsDq6QtmMvTR/Pv9Cxfxc2BkLYW8=;
	h=To:Subject:From:Date:From;
	b=f59V7+3tjdtsJVt7qRX77tCKMhot/N3R3LvRA8IzmfKmsgZ08/jdI4Fx4+30dqJ/Q
	 b//qaEHexKyZxWsoYXmHiKWtbgZIsy4oZoDmPCX53jNt8+5up0chG6C8U/+AnYKwwk
	 RHBfm1iT7y9ZPK7OO36F8UnDEzQd6agW0siWfAJ9LGdUE1z1E3w+7d8EFtnGoLLZuE
	 LwXiFl0kRJiJvdDrkGZAiGxkEWwHb40H/EJKaNjpsL0gfxYuMZ+eDy71wvj3IDMLg0
	 tOcmD4eG6A4SNvdKfo+YinLfmfj5E+n2oWuEJRzEDUUkIUo+D6EY1r1viwtfk09zQD
	 LiaVdaXAnPHUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90711CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176247359358.16042.13374963376350160048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4800adcbdedcd764a11edb5c3287b0be4301d45613b8d41e517dc3679015b1e3
Date: Thu, 06 Nov 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762473593
