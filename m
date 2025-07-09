Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F0F2E54D9
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752071994; cv=none; b=eXZFy6os1uyPimlGPzU9yQ10ueoc6hOJgpfCcqXSbTqiebzACExERXbOB6CmgKDw3iu+Rs4ZeW30S23Kfp6xq2VOEcZbFWHugO8GKbvMaJGH2vMRruTsMVIaSqZao4FEQ+uILTV0CkvjIlDpFXT6A5LgqH6FEvWgdGeZ/s/lkms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752071994; c=relaxed/simple;
	bh=FiK5712VqMsK76mJv+4DCHJh0Kx9zUo0dvY6vSVa8T0=;
	h=To:Subject:From:Message-Id:Date; b=OCN56m0VSFHNP4sihVoE3wESev+spFWjOXqUKvir6WrpCSkeJ+2DMsHjJzlsF3Qh3Vk6EZ79HO6Zki6uTA7C8cmojPnzA/ylogpNmSzjbVv3jJ+Z18pjLCtdr+LgUzQ4Or1wISOVkZeyPLkyE1c6WKsbCwIqEBf6szY8TIwny8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJ9ntYzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJ9ntYzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC88C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752071993;
	bh=FiK5712VqMsK76mJv+4DCHJh0Kx9zUo0dvY6vSVa8T0=;
	h=To:Subject:From:Date:From;
	b=lJ9ntYzUzPZEYzAgJFoJW700BglNeLV2SNNDvtll3Smlm6eR7oN4Jkctgk01yPJAf
	 nj2Q9EfW3THoCEPBiBUCQgHYdE0doPI4lwLrvoJ4VRooaK79LZi0e0IXg/LEZ4XLRr
	 sHjIo0N0z3lHESjeOImZWlfchwPTk+8AC9T+OjJASURdiMOqKHFr6qZuul4P8sV4Ou
	 G37rprDIwPLYsnOlLggV6lHCmqq+RoDvTXaNV84gvfOjbmmfsI/sa4HNX6Cuj9WBXm
	 I/6KNIo3em16By9MywMjmOYCW0s3XzOujT7AvzAAl3sCdZE5gB0k6JP2pk73cYNqBf
	 AvaDbeyMZNabw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF2EC83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207199357.20615.2455094291657035547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3641e36075b50ed8213864345329c146e71ed5ac1de2101647c07bb0c0aa0c71
Date: Wed, 09 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752071993
