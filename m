Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0792DEA8C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786206634; cv=none; b=vD5DQyvtk89kw0NU+arU30KkYquhBwoiBFIzKdXJ/daINwU8oeR+htzFW7J5/hwd0xK2S/5ra/1vmJ4jt/pmMZwnukmztcOzHXSoGztIFLhsOxmvhXeQR0WK7xbiCOYoYtmwQKF94++SN/uGyY7dc5cFGc6KxuhpXA/Rsu6xabM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786206634; c=relaxed/simple;
	bh=X9W1s/j1un7hgeMUWXtRscR423gICgaW3HOJd/yFV9k=;
	h=To:Subject:From:Message-Id:Date; b=RYi8lpb63lTys/ooSJVyyVwPPGZcBklt9+9TUqoR22t03HB5IVH7apIm0RkLB8SMf5dXfayGw1qBGODMbn/ndVGadVSSk8GswK5JvPUhIRsAb5sJrUVIfYpXRZVVgWAiToFff+FScQiU0kNDPct9e9jLbsaD4kYBN+dGTehg10w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDX0POcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDX0POcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D593AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786206633;
	bh=X9W1s/j1un7hgeMUWXtRscR423gICgaW3HOJd/yFV9k=;
	h=To:Subject:From:Date:From;
	b=cDX0POcftwfZlKnw8IjwjwUo6DnmwbxsJZUWwcxraeG2iu8VIVA3hb+Gtcu9py0ID
	 B1e34mRkE6zNG8D1Ijo4uflYgZ1etlw3O13GkmZ064ZQzMGH33s12WqpSUiLXvZViz
	 K6hI1GzZhRFV8A8M6nc56vIxCqqzSnhvQhndy/h6UlDzqI55XRsKZKVCgy+eTKSuzh
	 A0e51bq2VYguqLvabeavhO7YmQ991c1E8qBn+4cfyEzzLwCm5SzciVCWxKvt3nN8/6
	 uAYZvebc05BITJI/y0H5aAIl3hPEz8N/nJSEoXDGcpvxdhkzH+9hhPsX55RO3vXFh1
	 dehsEICgVplRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3ECC5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620663369.4653.7480684459357001605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf764b80a576136bf775ef3af71afc8363ea52327219a8f3bfc0a6b32e41fb4
Date: Sat, 08 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786206633
