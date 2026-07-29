Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC0628E0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785285634; cv=none; b=Fio5RhgVyfaxLoHUg9rzxAVIo2rnz56siiz3M8yBBSMgV+PlSHJScZCPud2ZUCvJnY+/B+JLg4YOnC36z2NiHeUfXs+ffuWW5tiDEy05NcZJfAWsQpIwjFOtNRXXOQsqa5r/Jt5MmS4TZJ+c6sxK+DVeAaonPBRuYtiS4lw8+FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785285634; c=relaxed/simple;
	bh=SoxRXmRSuyMvaI+vtVCInLAIVWaEy3w7vxFk2TIgpUk=;
	h=To:Subject:From:Message-Id:Date; b=qlKNKHaWOQhZhKQ8m2ITQf9Qpy9gBkCEmYOwLk2wDkZFKku05uza3pCEfb0v+yGZEF6OyCBbJl1knpCeck1cetYORPdQoU6YO3dm3oqgRi3B8x2BXF2WrKeNzzHrH6xi9XT9fhVVaFpdUGmUncuIAs2tKvdchEH+dh/McwgNies=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2itHdhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2itHdhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD9BC2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785285633;
	bh=SoxRXmRSuyMvaI+vtVCInLAIVWaEy3w7vxFk2TIgpUk=;
	h=To:Subject:From:Date:From;
	b=j2itHdhkZtm1rEE6uc1jIlfuzs5E5qUVIHtr5GQQgTAcelaUHfow5tkvJMzEwyqCA
	 FNu88EXD0FxU66W2JVbjfRPEO0a/s9k43Slj4wNiZkHc7t8q94HDuoosli1xINCbTq
	 kzz3KAPteZW01+7kQKElvyNZe9GX52ng3WT/bcfertxkAb6B3yyJp7Upj8U1OQV9/m
	 nA5+4mpPI2Fpl7V6ifrWz4f1WQgbOkWoBVs5ugfqcB2qKnn2amrnP8h+PsoWeJEOM0
	 X1EvDpeDtu0R6cbPcNTHNt2WsnLwbe0v9zaot/WPseV9MwGkkZFUWawmBGgWSijob5
	 MR4SCYpCnjT2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D1FC53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528563368.19228.8646584241582114394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dda018f68c30e195c90a35cd5748c81c1751da571f4ab66022dafb4950948c7
Date: Wed, 29 Jul 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785285633
