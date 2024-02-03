Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029A85FDB1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706992097; cv=none; b=Pl/bXp3+QDoROnNf604K1gSB6uRc6uk5reY45MmJyR/4dyNSTbGfPepuhrzwYZGWXXnkfHADBMmaSS4svJRCRjBmpbDWuQC3+OeMt42u5FebqAL0GCCHE/r4Z4H70wt7O4eObEJ6pyEPzGuG68S6vj5rmQJaYhMl9gN7YgV4L8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706992097; c=relaxed/simple;
	bh=ABVdznV/rGuUGi6M/SRRw7q0ZEH7noodyjbCiq7CYGU=;
	h=To:Subject:From:Message-Id:Date; b=ImlKoq/cx3k6HmkbpkMZv/ZWTru0GNCZZON8NEtk+rJH958zqi9ROJlSVhTy7HCt37h4sxgN8kRNklynWPfw7JFB+VkFSCal2TYXxPEmwD2OWcqwRZR0Zvp0/0een1c25Inhpe9gTW46PEtnNPOpJR+/gJaRgWMYnAwnHiEh+e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBRfb6bs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBRfb6bs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF13C433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706992096;
	bh=ABVdznV/rGuUGi6M/SRRw7q0ZEH7noodyjbCiq7CYGU=;
	h=To:Subject:From:Date:From;
	b=sBRfb6bswO2ela5pIFGUvra/vOW20fzqnmitWZlZcVjOKxpqXSu4jsTpLmRmksOyF
	 yor9zvKTBlL/CzIbHSD2VC8yp0Lfgt5cTdUvrmsFnOKcMH9hGsfmWk8eiSBn1UsRot
	 FK5MCByzpkeXY0f3CXQgwLXe4KTWZtL5kKynJ8CtIqKSrVlHiYBwe8l21Q0NIcjvcD
	 AX6tf3YU2EFc9Ea2qiWVvAxlg+xjOP248AR0mwFIVPtcFvjhUY4pWxPC0FZDpI3A6c
	 KLmi7+jIhQnDORlvYVWXjbMIPH/tGobSvEWpAvBRzDifp2TgWXO9NToj0zHYilhX3t
	 7jfFqAxlZKBug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F665C4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170699209637.8345.9221779497477368742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18548239338be46f01763564079df96cf68fda2e70469ede94610f7767a16c75
Date: Sat, 03 Feb 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706992096
