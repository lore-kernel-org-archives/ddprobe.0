Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDD81946AA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764444775; cv=none; b=btRQVkzYMAL+lWOk6Ip7unLwJ10ff/WyfpdWpvSCu/Iow2cYZIU8qXvMTxrCggy6/x5SO/RRVmJE8miHiM5+FxvJsO8LmSb7o4sndLJn2KAORwKT+ZMJyT3hQSWqPuLc/NS96e7G7/udeYvInr28BdFI+COR/KOSFhsNiZZzwYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764444775; c=relaxed/simple;
	bh=28UGqV+XdvQLRro2+CWeQluf2/daSb4Pz7lE9WwUQhs=;
	h=To:Subject:From:Message-Id:Date; b=kI86aAgCz9ovfbDV2pRJTpW8SexZ98DoGlHpVkVnXTARuSDSK8tqcFaky/YBZWNIHYtxhO7qq0owUUn1+hAig4peYSw9DRp8tyoa0rSQ+l9lK9C1MEdeLEgisOLhfp4qAbpL4/lnqMUWJr1gcrjmIpB0tDCsbswZaHkcWZJQJ7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7YRcj0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7YRcj0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE400C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764444773;
	bh=28UGqV+XdvQLRro2+CWeQluf2/daSb4Pz7lE9WwUQhs=;
	h=To:Subject:From:Date:From;
	b=p7YRcj0l7bcNWneBSXBUXhcoYaREwXA4JXh+0JfBVur0bYs3dMEpzTWmsB8OPz7OM
	 9SYkdKeMVYtebXdmzYa0MRFRSt3uI5Xi0sTqCw8UP/Sutag81vxIRspZ2qobntwPcy
	 kUuLZ0EZKAMx0w65snV5ds68eYmYiKrBOZ9WRCVuIqjCKJTkuoLL3de/iD57GlFhWC
	 J9loeZR/aSc38TXTbWWEeCxtWGts7iZY8QKpuMeXsz4U+sZKlf3MbI3l0fH8XHHzUc
	 EYldW8VnVukPNfbQuuXQzgMmCcXOoSXeqHPWUeYGoriPbDyD7EaXPG9YZBwfPnz17B
	 hZ1VBmpKKaiig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97207D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176444477358.725.17250936278015321773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1928c563cf01d033c80f637e932670e2efb33abea39d25ef1fc3fd6db06a92d3
Date: Sat, 29 Nov 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764444773
