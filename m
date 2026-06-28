Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44383E555
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782686314; cv=none; b=bC0dscvmwcwKST87BwH/pAjhXNVcP7BmI+ePAhml1kV5/3oDAbGmq09NcaCq/FllPTcKoKtBJWaOM1kzzMs34zhg2mic6Plywb5MBUB/NBMQxDkC5plTHXaDVCMZWnyQY0pYejZZtEn97DTlBMBlB0JAxvBuCGkF8/F383V843E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782686314; c=relaxed/simple;
	bh=6FWKq59h2oFC1Z1NyyfPxyr+imMxzVNeP6UAfrKbkkI=;
	h=To:Subject:From:Message-Id:Date; b=UAb+49hlfYR4I5+igTHb+gd4bps7O5SxmGV0MZfhoNovgno2oniA+nw1IzaveJkUbZNaWuaUtigH6cNcEz5ovcoETN4KdMPBjeGtsAuP96uRSn7nAv7xikceCTWTLzyNPVIpfh/DpHGEajoA4BUcjOy4ZrhJ7icvSb83gTPWga4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRt8nqTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRt8nqTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF165C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782686313;
	bh=6FWKq59h2oFC1Z1NyyfPxyr+imMxzVNeP6UAfrKbkkI=;
	h=To:Subject:From:Date:From;
	b=BRt8nqTiUaSCdLlr/ePxYuDk+auKPAOWxg0z3NQ/u6Vcfg350gMNzxRBW1P7jgoxb
	 Nn8ExTU0LjbOJFoZCmHXQCk1J0f10YOQvWOtHiTkkYeh3VemX34WnycHJabpmgqUx0
	 iaNd4QFm1ppLj3A97Rocdaqe/rbGm94rdcnY3ja61sargdjXmQcIRiRKzwrNRfujPU
	 NvOnAyqldzaTWS85y9fl2r8mY/gbdDs94mNiVAgEGbSnhj0VAHuODHT99HAa6EiRfa
	 61jHWm9XDogni3yFBdUbT+ZTGpEPpI6nXzdIL29v7dYetUQPcap/Arf8YNynO4wf0Y
	 UJB+w0v+tL27w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC6DC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268631368.17326.13811299463250514976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256e1968127944c737fb5fc504abb214ec76a3dc9f82605331973a8fe49c15e9
Date: Sun, 28 Jun 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782686313
