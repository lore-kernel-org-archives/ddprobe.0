Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAB91AA7BA
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741606135; cv=none; b=I5Bh2dsn58jg4snBMUgCrmPatB1mRHjZ0xtP0Pl2gTyuYWhQ+skaPu16/dxzcMEiGCkvWlAjM3ELWMmf4q2IDCi7YyLaUzT7smVtJElCriszdpakAD8ZlHWldYiC/qVtTSlcygoxzecPnePzBE+QDV6XSpeQOgQmbUUPQoGcNpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741606135; c=relaxed/simple;
	bh=j5N3iziyfe3tMTMOQ+N0tnBiT3DliTsNxtq6qMQ6t9s=;
	h=To:Subject:From:Message-Id:Date; b=GMhzzk1d3tnCWFaRt6zQmS/U/AbMcnjrQ37LEsyLXdB7OjsBPPuokgilaE0brr0DST4BhswSRe1RDdZjohbj6Y5njiEmNZD+ZqQ4++ncy7eZ8rcINgEnHlOOX9hzyOBmAvPL4xq3sUlyLVh413q3+/dHvbVc/1JSjNjir/4wp7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYych9UC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYych9UC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B04C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741606133;
	bh=j5N3iziyfe3tMTMOQ+N0tnBiT3DliTsNxtq6qMQ6t9s=;
	h=To:Subject:From:Date:From;
	b=SYych9UCViO8TWj6ebChv5UZb5sp19suRLh4iAmsxwbaV/7LSzTmVdlYRzfR+dRfR
	 s6hr4rG3S5QXi19AU3DUcNoHZvdd/sQox2Gs4Oovk2G0Vdvv8rDj0yRUkGnD2zusHV
	 XEcP+MGnBm/wHF8sMEBGrP4LD1L5udXi4bgDAtBcUsH9QnOd7FHGo32yKwN07ec3nD
	 DoleH/+5ds6fvo73cJnGGBSbIOzg+R+eFSeMPtJLmfztwd1g0Nn/Pp6BmFtjW1F2BG
	 sH2K1INR5MX7fqBMcBor54xsp9yJahKARtPT6HxOqQM8F+OOUgEStl8XqNtoNxWXsU
	 QbGS6Qs283JVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF48C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174160613363.23013.5612122757209209788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7031f5ac7de2c5c8868d2f01831708d57de3b9d0f2befbae3836418e3242b8
Date: Mon, 10 Mar 2025 11:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741606133
