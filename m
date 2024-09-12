Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6411E49F
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726145754; cv=none; b=a9x66zBQF9gaalpEJTC8Ry1968TcLUTbROiSw1x0UuLa6jFoy9T7vj3xHDT8C9jPMYQz9QT/jFDKl96L6TLsFYu5UoL8BIvISctHBiewwj9WxJjDOEGBxOL74ihF24/39aAzRIcHVGgo/TESqc/PY9NvNs8GYmDXW1dqvJ+Vp1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726145754; c=relaxed/simple;
	bh=XgPqZTBmqHvdgx/XKIeLb2n37TVa3vg46BXGTYRg5Gc=;
	h=To:Subject:From:Message-Id:Date; b=m4XIgMthxRD1peoh6HAKOIO4N/DYNe4XXTJUYHAumP0R+l4PQfIOzdFIirBNWkqlHDOkBWxmZmvd/xpDCalne0qoq/PiUD8KkYzW1F7Ya+CtSHenqKtxFpeQAOB6WIMC6O4+b2nevKlnX/thQyg8qy3Hm9d0e1HsSOtEckbnqqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aV/GEDRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aV/GEDRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0B6C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726145753;
	bh=XgPqZTBmqHvdgx/XKIeLb2n37TVa3vg46BXGTYRg5Gc=;
	h=To:Subject:From:Date:From;
	b=aV/GEDRIcvbC+m3ssLnslxo4JV6U/LHh/z6VnwDnLor8hh/p6Ng/zT5b8XIGtzPXJ
	 l9KSuYHgYcSo8VN6fI4Yw+X1x7MhtKB6B1z42YDf/FXzV0kKwEiL1HEP3epEinz7Ye
	 FasDWzFlZU2luoTWB6ioKFaYM3a65Qt6xCWtuUNxkvNGSnsMHW2QpWwu0SNgzDxyKY
	 3feJ+L0oieYi0g4LnJJsn06gd0G8UEwJQb/i2KFtMyDY+mQIsO1cPjqOuPtaFNaQ1B
	 983p2hvb6fs0GGt6CSl0eJ4OCKuEPl1PdD6uELOb7BGimGZmUw0sDZS9JQ6yosWdSD
	 FseIYaNWmTddA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53C3EEB59F
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172614575366.1444.16386652560118428292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb9e95af48edfb5cfa1654f29ab755c39cbfed379a4929f242e7403d1f810fe
Date: Thu, 12 Sep 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726145753
