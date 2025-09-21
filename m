Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA922228C99
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758462593; cv=none; b=N4ZPXhqi4WPCdKiAa1bWcCQ6zL0bi06Hs3+KfKl9yEyjOctHMeumVxVeyAs3yeP4W4gFrOFvjY5ABxTqfdZgCGJaxNnIGP7AIbSc9/WSID/RIcvusy9UlUB3LzgFczBwb36h/0imd4hjjLXtTmnTg5STg7toqpa5lpjwmwH1OBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758462593; c=relaxed/simple;
	bh=ICFOt4Y+GQ3z9T6A/0d1rsng9+bV17VFAvsnMonsjY4=;
	h=To:Subject:From:Message-Id:Date; b=C0AGKl22uccXI1deRhM1p6MCy/+tjoKh0OHB8L+N2Fw7r4sHU28pBdEmrLkJDq+KjU348RB/fNOx9Pgah6/iX77qIHqmV15Wn9fUNuIifhPux3rs+vCF3QVs21IbeqKPy62vs7zQ4tfFMm/dKUEKGFa+hL82++4JTTWqHB/idDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LX2D+05h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LX2D+05h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E318C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758462593;
	bh=ICFOt4Y+GQ3z9T6A/0d1rsng9+bV17VFAvsnMonsjY4=;
	h=To:Subject:From:Date:From;
	b=LX2D+05hEzKoxHtI3sUf5TCa88P07Q/q5NbCu+SW8TOcSiRQz09MNTMFKj51DJ+an
	 RBEFwxx0+b99yKF1wW/0anKb2iAO08JC3AeyfjMcnJCzIGYJXmLOxzxwtBPqvYwPVh
	 YIf6q/adwznXeFkcGQPEPmZ+25zatoSAEKU942SE7fJF4olU/774Q+8jXEVYAkomKm
	 6ySAIOLxji928/M4bBN2+vgalOEYPnBGfEYWYr2S9nkPlR1sua2/m0zDJzlDemy/Zx
	 YOzkA+xqnR8VWEgGRywjAwHp3eZhwcp+y3g5WpKHsSRKg/d3AdXBsmXPrPKypyuv3H
	 UPp0DtSIRkFjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C0CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846259358.25482.15967133891112617113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de2d2150aaa545b953a9085b1eeb3f33b479ab7b5f343df58e2e554e2f272cb
Date: Sun, 21 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758462593
