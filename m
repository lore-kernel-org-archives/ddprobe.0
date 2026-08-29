Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49979347C6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787965238; cv=none; b=dezl1C2/OBD72w+QHVcgMLR6LWoalau+uXol2Z7G8ABa6nr3EfUvQqXl3bq7NcFpngKXWacO6AzebcQ/yFogGCgnGyaypBaU37VRuXpET9awSX7JLOUJbj0cY7EAoQNUb1b9EwQgfmPVYC8nsoXMgDkHM3blE071ii3kUPgCrKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787965238; c=relaxed/simple;
	bh=nCe0tcsPEdk9vqONadNtvMIwaCFR+HBlFa8V6Mc0Pxs=;
	h=To:Subject:From:Message-Id:Date; b=iPg5EAYChUeNYxgDCO/J9gi015ggIXsV+XKie35DIX9JmXI8cG7qB/5MbeDKQITOp9qTq9CeLDd7cWBP9ljTtD4xPo4QvVHf1kXsEdogAusDfIoyjejmxLHN5pF49ckb2ael017VxmYtyBoLw16g73/C2sdS9G9+Er30yxmSsvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrQTR5a1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrQTR5a1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC6DC19425
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787965233;
	bh=nCe0tcsPEdk9vqONadNtvMIwaCFR+HBlFa8V6Mc0Pxs=;
	h=To:Subject:From:Date:From;
	b=MrQTR5a1jTpDGdOIESIVPd6OH2dmrijsnW0DDP/rqXNwJuHDoQMtLCKcH5/1/ngcD
	 lySs3OHfrmOOzaK9OkqlWSsqRPQQpMZc0nfnE361G5wG7Jeao4EfcABKY+gRmk7LAh
	 lZfVhmmYYHyQ0afC+z2DaI0BpA7k1JIwmNCSIbX/n50jlQSDhuN4xWe/4iITNhfDfR
	 BxK3orvwDjEr1YIuIGjziq5N5hMVOYQ8iypHzHGRxjqOY1z/vdfOynjb5zy8abSMJ/
	 69fWaLAwt0GQXe5hnJPeClmqDCcvgOloLJoBCDRinREw0ZUyTTTdcPMIPr389v7VW/
	 Qir8u2zbl1dQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF66C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178796523369.19857.4785081016927036161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8631be250c8c4acc91a837211b1cb80cd280f01780f7d1b96b5dd77ccc2c4f
Date: Sat, 29 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787965233
