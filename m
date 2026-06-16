Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AE6305688
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781652394; cv=none; b=tCPDyZOweha/Aa1iffE2dYisvqoao4jHMl3AyLNCWr1d91FosgQWW6gJNXsnDObIknq0GMW/ZIQBFS+NnSnLlpXo0MIZNGyiSBqaSeU5oTKna+7ACkkyaotFmFSQk/W+uy1oc9qREFS7SLOJicRzeDDPcZDU1/maQHCMsoZ6VrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781652394; c=relaxed/simple;
	bh=fVg3Epu5xaO3F409wi12iFiDFi7dvAmjhOGfJ6dl6uE=;
	h=To:Subject:From:Message-Id:Date; b=EIc3cnKdBj/O9NMdL0Cg4VAhowVOFwVhZda8BBj0+y974ComLtOYr28DrBhnXxW5bEGXa+HqULUAdTyROZVZKj8QXlvoCRdA2inNYF/mnvJTpslNtx9Byu+x6Mua76YWkN/l7yZp1x4JlRBiBfuX7jzJfldkuivurnqkRuBNDzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ef1XhY4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ef1XhY4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5DFC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781652393;
	bh=fVg3Epu5xaO3F409wi12iFiDFi7dvAmjhOGfJ6dl6uE=;
	h=To:Subject:From:Date:From;
	b=ef1XhY4X+1qpuMwTynJtac81uXDbn/5pMiwHXiDjk0orh1h+ALLjjGcAqFPbt93nl
	 3CMonbYhHHNuUfQGZEnj5bJLPlpBsK7Qg/KQ+E44zUqxgSBya89e3QeVzFDczZvmTj
	 gV341VQwUryJelGSa1TYogDGxvX99M3exAvJFEooDSX6LIoGmeMC48NzJ4hpFClceG
	 MSF5vuA09b4G7TrlyDCwJEmJYrryWZWSoOpL5XbTRh+338CJjJpxpQWygxL1OCKjgS
	 HJs6tmzikKz78haxxvk+HNxxn3Q+2AWRlndc4HBdaXYDMZr+3sOqKDB4/3L0Id7b01
	 0EgcHok/0wZaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AC4CD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178165239373.798.8543862692119584563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4765c6292f8c64ab1505022fb87fedf1191413f9212bfd3ed9901b2404c38f96
Date: Tue, 16 Jun 2026 23:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781652393
