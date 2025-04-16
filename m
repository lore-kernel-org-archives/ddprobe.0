Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4357A192B81
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744771194; cv=none; b=qA3MOpaCEzk9n7Amzy/xuhHSZMbrrP11UMHD4u1ByDls2E8lcJaej8mhmFD+4vsBSkfEoWMkDeAicVvYINNtQjl16+lAWrkQSPV6ztXrRclAlFnorEfNjm7cSPpHJdfHqsQvZAqKklSR1hRc7fgk2Ij1hvDRKliSCxgWsFF8wys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744771194; c=relaxed/simple;
	bh=ItikLEEUeXOMN1CCdpEpM14p8ZV6ih57WoFqtJmK7T0=;
	h=To:Subject:From:Message-Id:Date; b=DA4jl2ns5JOEwdWYKNQez5BQBpACZ1RN1o9jHTPk92vpd69VUJXqSv8u1z9YbBYt/7ApG6ixykODPlMAlP+pzyK7UAfHiHJhgM8IxLzhlRFFl3H/JJejBdr5nm9JW1Qy/wrZ/qm/Z+QhGeuAD6GidKIS2GHY4ztcR8QIr5IoEII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iz/u4LOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iz/u4LOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B68C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744771193;
	bh=ItikLEEUeXOMN1CCdpEpM14p8ZV6ih57WoFqtJmK7T0=;
	h=To:Subject:From:Date:From;
	b=Iz/u4LObG7cay+KQ5hv6BI+bde5sUO27CDulWspuQ1UbCJIEjk27Depzfi/5ZmHXm
	 O4PvPu/697ZV4W7O0Fd+bjBdQ3b9UKh4x9X6L6zZZWbaZvgajTYA1R4SbfdemmQ44T
	 7MZbcpBiY7sDp+w25SJy1KZomxS1S1J4jsJ9jRja6nxE603jAZb9E02+F4uFhBU/7L
	 tFtFuC5v7hwOOvTbxuxVPjSxB0JiHvbb3q+aXtp2zdLcKqnnm7YStI4QLr+dFc3QZi
	 a6fkqXbNNr2rIBUHmcWT5N6UfanETYqcTTU/jjDfjhbIqgFdFIIspP0o/3POOXkPtX
	 Fo/atsELA4D1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943CBC369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174477119359.27689.1243030102701060961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 661ba0980356080395798ab70871e424798d622e5337af89866e4878c5707120
Date: Wed, 16 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744771193
