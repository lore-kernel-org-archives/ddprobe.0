Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58325B672
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780800274; cv=none; b=VGJddb3INJRiKG0F5ZRv3yQsVBfWHE7fq0YWOuyCBh/n1KxXEHWLzndWPdlbWd4x3qgzB/lA31hrjtMZCUnNMjjUE6REC5AR5CaQyKaZdOBFUpo6zU+Ls1/yKrMPOEtm4a5UXEOy2AhFBndaAe4/1MI0Lv+YvddMFYP6CzOS+dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780800274; c=relaxed/simple;
	bh=+bQyLbJ6SEmcBKIPP3dCXxMEovaH67UJ/9ZvPaFj9GM=;
	h=To:Subject:From:Message-Id:Date; b=bzeDkHaKCcY8TRSNlOl2uJapw1TQMdH3AGy3hh2lEGOomINTUcx4O5No3ysNswLjLGcZsUURYug4LhkYncPJSQaYQilf0YynP4zZ+NtjYrhAZ2Ac2iE1RcrogOx9hJcgg11XpyOf9OvlcMwid9uyw2+wr9Faz3pNbGJwzNUWEa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORb+Oks2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORb+Oks2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81E3C2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780800273;
	bh=+bQyLbJ6SEmcBKIPP3dCXxMEovaH67UJ/9ZvPaFj9GM=;
	h=To:Subject:From:Date:From;
	b=ORb+Oks22nBW4BDOFyeWjiTagvkdJ8cBnHTrelLYoGSuuhhO+E7OqbX6Bu/88tswk
	 baaTMISJNrkTDSNjnN/CoEnjVDQix5Aobu3+W3qhbBsccxgd4NhZA1noU1/EZYpXJp
	 b5XC2pUQyvESIACLa7IkcUgtMilG23qi6X1127PEVFtYDwfFQgQOheziPHsj8d4+dG
	 a0aZaayBvYNVjKe3eveYrPc/KSn2ulNsgkc8zy1oz4qv5lwZmMBKC4YIv38B90ujs4
	 jjowGTyb9wURAljIJp5S7zVzduP1c/S1dnsm+slGerGwaawBuM4+8C1+QXSYoPHvcW
	 g/n5Z2bEp0fBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4AACD8C85
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080027369.1580.2179272885255254155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9f00af55be0bf97c0de2177cc126eac52599b7cae9e4631e28517c56eb3142
Date: Sun, 07 Jun 2026 02:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780800273
