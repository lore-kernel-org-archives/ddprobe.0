Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D50B35CBA3
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763011194; cv=none; b=bos6se5A8HfXfltXcTl1k370wcs+NMc+3UA7z+OZ6fIhjJywXO+Rz0hGoZdBhQNGVFKSzd/uVzfXbVAop0Nwsk1KRxkrLtb/4qy9/o2Ygji/BEQSFkYcKBDx3Gq9/2U2BNiWTrnjBKklVpf/ETR8gGI9gs0XlLmD7rnipXc7nGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763011194; c=relaxed/simple;
	bh=2friuj3YmNpib/fAZYCSOBXLa3fklhOiu7NrnK9Ft6E=;
	h=To:Subject:From:Message-Id:Date; b=MfIYIp6TdIvJnL6a9Eu2bioovwvDHHFckDUQzQVhsKQUFbK9q2SZmynbxAg5rNU2qGARtEjaVuRhpUEs+UUHQE6nBnWXg/3WIGu2j2Io6aPTNADx7/YvPx/nOMrlH7XtHPZQuAoz7n/QirYcJNvdKoNSWNy8UEgosr/OmZY25tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etU/rEna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etU/rEna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E556C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763011193;
	bh=2friuj3YmNpib/fAZYCSOBXLa3fklhOiu7NrnK9Ft6E=;
	h=To:Subject:From:Date:From;
	b=etU/rEnaUQ0QHTJTLZqadE7dYcPAZO8rNY0E9UFjXgr5wZGCssi9tNIw38mMwQeQd
	 CsSBKi9OhySnA3FpVLq3wfsFk1/l1OuriH50zM87iuaRH5mYGMqlBewAvVBFMDkwl/
	 JlNkYvsjia/EPmS+crTj2Nf81BW/aAd7hk956qMYYi5QMzJIYzu6Un/FaKMfad43ul
	 Z5KQSj/Po29irJwFpdMb5AKqHm6pYpDrDX9Cb4N7/YBSa5X00ZWzAkGEeRM3EkjslM
	 uuaWPnGBNjsH5oSOFdL0Sxsl+6o9ArMy7JJEngm/beKKyk+o8aMqksIHDX3jz2p6YH
	 mKA6FH6OhSfMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91999CCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176301119358.11467.6962353825379145201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8eeea8f482a856f1bdbc7dc06b11d2019136dd7bf0e497203418c96d3679754
Date: Thu, 13 Nov 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763011193
