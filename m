Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331662931FB
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788297034; cv=none; b=dd0wdC4DK/JJPwBbm1dfA9Lq1scqdQTAKdnF4IoIjHXGcbAzE/p8mARzxCJnuNCRxiK3LHvhbIHUegcSonQ1HfNYozs6/i23HgA5WpixyVmdXEMIFD4h6xHPIIiX7inAZBudo6wGoW/nuzj8yj7Fuh8W42UCGCbomJL9QJeHxb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788297034; c=relaxed/simple;
	bh=39T88n82QAA5a52vaurcbWN5OjLbybQdaICeQSjZDKc=;
	h=To:Subject:From:Message-Id:Date; b=I5JRVL4/46KddNPQMP076yZw+PC9YSoTC5tQh2nRZ4e0l9+Ccz+43677rIjC64iUUdhJecYq7PQQIHtGA4/199u9ybfcU36BQrZWj2JvwGcPkgie2CMG1ck30yN6ZHSHwZN7kcG+S/fmcjGR6orla8787nx0XWwPSycq7+54Pfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLzEbS6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLzEbS6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC22BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788297033;
	bh=39T88n82QAA5a52vaurcbWN5OjLbybQdaICeQSjZDKc=;
	h=To:Subject:From:Date:From;
	b=kLzEbS6Osjsm9UtiM+Jt6Eur1zKKD0+SUMTjPE9LXA90o651CMpFQZ9iMRY1qSM0z
	 X/yyjAeV9EdpMsdO/k02SjE61nRWEbB4PHJYOxh9XHguhh1gCEgccRYv3uzXzIBbqH
	 R5S8D3eD2hMgDnq/npFZbR7x71EszDReTOvnl4h0G8FDt/gmrJFsZKMDtp1JaqoKdT
	 MIoAwA3UWPE/tz1IrybYlkSN6N8OVSit3R5EpyjdXp7ZD14XmnwNdaqDDttX3yiOv7
	 UfC5Z749bOTmS/Mbg+MAWyHWpFvj8iilKxMvzsy+AmzXS6X2YGcIt0+PchcAOBXfLq
	 /3m/AiUHSgAhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F25C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178829703371.4631.5939152574748886198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf72b37ea76fdff0affefbd16a2a1982cdafa5d3ec607524943d42217cafb91
Date: Tue, 01 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788297033
