Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463E021D3E2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746703794; cv=none; b=PG8VkCHJe/NcqFUU/8hr2+XBB7zBR49f51jXz1KIOyj4r2WDwFQqJa20w+DuN2SyFJZgOrZGbi45XkNuOcU0L8fmnyUgNwsuWwC7g/vw4z6+6VY1uLouO7ynMzkhTOztX0RaeqXvnIcGfXvvIL4UElFNIeok45DnhWmxqeHFYmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746703794; c=relaxed/simple;
	bh=7ooUPypVRGPOZjN1zekq6Uxvt4pPikHq2PpHXxTVa+0=;
	h=To:Subject:From:Message-Id:Date; b=rKTSslv6ClksBN2ECpdxNPfNG3zQGFcM+jqK5/ntAmwiRef1rX41NX/9Ah46mufRQM4YDtk+GYrnaHfu0eUFYFWms91bR/KhnpgYDBL00wkXJsmTr3PeR+lKvk53LCM1PCff75i+dOvHFERdF9oKyh9YMezD8HXxFRW0unY0hDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gz9J/aUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gz9J/aUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E22C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746703793;
	bh=7ooUPypVRGPOZjN1zekq6Uxvt4pPikHq2PpHXxTVa+0=;
	h=To:Subject:From:Date:From;
	b=gz9J/aUEv96IHCCe90peut77K5qYdguG0WXZ+QnT6s7/D70fm/v71oCVi0fbBt/eQ
	 pRCweLHUb8qhD9/GabqNLesKwraFSodubZVaGE2s3i1fRSWT1HzwiWUxus9ANwAtHZ
	 4Jj9JI1CIWXdWtqkD17RlioMEUfX008kVssfcDXMQJ2Ms1TLstcRCh8jnq8/5l0+Mb
	 okSPN1ogFWnNkYSwbaKWdQviv5P6MKABqQeAyxhyqBqPpZP9PbtkCenEPuZP+G1EeE
	 Og6U+2ANzGnMkvG5I/LNPY5DC71kUep3VdkAvyGSSNbxylwASVVZ63QUMjcqOzK9vp
	 laJtPEymRhjEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E641C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174670379357.32547.2501778620130313332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc65ebbf92896a64835567540b319d646348bc000770c95a3e75074c990c811
Date: Thu, 08 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746703793
