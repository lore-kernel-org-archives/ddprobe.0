Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2773A389DEC
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782203794; cv=none; b=DGcs6y1ZBolKK008j33PyCuH/j79dc4ibb+AlLZqHDLJ4eCTOJZepFt8HuAJOd50FJzsOf2IdivEphljY4qBFx02QrNK9u1orfMpZC7QkwX0aKj9dOiFaf5F9jH60/biurOd8TPulHmiztLp+1+tRBvM89Hys06w+aza/TrLDE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782203794; c=relaxed/simple;
	bh=q8jiW/bv6xnaxZvBk9la3BBZe3dXmOazL2GseGEtPCo=;
	h=To:Subject:From:Message-Id:Date; b=pDvo1ciwpi94TgFerUsHGET3ZNt8pfobiodngpA+LuolwEzEAJ7WOJzXQ/kMswTpVzu3/1VRrQ5fBenLxaBjn5ztWzHQGT2+AuiXyS3ilmie5o7sqYSzjDgbNYketuQgbQyWG+CrByPXH55phP68REbnP9CuPfOg+++HuHL+qu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8UcJUyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8UcJUyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1FAC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782203793;
	bh=q8jiW/bv6xnaxZvBk9la3BBZe3dXmOazL2GseGEtPCo=;
	h=To:Subject:From:Date:From;
	b=a8UcJUyZ/eoWwpnOGxtvMFXkYr+vYgDwmmzoZcp/V7I/qUZ2pLk4fRsui1QVrXn0i
	 TO/MG2M9pHcJyVbNOTO0i2WzKGKVKNujMFBafZm0y3F0EehxUuJZGy0qaCYgiJ+xEe
	 cUwUKZcU52M7sHLWvnYVdbDNBnD1PYa92BJQtmKENlNPx/460MkB4unIlRId5IzUpl
	 AtycN9nSgcTEMeJUhpVkeW/+QG424z/At7u1ns/rPEgPTegbTbZ/9g36QTFXmdy6eO
	 gdwen3Rbr9qU1NmCaRCSf3tC7AA0I4HGENjcY1nYvDi22glSnXWbKSYTz+Rra8+Vne
	 lGIg+r06j34Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF529CDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220379370.2135.10754446355779590930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2160b83599007637f53526408d40df5f638ab188e80cce5afc90811afa2b9ad6
Date: Tue, 23 Jun 2026 08:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782203793
