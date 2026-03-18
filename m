Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFF43016E2
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773870294; cv=none; b=pTjdXWw3dV/eLRCEuT72INGZlUOjBRBGHotplpFj6DY9uFOgS8sn6ut1VJLqbS1q9eG/44vhfV88t7Kg5u3JXiUzyxGAQYQZwg+ZPMMDNTRQj6xqO1NKAsHmmu+v5t276LJ0bRnFA/Vix9+LE3TT2Iaw+jS/hfLwU7DYFTsXVdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773870294; c=relaxed/simple;
	bh=QKWvpA26BmSqUrpMWjplHOkxefhbe5o2S/QFhdEcpp4=;
	h=To:Subject:From:Message-Id:Date; b=vF7ufDvl33Nyh/dY1SiVh0UzKZZhjEfcWtaY57m6wQFonkyy6RIpIs2nSWJw1bGA0TzTPviheTWNS492ILSP0yH0FIHn8RJlfC+tQwM/zOYVi1KDOY9QoGY5wGnG/vRA2SFHXbqEBRiEQMFGV7g1hdbC+NVGj0szhDdu0031fYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXrzdNcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXrzdNcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9694C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773870293;
	bh=QKWvpA26BmSqUrpMWjplHOkxefhbe5o2S/QFhdEcpp4=;
	h=To:Subject:From:Date:From;
	b=AXrzdNcs1myhVtY2eD1cexwg0GeWRyZMT4SWHs/uW7OAvO6POcwLQURH1SRfadUla
	 EH84/3ISuuFrDW3zvEqwDgzphFSKTsmPzLZVGFH/xeJ6s+ofbCo7bH0SEjzhgDq1x/
	 jIWUMqxkXffkRPwQRue7O8PEJ4eNUhcVpa1b/UjFZzQjrUA2AnjIb43cAGHlYH8ckk
	 ct3XzjxpL9pCvRYx07i7T1t7k5zYf3ikrg1SW0mCsQn3Q7zX60JZRbtfcBTfLN5vZr
	 sjcfjr3MOX56fkFM2gpCdKavJ1CeGPpyH/0vSttYgPyplXOLypz7P18ud/oYhJWqqE
	 iI30VFf4zTf+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977C7103E19D
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387029358.32239.7156663654012515983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58213f868d4c04ec11354434bac0e3bda30ab1e4a937e4ad28ff20f3c32fa04a
Date: Wed, 18 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773870293
