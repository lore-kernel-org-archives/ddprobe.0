Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533CD70820
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738656954; cv=none; b=r0Yfo1ChEuF/NgXo6BYGlWpcaexrZRJDLBTDLwZcS2c5Kq5SWfKFlJl03UMWtdMdZ1IhqArJgfefI7G17rD3yLfio3FEctxFbwU330QkbL6PZ2qlEaPNsIULia9MyA8kfmKhuCYkYPlMlSVQHgDcwI7JDFwZRwnf64k42e28N1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738656954; c=relaxed/simple;
	bh=Bjtz2+e1Dz7YQcwVQr5EQeskKXyGP18139zOHNIjRts=;
	h=To:Subject:From:Message-Id:Date; b=f+MlNUqMcVcHMPqO+W0RIvYQ9+kSKoBjQKVLzN94hfmf4Jgxnt2yvVtXbHNE4JXWHeJ55HCm+8NdTiF3XNUpyheGKfE7I9hlLlIFzo0uUTTS6rDxvNctPSRRQbaHF5a+fpNzJyD+C9T9BW4MKGClZjW33KKa7rJp4aJdTQXMv3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQWKE51d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQWKE51d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF960C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738656953;
	bh=Bjtz2+e1Dz7YQcwVQr5EQeskKXyGP18139zOHNIjRts=;
	h=To:Subject:From:Date:From;
	b=TQWKE51dEEph6vvYdO5MlR2joSIPdSE/9nqWDJFrRCAuMyGuWER085roQSOJWhIVv
	 XoOPscF6pa8FRAQV2fCwuHCWbkp+gbz8QPHlhRp6UeQkl+dmGj9QZrFFev5vkUNTlY
	 ZAqUihsW2HbskBSMCftVInQC5o4ZjoNDu73FeRrG1kil1SMsDNcDV+MGOOgC9BCW3N
	 obv+cr3zgmYa9e1AGa35RppgP1WYIILbZZOv+hc2vrCSI5iwn9TqUpQS05deHXATWT
	 uoeH6XhGiKUCzjE/wJUJoc5Uokfyi2EWPGyI1Q9DD5fmILFbh/Wip/CxqWQeT8Oxp0
	 FIExClZUhBlJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954DEC02197
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173865695360.6803.10222812819998632584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958912542ece28d4bcde1247a8e3da21af2b50c142ddce79dadd8ec300c35d57
Date: Tue, 04 Feb 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738656953
