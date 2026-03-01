Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C344D2FE598
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772330693; cv=none; b=cXUy4inhN4q57cOSDYa9ceh1RJ8FyjK5kv0XzdOSocuwCIxJhlmb69yLxL/DTtkugZmGBTzBlCCZLrHN+KcKMOpDIUyWuQCssT17gyEaG8j7Xwd34+3Ss7aNCdZ2enqIfu30iiStZHMVuLi/onvdUlMwplMGR4fFn0EirZD8Xcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772330693; c=relaxed/simple;
	bh=jOPIFXtty0if6lvxyoekQcE14ksGphRnuk/ZQUeOY4k=;
	h=To:Subject:From:Message-Id:Date; b=hoHUnqaXFAuLYIp1BUgn5B11R78cxEkl3gmhQ4ikj/u7JedCA/qSrKKGugdjzH1cJRdCsjp1AxzqvPBg9r1sm2c/Fq9KGpyueWzodVurSFVGcUgXCScYaF7OMM5QihdY65StLdrdn5CTA0MCQ3REHKUBHwhnVLL4C+q8ZexRPGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjWOFs5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjWOFs5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B6DC19425
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772330693;
	bh=jOPIFXtty0if6lvxyoekQcE14ksGphRnuk/ZQUeOY4k=;
	h=To:Subject:From:Date:From;
	b=sjWOFs5mc9qvXndu978a1h9eI7FIa0KGUh/2pe9Q7lKWBW6PxrH5qlsLqXuzWLzgw
	 45jXAf9bDW9YjFVOCf4ug5dQpWT9X7XzXoJy3NWUc0XOmXx5HAgCYQqP5Mmi2PRBr9
	 bozOJIfyrK+zGIuBeLhKHDfRrR70+6lnG+1lCDn1HDzH1SLuH7Q5oquqv9guYXtng6
	 e1BRVUAcWvw8DNmbKgMi8DE+QsEIKLRRIfoUA2L/IfHZ3X8Gt/ympxQ/yCSu11kQ6H
	 S5iqOKsJHF0n9gvp1aWFxeXJo9E4zPknucks0kL6yzXIT3kpg2a/PrxkyqmddluQyE
	 4A999bHxafY0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B6FD0049
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233069360.7768.7068710471079798391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da7fa581be0fe958288539ff5e0873da657aae7f1d6e3fd891d040a1841f7c9
Date: Sun, 01 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772330693
