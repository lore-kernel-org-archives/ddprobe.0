Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D28C280331
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786400434; cv=none; b=FnfnA4SAMa4H6okwF+MT+28mZgk57NsKS2Uan+b6SzEGR7aP5836IjOEFkYFoszoKjvHbg9tq/t3jNjRN9uX1EQ5xeRI30DzL1ub54tKFIjSWvQj1NVqHNLnsh9KpTVe4xFNJFLPr/norcOWe6wbac9XuNXrFxSJR8KVG1+dmD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786400434; c=relaxed/simple;
	bh=A2dN7yAKHnU+dBb6BUXmGHglysbxneql/nW7/VzG+xM=;
	h=To:Subject:From:Message-Id:Date; b=mNxJr6jWPndWwkvbT7+nTpkWEiXxNwAL5+HsiYluQ/sRyJ9nyReopwonzhxwrP74n9JSYlNe2YjjYYVq9Ebs64RhcTAjhrjtil0kJ0ElOBm+E61RTGH06x9SbY87qcGeE8ItrWvSwR4HgH3J9Rc8UKfqihqC2zqKChfwDC/hhfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOgEwtIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOgEwtIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB66C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786400433;
	bh=A2dN7yAKHnU+dBb6BUXmGHglysbxneql/nW7/VzG+xM=;
	h=To:Subject:From:Date:From;
	b=TOgEwtINBizzhgaomLvZt3FYHoz/JODfhGLCZLFGqPsJ93GiVyHV6p7dLRK7vOY98
	 f57ywvUxxUFxV6q/WZBwY6KlZyDpI805cOvtnTW3fZy1siNN/5ueCFGUylnJLaa2yL
	 feV8E5uH2DYMB4jJ1HrfD/oxiMD1iatV7cQuVQLi2g9/61ap4K0+NSRwoeSDIrrT5K
	 buyYc3jA1vnEaeNk9NAgK07nMjWCeELjgF7raPe6V44hjwTgIjTyWv9VOUEq7dPOs2
	 uh+oSbOyub1uM2rFiBoJGcoAYyV87UcWfieN54MLlD3C6Y/J+SY1fXerPPpmSRgL9n
	 9ZyvuJd/dXjIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A95C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178640043368.4155.7932169610403959948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f493b5156ab687fcb68a549cdd2f9c8ed7b5181d057b0890414c3a77715b53
Date: Mon, 10 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786400433
