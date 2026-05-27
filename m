Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED6D43C041
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779900154; cv=none; b=fkBczbvqQWFxkVDI1z1KsG06IgJRlMq3mUiDJ/G4A24zTChkVtJyia4txKKdgtjItdg/uZtUm5klt5rRdgcf5CvVTSoU/mAePIwn5QoG2Xi1G6gZdKV8w/Lln6q4grONXxhme8Ov9MMaExlHs5atw8qS8zYOmmn9awPqvdncCpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779900154; c=relaxed/simple;
	bh=h0MZfsmDAje85eyKc0V3fXe+eEANxIb2SrA6afRG7Qo=;
	h=To:Subject:From:Message-Id:Date; b=FU3wGIqzP+Ex9FKkWyE9qW7P+JBOFaxb7HTU4/DsfExKfRjVrv1x6jxxDNXYH55NIXpnYT6eJzZIDoEp3sLckwDotTseBDe1UTMOcqH6PUF5jX17sd2lMpNYySrwU4obRtRSVxRYrhF7wsLLe6mXy69Fy5+TbGyoir54ykrL1d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGyncmIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGyncmIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDECCC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779900153;
	bh=h0MZfsmDAje85eyKc0V3fXe+eEANxIb2SrA6afRG7Qo=;
	h=To:Subject:From:Date:From;
	b=kGyncmIR1pSEYlW48/x3qJY21gTkWyazxg3DbssJDeHbvQ9oUJ34Z/S5HclpZpJrI
	 pnA3vJ+kVRE/Ye9y/BUUDTd2lTYpHFdMt0smTSJB30xii3gxWiMqb6uPjUiuuxC6jk
	 tFdSmc9C8GWEzgfHEXji/G2qsSUM9k5jNek9lurqQvNVM1K0IrCj4v+/vAJzOxrs7p
	 FhZzZTVlXXuWQcIhGXYTDV7YGwTo/xLZ9NUpJFABUihw2VmrMIQwVG43Ljz0iKSH7M
	 ToHAjV5AJxGpgIMivioYoCRmbYmDOBB2OMwUnjvzsA3QRNUP2MzP3fFakCGipE5ztz
	 VLk+tlb4f9uwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B31CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990015368.9557.3673384935750169002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b1986d1e192ba36b2fc5138fd1fa513cde8528e7bceeaa6bc205f12f6b27a7c
Date: Wed, 27 May 2026 16:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779900153
