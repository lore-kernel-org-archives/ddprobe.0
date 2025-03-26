Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCA6199BC
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742954994; cv=none; b=rbgjdPlw02q4n2QLeM9KqlqMSNW8Vl6LAicW1oGyOLJIMOyFyKFTTj+rATdJZpEUkmhzKFdNNl/JdjmJChoDOoTIqUZ0cC+a0Z+sSH82M2g/snmMErMdXK6ycQjQhvHsP8+z3cTUyo+NsitAF2xF9xeRe7oc8TzjNfNI0Ue+nEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742954994; c=relaxed/simple;
	bh=EmB6LJUI1Coi5HAiSD5KE4P7U9Gopf6EsuTdqG5WgQ0=;
	h=To:Subject:From:Message-Id:Date; b=uwVTiTEBFBlryVNR02foLzbLXETsaVLWrZ34euNG8W4U1DM7xRYAaLQZZzPH+ca++aFMEwo3X9y97AkHkjlwYZ1xotQlBB9NvPQLwvlUZDxJfEwIP/k6O2f0jVStqaimSyvDJzQ+6tyV6PWB+URgUX2ixEz1+1JY77hzs8Ikh7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibPCLO1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibPCLO1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD0CC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742954993;
	bh=EmB6LJUI1Coi5HAiSD5KE4P7U9Gopf6EsuTdqG5WgQ0=;
	h=To:Subject:From:Date:From;
	b=ibPCLO1c+X/fOQ7aHukyUp+Fz28iWAcD1c6l8BP2UfDo1aAxtv+FM0zL7G0SK3o6i
	 D9dseiOdB/dbbKFRdnpXPP1kxttwyKntM22ON/o66XccaQlBbvEWOFD+u9AJMEi9MX
	 CEVqft3+cXdeZaitTt6P0dHdfyL2e54g5aGTFldqmhjaQDOSnsaLScMnpvqS4zYmYu
	 HUKG+6qTy6g6QBjqg0gOUUqA8fmwod5Q6KH+Recz4fKkJViWZSzyO/pTHS5iLOatH1
	 R/kEMYr+UZz9l050cPrDoXjGKZCIPOCcziAYRoD5m6RV21MnkCL5z4q/86axrASPWv
	 eC9EGkr00QBAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA5EC36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174295499362.19165.11715804226200027267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0c852eba069da1adb965ae3c1918ff49b903794e264440f09ed1a5acbf14b6
Date: Wed, 26 Mar 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742954993
