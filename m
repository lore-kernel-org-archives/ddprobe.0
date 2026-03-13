Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F963C4544
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773418494; cv=none; b=BMzqaNwtFG9FtGYQqyoTLc6bWXucEmgwb1JZYPWiYWwwuCAbgTh+IS3YVixSOJlYP7Aj5I8cNm9WFRhmeJLJWrCZayJgqMrue25/D4lycS9X1N19CRgWVQ/EZCxyj+qiG379pZ2omdb7fOhKPluWIRe6/tppVEf4hJBr3V2SxPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773418494; c=relaxed/simple;
	bh=jdl6afSslieWEISrY8dzNOZnsdMT04C4M1ohN+p305Y=;
	h=To:Subject:From:Message-Id:Date; b=DYAwQvjE5kZfoeN7xsTZ0nG34GcbFysMCI60G5gwbL90Ofa9mqi5SkGgBKMPccED2N02JgCp9E7ybxa2G1jaDbo9TweVmnzwiXa6EEehJp3IfoxftPpEKaoWVWTGsXTr5JhmkaNhKBQwNAs7kAQNG2nAV2+trL/FWrocEEkES24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBUcUqlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBUcUqlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D65C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773418493;
	bh=jdl6afSslieWEISrY8dzNOZnsdMT04C4M1ohN+p305Y=;
	h=To:Subject:From:Date:From;
	b=OBUcUqlOTAGMr/cLnPacnt8Vqs7bIzHsQS/EhXMBjILE4xppTDtjHsf09XeATlFIk
	 ovdFjk+c9KISsMTrmZkagPGtOFpNuCgk5+xp5NSBaoCCYUfEUqjdq0XgmEJhQhpvST
	 wDbxE542OPTuVAmBxPReht7Tpby7KQsvNBVguggITrwx2paTy8CsStYyj/vencHK1I
	 ZUbn+X8r1tC5o7YaAc1q2RkhPAuy3N/Hjgd+w+NbTDNl2SO74zOWMJ6LXAkjE0onOq
	 +wc/yg/cJoqWc4lYdEQRj5XWm0PMeMDxYRkxZA/0QwZ1V+Ecv/UGpFKtFUo/jBAKfL
	 arMdOnbTOFvLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95995107BCC6
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341849358.29169.9733983083495705861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9adab3b0233e2890b43d73af641c4463eeaf9069f3cd927bd8272d4fe4531c
Date: Fri, 13 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773418493
