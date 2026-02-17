Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123773EBF02
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771296294; cv=none; b=fLOrQ8VZT2UkMOh9JYt02kxhh58Hq4nWH3hbNKYMpoEb8vvi6i0NGKi/8dYIXQkmHDKHk8+N3kw9oOog3VCWdcLC7P4GLP13BiASeHUpGtdZ1JxvdYJvfcEIx+yH/CVD1+jz/lg+I8Wa5O4bhJZ66PRHAPJbUqOPUL4YOebj1qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771296294; c=relaxed/simple;
	bh=Kg363XLzQ4TUHouHuw79yJCMBi1RmUxni+FKFBMpM2U=;
	h=To:Subject:From:Message-Id:Date; b=ixR8xa6xECvbz9vH7rQdb+RRFUKazpT93IXwpZnaE87Sd2gFGz0j/WxhZSWB8770DYEY/wvJLMFcv2QUyudZWVT71X/2rCyDvfTEoEZZAJE3MEMz/HNKErYI5uoNlUZSOCP4ITuHaR6LcKpl1+t+UCiuvkldYuInnDTd9CysY5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4PaRyt1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4PaRyt1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29DFC116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771296293;
	bh=Kg363XLzQ4TUHouHuw79yJCMBi1RmUxni+FKFBMpM2U=;
	h=To:Subject:From:Date:From;
	b=T4PaRyt1GtKK0MlTYu5MGTk8+e3JT1xGrG3AmCOe9XG+5/Fm1yxS7YLW9bu31meft
	 aS2v579RAVuey2zTJBBgD1cboLgEUfp0kVeZ+2izMb60f3Y/IUvBrV13C833t/XVew
	 f36UsQJEHy9C5x9cZmjROkSaOng5BveAn4sIhSq45lmGcyLzaTaEIudrrtdq+TTKCi
	 kgp8gVwgj2oFVD7ga25VyaAGIjHtWZMeY7IVuGuhvYfG7oP6y1/zBIhVIQoIAFD424
	 hMO30585Omzvk+DUPkZqacyaxJ2XMAmZp6Xk+UjMMNHP+3Jfgjd832B9vyOQRNL5Tr
	 jG+ciM+GwJ+cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F7E83848
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129629357.3038.12215798396627338610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b00e316ac9dc83d12e62a82bf892b8089057c4f119285e29a78b03a75eed9ee
Date: Tue, 17 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771296293
