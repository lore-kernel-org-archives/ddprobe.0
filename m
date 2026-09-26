Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA853A542B
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790412634; cv=none; b=XLxBbVL7N2JzhuzJh6tqoIv2ugnO/PMZ/5Bc4c89p9eMuAh5MMnjZOMK4VKQa38syNDw/s5yOBVBd7qU9nGB5YfRngg7p9Ljs3XxfaCjKwAYnyGpHIi4ioYua6Nn7i+AvYk26+2xqYuW2AKlJAeOcSSKeehVCFifD2jevKk3d5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790412634; c=relaxed/simple;
	bh=+Af26VxAntRwvRz1AlHPBp2EuXOF6iqCjbVdug9gRjs=;
	h=To:Subject:From:Message-Id:Date; b=ifh6TqD6u35T+bJN2xAy6uSXD0L62zfXtLNl0/y97iyBnxoOg6p171Akr0nBF/E9gzUjDUdZdc0p7KKRSZSEJ7BHWBn5na9jFEdYcGxLehnxNvun08S/xFoq/w2moRR06aPMIh0hQ5ieLJeqj8KEx+3GV0BGo4FuNxXJolNP8uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BK68Ty66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BK68Ty66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3496C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790412633;
	bh=+Af26VxAntRwvRz1AlHPBp2EuXOF6iqCjbVdug9gRjs=;
	h=To:Subject:From:Date:From;
	b=BK68Ty66WtvK8vxeJKBzvN24UwkxZzGlZj35m+jY1ZMOclFKufPR2co4NHtqj4Ao9
	 w6Qbu7PEmWx6C4ApzSbdry/6/shuhUNOMzYWjSXF/622OQdTMyVP4ATfrCYKfNt0br
	 ZrBt48yoonGG8Dy4VadW1hQAeDl8dwrK0wU4f6OTl9zXEzv24fwuj4vQyubHwN7hMi
	 gE75Y/UDVQ6LyPzvNq+ilwC9H86k7fXVPv6Ab1Bg4Q17ZtixIVn7NK5uBtlzp5OVfa
	 P5uPHi9i5HKmFH3WhHPQ8KjrCjOtfJmKmOUmw8iPypd2X5qdl8EWB9AS5MdK8AQYE5
	 TPC+/QXxDFEIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD953C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041263368.13210.3439205652756093331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a68e55040daa3fb9c274ff092c2944d6f54767a73b03d9cf128a807059553d
Date: Sat, 26 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790412633
