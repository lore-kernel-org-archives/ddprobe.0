Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CB42853FD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787714434; cv=none; b=CDznKj6dXc74Gd6ZDN2oS/fH4Snu+cFxJHSRHM+aDg1MDb0bW6QtnSrvhToVr9ZaONgAvKPL5ZkqZAMZIxCI2ikr327aplLS7kp/sC6T6fl2/ZcbgUdngb2W2ijwSmYR6y28hA5PFO69JFF0srMItjZDdTHvDgXGWfepaBjj7/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787714434; c=relaxed/simple;
	bh=Pe/UmG6eO3CeoLi12KPdTPVpnGWS7qJysI4N6lJkegc=;
	h=To:Subject:From:Message-Id:Date; b=OsikVx8i9D1H7ha4HTQOweU28S9Ten/kMYmJKPJLyE29jenO5LW8erwkUrMV7Po6GdlmrDBV8Z5vL2LUGmf4L/LDuJnjmGpDD5HWS4VlB7sOr9w5KXOzlSqmKSoSu3hUjYo8+jlMGM7t3jDJIt30jLWdjyzaG3t0GLWy4tzlh/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqukwAvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqukwAvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D1BC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787714433;
	bh=Pe/UmG6eO3CeoLi12KPdTPVpnGWS7qJysI4N6lJkegc=;
	h=To:Subject:From:Date:From;
	b=YqukwAvMhVhx6dTzepCsmSBUBl7JdXXbSZmhCc/9DD84eFe7god8OGI5eSSd7bdKu
	 bwV/h8R14LAhePPrSg0ZQLy4YzyXhdU4KCmCjn3jP6HkMusju99Gzl6CSxT3vAIOla
	 d3z8+7HO/uPNDwXdVclUmX9UYPXWocFcKwWb0VVl0lDf8v4iW+Y2Oo6qsIvVvlmTvp
	 HBbB8rjbrTZF7xDQVC+bigsQru6YvC0FEJOnkUF1TG6XHVbO7q10IsTGm6h1i7lY4+
	 M+fhOR5l1WVjg/sPxCS61nVJSUznAMH22vCd1e8+OGEbFTeK5EgdVzFePbuqH7S8h9
	 Qy1FKVK96OFdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18C7C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771443369.27268.12353429241055867045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ffb07ab42b503e3e9337277f59b44839f19ba84955b375deddf8319dee4c814
Date: Wed, 26 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787714433
