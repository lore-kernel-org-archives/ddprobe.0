Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FDD38A73B
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777891054; cv=none; b=SmFsY38ebEn6Aqje+L9Yne5rcKzcoP8ej2v6vpby5SJCDgnhzVfReYufcysfrCDNiWZvKL/WjIBACC5YWGNem3SmWhxUsgiNzq89UjR2uyavNqG8hlLSqjXlY0HQcyozUjbPUrikJWcx4vfTB1lA3N5QmBhZPdb9YHqXGCuQFyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777891054; c=relaxed/simple;
	bh=XVWW7jEDbdGczVa6TcOnkpgnOthdstydbYLxMoJp8ho=;
	h=To:Subject:From:Message-Id:Date; b=NP2TMXN8rPd9nDrTITT4Z+4IhaO4BSLw3gFEJ+PfsDMwq6lA5yoBQMRc6Y8afqJZmiS/HIET816eu30X+M3HzH5T5cJkSV/zVPwdbftbneQWePG6N1UCsVnAef2vBOXDQMcUF9sVxVyuaGcJ1qu4babG1aL1GOGnyX3MvDKjIdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h412i/c/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h412i/c/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFE5C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777891053;
	bh=XVWW7jEDbdGczVa6TcOnkpgnOthdstydbYLxMoJp8ho=;
	h=To:Subject:From:Date:From;
	b=h412i/c/q/FEayhWdSRUEA3X+X2Sq7OGOG3CxsgmRMjqNrRMU0M7ESQnLs9sKSi6H
	 apYSLFb5X1u+BPcOGMNXeDO9q9lg3gL6jJCkvRWtKLMBhBmcckBcPrOgbSFqLlTNOa
	 7fo9afUvTWaBpjIpO6C3aizh2BNX+TFerhnt2CWoY1i8tiK1KVnH6cxN/g35LkjW3q
	 xwJXqtuZpRAiErFN4CrXgoRtENarEOYrB9UEJ3B4UzEfGb4b1okgXwi5UIwRo1vE66
	 3rhiTYr6PJTE8f4HEM1DS+kxMChRyZGLVezK18Pcr2ZAnll73xyfvr+L0CL1k12g6c
	 wuYuf4JUDkM2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8E5CD342C
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177789105368.26647.8003919263416764492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40cfbc447165dd7ff0cc645ee235849354e3cdea2a37ac83259ebea0ed6b234e
Date: Mon, 04 May 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777891053
