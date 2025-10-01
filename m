Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256781C28E
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759292994; cv=none; b=YJNUaF7JeSGq7gCatvFmHQLXaJhcmoX3/rYUhuk60AkpF5kW8F8y4pbkDDRLddBqlp1mq7K/obWHd9yl5ogT87WA9C1H3hWUWjiFhAiYuej5i68OVfKNhR3gjJFvqPXUS0Wx+70i83Pq6H0ry3qmSwg7/9QNx8Pzf0yLaSvBIvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759292994; c=relaxed/simple;
	bh=4ohWktLxK+qPjPnN8HfLBySKr6kWdN5ekFhVXMpTtHI=;
	h=To:Subject:From:Message-Id:Date; b=sQxX/8FpKBWcreYyuM9CL9nHaqnNhV+GjdKmRUWLjlP0R12ea5krB+U9sT9isImzYLIJnBrlDvj4RbJrq+IeYj6b17w5g+E3YNqMzOilnhJuM1wILhMpRQnt7P4dKZ3XKoKZgDcYEpnWOrDLStOOBcvRXVKMBmD09tdLwGQygmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJz7kEJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJz7kEJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2204C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759292993;
	bh=4ohWktLxK+qPjPnN8HfLBySKr6kWdN5ekFhVXMpTtHI=;
	h=To:Subject:From:Date:From;
	b=dJz7kEJ/8fUpAeJG/vX7Ra9D03S2CUC5R0Q89UYE2kcJp6f2pP2hloAuhvElNeWDO
	 GW1BsQHJ7wjb42UIxo06xuPeig0UFwWH0QNXpvmskCXrCD6r2rJD7B+1qk9Y33BahR
	 HfOD/Az9Z0s84QFx2lxRu7ip6Uly5tMUxBNhcj2ufncLHiBL43SCszTareyhETcaYF
	 LRMeioHOTeakBQHHN9BDZKckhEPfdQXwT5//dh7p6hRi6MAQjrsPXqBSjSyUiGhb8c
	 t7lNEd6ukd58vD82TVNc4luwV7ypSBRvJ8wlW+gsoG5zLvGs0Y6b3vWeclwJfLg0Cf
	 22lJsoFLs7SSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903CECCD183
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175929299358.1093.14855910138251847599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9cf1d7d88bf4ca041f2c88f7b08b20d49010662c435d84bd14199f870f035a0
Date: Wed, 01 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759292993
