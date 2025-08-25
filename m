Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209721D88A4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756133394; cv=none; b=O1/8YBenanxo+LpZOJ69tPKjn9nMgwsro5oakn37Bl2YAayXmAsynRkW+ZbyYIQh5/Aq5waLpDhRI5QVSPWM/ZYLPS34W2KzjLN7DjQKl4T+E7r4Pn0903Ih12AwxBlETAgeibyx0EDCME8eRstqNAzPZ+lXMJb3eR4/r/oSna8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756133394; c=relaxed/simple;
	bh=ONwX4BwoZMKPs3wQCnuKHugUYX6SwSXat+rxaXnMX6U=;
	h=To:Subject:From:Message-Id:Date; b=PSpFzVKx3ypc+XUUTCN4VUrUQs7tOZSMD8TePYwp6xVmByaT1znFDN4Z1uii+MC1kAMSaj4G2Sg6PJFmeFjkJiR710H6dlPTqDS83tLOkmMwhbhzAJKhLzOjTX7N/ecXCE5FvvWWZjQq/7eweNQuw6ge5nQ6lrSlMfSRNMHjdRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfE1Nm3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfE1Nm3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7974C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756133393;
	bh=ONwX4BwoZMKPs3wQCnuKHugUYX6SwSXat+rxaXnMX6U=;
	h=To:Subject:From:Date:From;
	b=OfE1Nm3EgHNz5EbsZoJ9g2BRODO9dEr0ZnMI6nAXj4fIqMNHyAI67R9gJlVUX5aZu
	 ZRg++nTLyTl+0Ji/dU69gA++P4OWxtsDriOf8VldTrRFcK2Vol1M+18buE9y+KlOy3
	 6qIvBkxrZLC35d+Rj3z3qjagD9ZOYcNV8LKeyN9kkC05Q6RhIN7DIG6sxsfQFiDu9h
	 GrlOQoTmEwqY040b5NjYaB3hrXbTaCC9JndvzS5W/RHUz15kPQ8OPXuCPHD2oQZ1GI
	 0zOzXOEfOc3O9zQ0ebxhW22B0/vLHGhU2t0QquTOgCDvtOHezDjf4i+/ZvPd/imjcl
	 QEIoW+VL9wrKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C8CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613339357.27404.5063329583056754207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9d9cbb98b30fe9b0ae06920a36c24239d59b7a37abdebe2b01caa5c45882ff
Date: Mon, 25 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756133393
