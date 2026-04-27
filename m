Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6C01F5834
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777303054; cv=none; b=VXXYkdS0j+C4ONsTeCzrdJompNL9+y49KrDhYPp/ZaJEiL8a2fzN9TxR/2KrGiNmOv6IqtDhm501SGr/3UHopb1xA6BJF8qIs+kPxKRXygICX7Wwqd8T0+WfOpXbVh31T37XZ5cR+vW2h/WfMpjUyTH6rWOC2FrKbrVG6dlPf/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777303054; c=relaxed/simple;
	bh=BGvS/SBYuP5g/5lpIT03fDOfDX6EfqGqtQdvyj08mpQ=;
	h=To:Subject:From:Message-Id:Date; b=DAbQk6/GZznOpa+av2yBHCG4NLq3CKjg2HkNs0uMncbz+hGSSr6jYq6hj5WCzka+GzEMNo1nIZ1KjqkAE7DAPp+qXi2zWbF7kKavZmUONIhuDhu/gO82IassW5qrHNvbF1txC9TMG5SaCS25JtZHjnoOJdiP2aidRzQLNxR+haA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrmYy3bj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrmYy3bj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7F1C2BCB5
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777303053;
	bh=BGvS/SBYuP5g/5lpIT03fDOfDX6EfqGqtQdvyj08mpQ=;
	h=To:Subject:From:Date:From;
	b=ZrmYy3bjvU2lcvGhdDYCL94sDID3NSsbRCUXdTOsnOXTIL0OprXsOhzS9KhsMVg94
	 sr9UgCdLkAwvaKK37WRFcLSOfJ1nTjfzVWayBMyBwDjR2VduC+CGYQCry1Hnda+QEw
	 Ut8OBNwfdnIb76Bb00SQ1+TXHQnUQ05nOfSjVIKh8oFVGNkYIQbSpuPP1jgoMXLByt
	 O9Veeh+PXMJQ+2nrXSjsxIiOMXOGmv29fUu2647PutnJrM8eccVFOOgRtVipGMjxdJ
	 pTjSGdH23Biu/5ayGAFmK7b3dw6DUiyofKbGvr17ZGeRpqceBKkIWcxQxYmf//XU5B
	 v/nVjSWYnSokQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE7BFF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730305369.1998.1791417650178240901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b22490cc5a170b918fccac65c4c105a3ed592881c0e195363010ee96941ded
Date: Mon, 27 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777303053
