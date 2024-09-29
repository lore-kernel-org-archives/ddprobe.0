Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9D0AD2F
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727599554; cv=none; b=mzNDpbn9Gl3hHw+BNGoPkwTnaaj6t/n1PxSZKOlP0A9YQ9oYAJIj6oFPM3A7ccCSAmajoCUnW/kS3KMl/0rfhp4perLRRWJySPk+8OD3RWGKzbqc7UaVgc9pVEmOBB+tsfM2PTQ0ck1a5OfKo9gfSGVteL5O/hx4hBiCkM6kW18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727599554; c=relaxed/simple;
	bh=/5M89b6YB4pGprn1/rJbSGn0xxtOpZfc162oUztEsgc=;
	h=To:Subject:From:Message-Id:Date; b=JuzQLwjblY2Yf3K+UlAEdha94JN/5Nt+LOAUCDmAk/1SJk/1TL3aMcfZi9KO9dr10kd5O+io4Y0RsxutdU46c0WauuReGhhz1bu9JEiUfUm2Ns/WTTR7+Kyf99imlIqNfOzUDlK1MqIS0wHs+IA9fjuiKcnzuuo7+9kyjYi5LRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8qKJ2jT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8qKJ2jT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A837AC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727599553;
	bh=/5M89b6YB4pGprn1/rJbSGn0xxtOpZfc162oUztEsgc=;
	h=To:Subject:From:Date:From;
	b=F8qKJ2jTNOJNMEiEqpcUugRUPLyfY8HKYglKvCOS/gA02tZJ+dKn47run/nR7kYC/
	 W/T4FKxv0vqDHfraFb5HIatklUxoFefePWr0KZfXNgSwM30jbJPgv86dN8Klc8eIm8
	 YFQDZyzOzYJ6m8nuWik8UbIcLOcGw+K+yoPd48eBTSoFLeCxGgrYYbQ9A+ZV+HLtYh
	 ia4BNSVMsTFlNT6Faz+q1h9uezIQFBTYZW2YtL4Ee2L0xewHsvbujjt7NmPe5d8ew0
	 gWi6eKo4YIOBQnnf2jp+XQVm9qW2b8oZz23KBcL4uAuZ/lz6w6a31qqOkvsqN0n7n+
	 B+q+q+cZ6cAcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96737CF6498
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172759955360.24017.6710882215192035103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c16c7d4fe134b458eeb2a87d3009a592863439c592d10dcb74a6182e8e4e6c
Date: Sun, 29 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727599553
