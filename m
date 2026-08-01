Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E8136195D
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785544234; cv=none; b=PDVlMbdxhKzEuGuotPA6ioZfjQq5fwsABtkb1a7klhc83FRP0r+FNtyQAIJmfRujyTDx0mtW+unkmqtXeWG/gLq+f7LyrLiCaogesin7kR2BfqcfrU80F9Czegm2+S/ZxaZk2HX8Zcptw1szZ5xPOlvCJDoDrdGmGsDEcgzdoCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785544234; c=relaxed/simple;
	bh=J0MwLhDErRndPnjXr4xeGNF0sovVLPi11YYW3JuelPY=;
	h=To:Subject:From:Message-Id:Date; b=b/JBmaHc+PHBacpKUWoUrCUP4vyZC7QPAdwtVV4ueAGypWvs7B8fYgzwQyLeUt2XoOiQUqUWF+XIcujxyI3JQ7PjdYJpwHwBH+WnhscLIaklkJeVt+hQrH5xG0EC4pqnhOthBRYjYs0Cj+NM3EWwGvMa6r7z9t4ebfSsYUq4YSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P269gvQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P269gvQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D462FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785544233;
	bh=J0MwLhDErRndPnjXr4xeGNF0sovVLPi11YYW3JuelPY=;
	h=To:Subject:From:Date:From;
	b=P269gvQ5vjOZEFn+PkTlizialcIvYxth84iWOy3P4FixIgjKJUDgCQiR8TyBzE8Rs
	 gp3BKxqA1y4goqrpe4vpT+rTG3XUNEpz3bVuJ3r04Y8K4iXEa17pxks5iuuGtlSbUu
	 JeBh3nA5p9ebo+34BcSa70t4GerjZx9Md1NnnWD3JiPriIlPHaWQcVAqvgZeAO1Gds
	 +NMnGFCbKa63ez7sPMLILozHbfQfEKDnNsEkR2JeJceHD5hsk3+qHTcXyXto2x1zsN
	 rcUJaPP06hAcCSehj/bvtANFk894tu7d8XAl3Oelp6dq9/X7JW++xAJhJPVLlPGmU0
	 AOphCe5VI6K/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB5FC5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554423369.9674.18207661076326244159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3b4a6b02b83a74eb4f8882f534ab0bd72890135e87396c67d019a8ff6cac47
Date: Sat, 01 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785544233
