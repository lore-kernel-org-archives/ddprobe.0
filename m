Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC3CC8FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762086594; cv=none; b=B1uB6fvOR6NoHk7ixlAes+XmR2KXODetau4l+Hh0OT9r1d73FrgcEV2LJDwCJWca5b+xdaGN0QF6V955aO4TzkijZBJthFfUFKdzY/TTX/UGp5eBG0WUOkcwA29RADTi7U36ClMfdtNcXQqrZYhzT1J7XACjSk1evfucLQya38w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762086594; c=relaxed/simple;
	bh=oQzExIVUFRVT8IFWn21DnDM5G3hgdz3Ckdt4DVecloY=;
	h=To:Subject:From:Message-Id:Date; b=b3Ua8epGapaVi/b35s/5xHjn97rpMYVFPE5Jtpdiuod1a6koQXg98ZJAmQjSyawKfgi/wUEAz4jgw6kgvIZuJI5QcauoPB4v6Z+yFw32XsIJCELU+KrOEh0yxYd1xkNY55+WnyJ4KsQ6fFUEY1uzdcRhkUOjILv0VSeFJEBkigY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcLgZ3uQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcLgZ3uQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA06C4CEFD
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762086593;
	bh=oQzExIVUFRVT8IFWn21DnDM5G3hgdz3Ckdt4DVecloY=;
	h=To:Subject:From:Date:From;
	b=UcLgZ3uQQY1+JKgLC5XJ8CsXjMWO7MEuFyIC2wd2cqqrT+o1+aMQ8ZeeKhNkjUEaC
	 7Kb0y9urDPkLBAnbYVw6Kb3nizuV+gP4QaWctPEX9aleSE2nV8Q9K59Zor6gM22wpW
	 XXyAYrboYXeTHJwHmULY+qX5kH6Hu6m17ythiVP+w2pideWqYg4U9ZQ/drN3hrEgVE
	 2vT3/qkgqRry7XJVFxc5H4gkeg9FSSIxIrqOThw6ciKP7HgX3F/hDe0fKHE3FOoTY5
	 3IUGG362ReOdo/YPsKCrnwfu5DCI5PJViU4ASjWA1JM3eZVwp/Vt0hDXJxXA+01t1G
	 xMsO3KDpq+LdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A17BACCFA03
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176208659364.17056.4613029055450899382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697d81ed07fcd800c157ba4ede1aa67b0f8ffab4ea57014d35e265a40eb11f45
Date: Sun, 02 Nov 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762086593
