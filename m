Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03242040BF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750402193; cv=none; b=BT5XYSVxDitC8lyKQOZfQ00nEP2cLJxlzWr31qtgR/eDO9PKROyZTzZ14oxoA+mlsRAkTBBZq1nLl9ksqQwpcz7BnIWYPgd1PFI/i69aFusVJSY0sWVBk8Hpxta0E8aZqzCF0tHynVhUTTlbz3B+kEmZzJTrE+sVUm3mgg2GPMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750402193; c=relaxed/simple;
	bh=Q8QbLb5c0IJEOFurqMSvgx3roa1lMff3SS2iHBPuiNg=;
	h=To:Subject:From:Message-Id:Date; b=DDIDqiXrUtkfQMfNGUU8LOCKYgrSyckSRW8Qj3Ak7jS16OZb2GBUzXKAAt5VKwaJl4vN8nosg87OQ6AY4PZ97TcaRW3QYsmup7nHZSkJic0ffDpiyvmFYivCPtwxemmmYWOPhce0Mn1VEf4LFdjF1UOlcOuqgleUCqOT7Nb0gOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0i+T4Z+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0i+T4Z+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96933C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750402193;
	bh=Q8QbLb5c0IJEOFurqMSvgx3roa1lMff3SS2iHBPuiNg=;
	h=To:Subject:From:Date:From;
	b=n0i+T4Z+ybHbq3qhDYrCxjcu7r9Zc3rDrAgnrD2mP4ZvWe5/qp+eVMXvQ4qwygl4S
	 soHKaoz5V/T9Gy+BUf3NSseqZ0eka9R8dHxBrEmXPnodJJb7sRkbJyq9Uc6Ifl6Q/P
	 z3R79qij9TRd6sNsL5HaLdhpWMkX1I6BHxVOzgfv06mruxJtXP1UnkxViJ4HzZmwvP
	 cDbCvixzkCdCcznSrl3rIUv3zIaIq+gpdW8w6KDMWUFLqVkzKIA/A7GT6JIBjJs/nM
	 TFd69kKMc0dm9djHxAJ43ZlbdOs9DE9XPQh1vOCETMQuRZTgB6mhVtUfI9+/sgWrDM
	 IMq6s5k7gCekQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F907C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040219357.11084.13826802189467039609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aa6473f35b49a48a180ba9a07b2c785360db3328c8208337eafe9aa1f9c0694
Date: Fri, 20 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750402193
