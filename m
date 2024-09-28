Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4A41CF9A
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727548554; cv=none; b=pCei8CShI348sE59BWu/MtONGJFn0KKve5M7gG+VtC3DdDuFawvpS+9CnpSJB4KHoqxNIbgEi8GCf5ocU29LbSrriENig8zKCXyFqPitabAH644Mb4qjMU8p++T3Ex8Mywh95Eci86xo3CEGJuGRtXRPfOreQB34j30Tig2V9po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727548554; c=relaxed/simple;
	bh=VR8eGGnAADSWgPkh9An8tdQ0qEMi3Id5bWIbTkid65g=;
	h=To:Subject:From:Message-Id:Date; b=p6hD892P61iiQ6KBy9/AKsUL9cgbPVJaKKMNrXBsx7yKDZDU0phKdBKxKEl+OnuKFf8nkN8inwGfbdcrDrhw1x86XTF0u3t+0h7vtfighkU7Y1JIoYHmSzWl5ZgLgOskmOQignjwT5BwS+qd95IwQl49u9vepTM63rmi9hZ8S78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8MNWQHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8MNWQHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03E9C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727548553;
	bh=VR8eGGnAADSWgPkh9An8tdQ0qEMi3Id5bWIbTkid65g=;
	h=To:Subject:From:Date:From;
	b=H8MNWQHChZYkIgcp0j48qL2hWEnZNYGR7d8lGSo50AY/xJrQsKHomBpMXaVQzMLKD
	 ibj/CWtmEjveIOHAvtNuBMiUy7q9TfK7NAtmORm4DMN+GtAhpzCg766ZOWw1oNKbn+
	 yC9NexjkZEQxKDNZtV8+lKVH+foI89SOjja2wLF6cbzoVHgyKRthsljrRlnqkRiBuB
	 Lgnlik1PqUoQuZ5vBlZZMb9IaafYJDv33TKO0bFGNZsZ/L6256NmKLWNybfldSiCcT
	 sap0X3oCfRvgi96l75SR6Gk0PRdpKr+n4+d7uX0sO5GeACU3AN9Ry1IYf1fQzEPMTF
	 a+quJA8t8oPEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C22DCF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172754855360.18483.15624496932797599351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a9526f695b4c68f58553a8323e624fc8ea681aecdc9d48cdf5d66f06fd1086
Date: Sat, 28 Sep 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727548553
