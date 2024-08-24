Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5384B63D5
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724525754; cv=none; b=uV7XrzKe2166ZVaO8+Mx3KXBBezQYDoZEFNHy3ntyid7mSm8jFKxlm9mrZYcwtKBUYoc/btUDbO3DoRlEQH+lQCBtDgr4sLmat6E9az/95M692ppILSSu8YFVFn067g0W9mwWZWve85IrEGJYAsSkLAbiGnzxxlsAxlKQflGkf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724525754; c=relaxed/simple;
	bh=ciDvygjLt6SdsUA//d3ZkvPE/peUDnQ+czJlFO+u9lI=;
	h=To:Subject:From:Message-Id:Date; b=lYSE2E0/kvIzw8DYYki23zu+AkdXEj9Ig89DBxesyEMSuqslcJkH8dTiYJNPR3JAz526woRK0dBUCWNxqsqecYxYfKreJCVLH/NUqWKTX7Rhld9WmR/VSj9udc964ivud+SJcQqJAbHKhr3fpYMqIZBH896//013yY2VAcQBcX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itHlw4Kq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itHlw4Kq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78E9C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724525753;
	bh=ciDvygjLt6SdsUA//d3ZkvPE/peUDnQ+czJlFO+u9lI=;
	h=To:Subject:From:Date:From;
	b=itHlw4Kq5bXMUZtabyIUpiz2XWjfpRoJPx6o40EAEctmqcTWPHJG7iY8sysLv1ZwS
	 MBwJeGrkFVD7KbTrjkDKqZ/P7icCaFmhCY62lWN/ts4Xcl/sJFbcg9Hd1ZaX1BeIVW
	 tUqCgywB83VxJSXHmRSbADG5V5noQu5T9l7KXIAiZbzpNFIqHuJBt62iIumHWWIvCZ
	 m54gOs3A/BxilQBqsBgf6s+ij7vhVYDpD40A3ErsbN/jhOpvwKMWI5FNoVoO85kMac
	 KRDmhhzxM55MAlkhF9HK+V6hhFWggJimLrVVm5UOGhBk3VZVimUEFdyWmGUq9e4P9P
	 ItkOgYRIexEPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71A8C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172452575363.18508.15321587827599443707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de824e792a90ee9fcb6026f80343b60136481c33f43ad61ac8db6339dc38d506
Date: Sat, 24 Aug 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724525753
