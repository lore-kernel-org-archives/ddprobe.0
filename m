Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CC529D265
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776009454; cv=none; b=gUO53H7orckGRUWuLnXCvlw0z3xu465PJh37/qacmGVdnCymWMPsFrpRSlZ/gBwgjAbv/M2N1E6+cPJXi2X5GjILQyuY2vLLuST9UuE7aaTJjvbHJPANGVO3elk9wgHU4ALNshkOmAlv4ttORsaeK5GPSzuKNlu6Ta0rxa69nRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776009454; c=relaxed/simple;
	bh=iI+wj7jY1c9n63M4CoQ1KxE7ZMXp/g/QNts0+u107fg=;
	h=To:Subject:From:Message-Id:Date; b=SwE+4W5aFpmFNTRPhW+kXc+okarqxO9X+QHcVe0YR+Rwfkhi3XlVKWKOXs+dwkuqZMugLhNxyqQsOtvo8ge2fMdUDNEz3voktIyeV3B556D8qyPzvPfyXf1FDGJp49t5bd4onwU8Xd8HBkS92ZMXtIN7+r/zuyjCjSdofU847VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9XxXyU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9XxXyU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC853C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776009453;
	bh=iI+wj7jY1c9n63M4CoQ1KxE7ZMXp/g/QNts0+u107fg=;
	h=To:Subject:From:Date:From;
	b=X9XxXyU8dhzcE+8uj2fG39oi58KF8Qs5oLTfAWyLHQcafIeNT6J55z9JCwKi1A6EM
	 IplLt8h9qSJAlghKrMfX047xt2GfY7bHI7sYGPSYyyluDaxkutjiWBojsar83GgiH/
	 KkSu/5HiQ3/Fnitm3ZLobQdHNWNH3Fnyi/yqvuEKbgxAhosjCFh8XviwaOF4BCiuTw
	 f7cNFUEYLzPy+/KGSx1I8RjE9Ng5h/Li5VaLV0mwyItG7CPPHdNDZJmTnAQT+3LmJL
	 50OBFEHfd89Ac5LxU/BSMZJyUNf4GnNh2MRzHjSF1S1CCMqTRQ8w8kToBkUfiuMjI7
	 2e7W89ecUiHfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF817E937E9
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177600945368.17738.10610407574017273233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeaa4841bcff87d043daa4f6fd72f3230a4484247eb818b9f2df0a9653c08940
Date: Sun, 12 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776009453
