Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B694D8CE
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725836754; cv=none; b=FdhjJlNntKVMA4lB3/fnFutqw+jGRC/T3YbGDOvan6HkPNCqnLpj0hhxm2u/wOwSEuLhpHFwebFTY5fM7JNx1njAS7LgIE4eFg3KHnnXfCXo2cdz29wyHHffBNxzhZaTH9to5ecAPYRhqDaMDrgc6v5algoRBd3xnp2MtJLmKXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725836754; c=relaxed/simple;
	bh=GxWhZ4Sdkf91rE3OZCZ8GDkG6wasxYRHjwOqGOoduR4=;
	h=To:Subject:From:Message-Id:Date; b=he7gBXmmnp7avSZYyUqRoP0M4wyc1WV32T+qNRRo64d53A1SH7c97RUzl36oYF+EXx2SToXAxnJXUGx0bZwrAzSoO/zEA0MN+Az6LPqUn7iBw1j0pLSwYznBKjA+RkBCTquokmcVClzCmWz4p7iU5tpLfo3mxHgghtf1gOsvilE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0+DH4Nd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0+DH4Nd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC792C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725836753;
	bh=GxWhZ4Sdkf91rE3OZCZ8GDkG6wasxYRHjwOqGOoduR4=;
	h=To:Subject:From:Date:From;
	b=b0+DH4NdhyJ4Ibnv9k+P6aFmyj4q0xC9o0XhB14JybG4V2H7qSfco0Vp7+od3bSv+
	 Dgarq6iObsKsekywFu4Oimnal3DyQantCT4IlyfTZ+NZaxDN1BriUyeDXhf78ZZAcb
	 FQWYgpXMq+CpA/vj13DF04veah8jDjUG7w+kDXFZaN7HHa/4MZkvKeG/aDkH7I/9QW
	 iTTBR7TQoVtgSu2LMsZfr+2gcZmGiCuXzbQ81qz6mU9+hiOd3v9IQJ6AVswTbERYsz
	 HsTMCWVj8SudOLnndgiTneCOviAMC8YCNMq+iAAQXRxITqA81BeBuwcxCH9M4uPw/X
	 uJ7SpIYWUH9jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9380FECE577
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172583675358.24891.17814586512273666154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 046ae643eeeac497cae29f29dc014a0122d699948f845870767c8789c05a5d56
Date: Sun, 08 Sep 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725836753
