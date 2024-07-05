Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724A97E9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 04:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720154723; cv=none; b=EttfDfoDiDTlr4wi4evI8PRB2bkkddnLScH3Y/ju21lEOSNrMr+BuNdigQfHyDPy3sbcFtRXM1bJmiF4U0EqC/OBEvEcBTdJg79xIoR/K81sh+6XtD0fAJfCfGzoZVSoiOFt0eGxuLZLxT2tQuXzlJCQJE2g6nZBvMwgSZApFB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720154723; c=relaxed/simple;
	bh=INyvEnSNxaUzWoN5zeMd5E3Z4K/Sk+Rf2PUZSBzNHd0=;
	h=To:Subject:From:Message-Id:Date; b=nyMlhHM/0EAzQ7Pdr0rmCb6UzlYUnCV5JkmCIV67a+YycCSFBEXfDt4EjlaBemD/jFD5vOHuaZHwEarZdpofXMAAVXxZSPznVm51MTttOlwqDXgJflOjeOcHd5IZQAgD6wMOy698BlA0IVb6l2wWEjtEjcRdQ45WEldMX3yKVPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPp0VNeh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPp0VNeh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2086C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 04:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720154722;
	bh=INyvEnSNxaUzWoN5zeMd5E3Z4K/Sk+Rf2PUZSBzNHd0=;
	h=To:Subject:From:Date:From;
	b=VPp0VNehtUvknkPvmsK5GhHDekwN5tVMYZyFd7AVb6uwYgEK4934koyYLbCDuoYOU
	 rGS+TLPY6N6USqJuXd6zUe8lk078XsG8GdsMbFh1T+EzUVi47+Qkp8WDb4Q6g2jhE+
	 jebzLmmfhe4ZL3VoV/YLyJkpCa1DGmKtky1v7XLCVOAE5CRnORq+ReNWdpVmjqVnZW
	 ODHtWOmLblz5g8He8MimwSLUYjty7b7t32tF6SaBlc84MTDWwhU8w5zS8Bkv2gTtQz
	 9xRs5OO3JUkhDhm5q8g1Fg1vByDFjVMUJT7vmFQl+wNr5Pf/U7qk+QLqN5hQTjmxbT
	 4odPnbkSpDG+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2481C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 04:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172015472278.25569.418196940500970499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5384725079b336537dce8f7911f9430de8891eec94ddc06fe5f9a9d840031201
Date: Fri, 05 Jul 2024 04:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720154722
