Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7D83F8ED3
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781532994; cv=none; b=bUNwlaN5Netqr4LtCi1XrS7IdHIvWrz6hBS78M4b+hZ7xtw9qbp6nSSpR3Bug8x8K3PIlwtu5hIX8NUZuRT5usAV777JEChXpRUaCbQKbZ9RbIbOAaDAc1xu9lj+uUlH88emksniC61Tjqb28GEfFaIizFmkrydpA8pZy/8fFXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781532994; c=relaxed/simple;
	bh=Yi9JUK5szpGIzPjJxfdriZZzUAXudV50l3S+nEf+9Gw=;
	h=To:Subject:From:Message-Id:Date; b=lbW4Ggtg1R1099n232+EBL/Icn5JSSzzzzNHG+miV4eFrASYRiRDsmRzKzdwMUE/Rr9A+flzwKEZ3XecDmEoocoOfODuzvTMy0eKNkNMD1Qc7P4FkQSeOofOiE0ywvya8MovJF5OY6hiKxVOjxHFy5YQU+E5fH31hfCGXYf037Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxFz6CHm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxFz6CHm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D449CC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781532993;
	bh=Yi9JUK5szpGIzPjJxfdriZZzUAXudV50l3S+nEf+9Gw=;
	h=To:Subject:From:Date:From;
	b=TxFz6CHmBcqRhiV2OUDqbMRYtEbE3eb8VPFBIRowMvH5XDmM/ONZI3K/NAtCD19Vz
	 ck8o/XTIZiZ9Ng3bC8G+Sz4q5le5Tf06R2nIz2RK8h8DcZxtg1iXFPo7D6azQwY2My
	 kn4JTzweZBNoD50F7UGuV5j+73ninCMn0ozJBLigGD1fOFi666dLxtR+gMOokKo1Ro
	 eCp6YntElfOyGlmXEuacgSKDdCYe67f6F1vi+xSUWpxNn5trm8aX9qPtZ9CJ1c3CXE
	 1dD/LEzMIFWT7Q5AJINQtCvdfb+Jd+Ve1LDcuZlCgO8Ghe8YfaMQ+aA9lTrMdwOjs3
	 KOnboPGhUumog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87B2CD98CF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178153299374.21734.6849605089282180516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33caea561d930e544bdb64a991c19fccc940611b1f43c207b06d1d5dfff12775
Date: Mon, 15 Jun 2026 14:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781532993
