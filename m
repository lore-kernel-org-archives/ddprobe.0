Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B852E22B5
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783148314; cv=none; b=jPMJPCw4O6lWH3Ixs/b74/Ntg4XMIWmCxbyUIuaWXw2brS7OEZFwiutAg/o/hvCeefJ91swwvOsUd7OyRMIudnCl4gGdnrE1bpp6bX2QwUarMBJAk1EzCvQXYelGbF/1QNdIDlI6u8FqPPbvWRSq7cyT6JwEqMCj57A+FiWioJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783148314; c=relaxed/simple;
	bh=6yp8I68gVN7bLSCX9PYgoNsuw8ki/Hl/tvovVfZ3uko=;
	h=To:Subject:From:Message-Id:Date; b=ZYttjvrGnqdsGcc4G2GC8MOULOLiyY8VwxEVFg7oX6ugIGhISf6kajmMM3Lg0OkqvxGGzJRLpF5eEu1aGSx6T9/95/Qc1CBGA9jTkJwCronyWo44QkrmY4TnYcgg3A4mJFsAE91FE9A13ewU/PmKNatMGny2JKpNVbCp914JTZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esQ6xSju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esQ6xSju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC524C2BCC6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783148313;
	bh=6yp8I68gVN7bLSCX9PYgoNsuw8ki/Hl/tvovVfZ3uko=;
	h=To:Subject:From:Date:From;
	b=esQ6xSjuyvTM10Izd/ykSaPnooc6MyT/EhnqIQDnGzepOtCa1APwGjyYFroefF+bn
	 XfxNtx9AHn34y2uhrYl1ll4RzmbZZsXnsx6TsDppbP2olC1FHTSW0+XmSWttsKz3y3
	 trKjvnmLN2K/d3Yer3LoQIUaHQ3ZYYw3y7tZ/Dmj6N4s+cdUdWew4oeDLstLT7ZEXP
	 a90P2QJ76Os7MyAudY+Rnrb9YTL4AkdLAKtrne8SSf5rArlwcSsqN9EiAhrPAw75qh
	 3fStEqoRQlXoZG+VDtaZ3+0No1owioJYHf5jby0QBwedj8r7Dk86wfOf6JHd2MZkzC
	 hjBxWsPnfbBVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD29C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178314831368.24892.12446124625626590557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ae6db849d27b9924183bba8e2f16e71eeda98472be595a70df2b165e529ae4
Date: Sat, 04 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783148313
