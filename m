Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3693B7744
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777289253; cv=none; b=CIBEk0Zw+ihEWwk0B68/4/jDgeFdbNKWaTxp57WUBDToIaOIfOVJ0XKXBlnDTc4/qMdO8mlJQ6eUAojSQBSePE7DAubJmxy9FLeGKdyPujopzST+04EmsywFiykZE1BnBDdE7fOjz9JSj8ymsljnly0pSc+vJhoIlNYZiWg4qP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777289253; c=relaxed/simple;
	bh=IKipi+GKL2C894vIBuhmMtt9i3SLVDH73Y54L516JOI=;
	h=To:Subject:From:Message-Id:Date; b=U4Z3zxsIleF1uzQh/QOuH0AoTxV+pCHKG2uns4fpv9ChwfIC+FYagzUHfGziIMZiT1X6gJC3GzKeaOyAM+fyOkIdmUQfySOy7zREaWaffih8WXbu5YBcJYa0/FOdGvDTUgNgZjFMSnMTjt6HAX07DFhfpmjgV1O3+tMGdo1JJeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4w7bWeW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4w7bWeW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B45C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777289253;
	bh=IKipi+GKL2C894vIBuhmMtt9i3SLVDH73Y54L516JOI=;
	h=To:Subject:From:Date:From;
	b=Z4w7bWeWn3seOj7TWRUkCiFFcExt4E38NrzuU9g89WqcmqNLKzJIFJDRf+SY2xGQz
	 76h5xdUDvy1mAxFh/6zv/J2AYMgn4HImHE5+JLfQDxHz9rYShzXS7Vgfl8bQ1pKzZ4
	 jr35Km0CubsZUQYzUe1iCQeAB+zlsdXabewtm/P0QZ0A86PGVrI1M7hukqWbEOOA/+
	 NH71DJuxZQxR+YZW+/uPyzhZ2vRDwhc3Y8U324i5173sZqaBe33435j3QsOVFDx2sa
	 NqoY0tHrkMh+/r2Cqb6zwbqmrHdKUTWjCkEYR9QZOT3gFeKHbd29zDjoO271hfVFKr
	 aM//dcYopJj8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A939AFF885E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728925368.14424.11101520461534573592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea02869a0cd39bbf94da14a9387c5bbf1b4a8cec305a8a42b6266d7fe024491
Date: Mon, 27 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777289253
