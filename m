Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF594341055
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767617634; cv=none; b=X527Wrt18X43OD1t8q8iksNyPQfzyGfAM5XYMTg5eCCQl3/slOfSInXqVTCItOyGFvdKq+y7ozqLkN0h88FVIM8NRch0XISOMNaFJts+L4JOYmeoJO2QHLFW5pviFuKshmvD0N1AOBkdw19aMmnJm/zuHDemm4+jMutB+H/LIOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767617634; c=relaxed/simple;
	bh=rEpYaNdXk2BGGxZ1XrqTxolfZPdI+tQlsRSh3+N69bk=;
	h=To:Subject:From:Message-Id:Date; b=r2Bxum6tOzYYD4yA0ejFcyEJFQij/2HnWC5GE84D+SReVtId9QtGEdh+LEV195c+XlxAxP9oKU1Vo4P8KYHhG0wTJERFL72oAMXUl3vZqolcv8nSYmtgz7soCEfarvc9n844SRujMUmRCiOpv4kvkyw2GKe3pjzQYFIYCqpiQ5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3JBSlB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3JBSlB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCC7C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767617633;
	bh=rEpYaNdXk2BGGxZ1XrqTxolfZPdI+tQlsRSh3+N69bk=;
	h=To:Subject:From:Date:From;
	b=l3JBSlB9OmDk4tvlbFPHCsEyXnhO5n6CsQXJ3Ou3I3w8fOqJZU4Uyya9D/CLovf1s
	 mpk+8AXG8sPu0dJTOswqhEj3JYYu7LtFS6g2hwYJEb566j06PCJu/qJofwfquKV3Cw
	 gwsTQxIdH8vzvN20i/bdWxzRbqMIHhEy6hXHqgYHtypyKk5HfXR0cGVE2bBHxUSTje
	 BjuGnPligG39HMtZmdb0dMsOmj9ueX7T36XfpMUddLA9xCY6ZGWiAV4pqTDn3nV173
	 uij1GgAGI/17SuDYldpk3J+tDuhrHf19DlhaWeMvbLkMGSUDDAWcCMuF/n9W+ltLIv
	 FKLiAgAAZlSxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C5DC79F87
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176761763358.32465.5724933785012102375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ca4af0749a17ae645c961f120a7c4bf9735a731e940364311eed4d193b0ff4
Date: Mon, 05 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767617633
