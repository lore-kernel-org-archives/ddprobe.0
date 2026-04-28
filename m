Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDF3425CC9
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777384654; cv=none; b=tYADwaUHrZWFsLgUkS/4LkJf59J6zci/3xfBfgPDIhXnWzetrHk01fTplscxiv8VwR8KEYhs34Nsl4DT2nJuqz8bBffDd/R1N4yyk6pzVodWYmh7W6sKA5MRxih5a9n+LDE24q/jZijSrlfjw3I4LsDwaJwvFT5TsrX/mmKPBbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777384654; c=relaxed/simple;
	bh=3uPcQSJRvjSNX3lrxffz07kXidRv4akBhO+TUvKixm0=;
	h=To:Subject:From:Message-Id:Date; b=VfRVZbSdXxCYjX2JNZvBkuwqAntRbO+UpBhkyw5Tq0H3SJ9vIc21lxUbc+m0yjBKR8prsqPYx3rGfWsQrWYoXbQw/6qEROl5IjFH6XrVAi6IMVBz3hXBVz0MpJaAgTtrRbexHC5O8o+AKGJY+ZKzVe/BwIPDg0RWWTFjowM/UM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLs/Coee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLs/Coee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA079C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777384653;
	bh=3uPcQSJRvjSNX3lrxffz07kXidRv4akBhO+TUvKixm0=;
	h=To:Subject:From:Date:From;
	b=HLs/Coee1//+UvNa+zpEvr12IyLQusOcemNDcbYSoJ4dQNueYmF3kPc+vUpcFuAuY
	 NZqE001hp1mVh4V7ADWVIL4c5s2AjbqGkB7EmePN5bhw62EJmukWAN9FkktlqTyqFl
	 1Y3vne+SCaratEs83+ki7GyaOyTrXpCqbkSprl7CQpKT6IXiTQrxnt1EVKHuWeyjTX
	 /3Ud1bwM+t97iB1dxSJcMNOaNLXjIMTk0pVCP33+DWzNnzd0b788V07wKVSBThxH9S
	 eNcW2qMJkyFmwfBvL5PlURt8Ol5t7M4DerKQyaT+CPcyboqp4UGAUySfjXccqPSiRw
	 0WM9ahSH/Juag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA036FF886D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177738465368.28058.2275787908481448594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e077e9547467cc7637bd62000e9fae349bf4623e0b2051cb6681f22153808a2d
Date: Tue, 28 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777384653
