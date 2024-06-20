Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63188157E84
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 11:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718884223; cv=none; b=UIjAhARsRPuHJfpN5mpmA4Fe0w+d5loc36/evQxRgUwNUQtnhM2JP60dXmBdx/QXBHE9QFJAmeawxlwiNlJ+SNASq/BvaGt69HJdlkPj6KxIAsrphn84Ssli/sxc/3v2YuBjROAELs/GFldZwV4utcEATXz3Llop78XqXtE3I1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718884223; c=relaxed/simple;
	bh=qTFB1sYHR7SxIOnZ5GixndCjjadNVlS8V/V5EWuMkwc=;
	h=To:Subject:From:Message-Id:Date; b=mVml0o7fs4FZOB2MHkO6yw+CosEcDR+Ao+HibWlvpL6MaMVmGkjV7DqW0zjJmZA5pW3S6r1/7HLBzt3buF0v4IUPw+5uWrrcS6NQizsb/mbaMyVtDKsNkih3UaCdHt6rLSesYmhMrnjFV0kCvt00t1A7//p8rf5NRHSeXigWVE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlcVywjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlcVywjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA09C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 11:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718884222;
	bh=qTFB1sYHR7SxIOnZ5GixndCjjadNVlS8V/V5EWuMkwc=;
	h=To:Subject:From:Date:From;
	b=AlcVywjjFhVuSWG2ULV4QcAba+9g0j2Bo/0SItoMm0kZQLc9WYnxZ+dBM6qBle5mM
	 gFRpAk9/noohh/Ptwr0JtYUL2JAqkig3ErAbX/Tu+pIa7SFdJmoqZ5pX4NuA7LGJyO
	 d+ZvWOYB+ZVMd0T3SBzV6ZasE7yFWzJBmtwZcDdHue6NePh5dm0k+z3eE2umiLHw+T
	 RsvQO4ChfRy6SfyWFrUr1ivypPA6v9EFuSvgj+nNQeTbAfFmeizHais3pC4GLSfaVF
	 3Z5ZD2ild2UpWJPEETWBKgp5IIl7nBOYlmtL3g02fsvM3eYVlJ46twVwifIYV4ap5t
	 3660KN2bVWJvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C144DC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 11:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171888422276.1645.6550249196274526695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58c806c142e5c7b7780aba5933bf8e349a83ab85f995f71629767af07de652a1
Date: Thu, 20 Jun 2024 11:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718884222
