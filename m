Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C1C20FAB2
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766043834; cv=none; b=fo+SqjGArpEx+6D1Gu/+f85Or9A6w1DvrWkBRV6Gamx21tyf6L6Pn9eucbKsAKf6xKnJAuA/Mxnn18yfF5O0TGUVu6kw/HTn/W9hVSzwpPCRrQDMb6xqISHsAOuJGJLx/gX6zs5G/TNHNoNSlJLwixmfI9C5OOx9J+DUH2DwU+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766043834; c=relaxed/simple;
	bh=MtXmwX5LrBEoDluXKHvNXSVaWBF80hP8IzPixVffftI=;
	h=To:Subject:From:Message-Id:Date; b=tibQNW3yOdacQfOVpMX/UABqRBnEVMAchWHIxHj4SuWHjRR8XoilctZRJNcFITSelRJ0wEUEhZZtMcqAgMFnbrn06cTbnEBBm/k6zFtWfz8xS6BZC3R8bnlTiZhuMLjvKKf7KAHR4KOimUQPJz/60ZDQK1d5RW3sgy4RXgAALS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLVw24gt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLVw24gt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F219C113D0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766043833;
	bh=MtXmwX5LrBEoDluXKHvNXSVaWBF80hP8IzPixVffftI=;
	h=To:Subject:From:Date:From;
	b=VLVw24gtaG0REyxDuITs0uNyqliZP/zoeC5v7SpIgeigw76683B2zA8NcATmAaaSc
	 5LjyFOvsu+1xGC7suOOJYTOnB67MGQEdTiM/PIlXL7XXWOLH4sKrCvmy8UeBKuq2Xd
	 9eUJFARpm3n+3vHmF90IQnzIYEsLTcTL7aBtw5/myCNE3ITtRfTJLE97CbY0x1QVx5
	 HUYwrnZ2q+2GtqnmEZ3hNKwyLJl2cadhKxj4Aq2TFZ0GA2KCKZGez/ejYWSLd7IqLq
	 +1b36iD8DapUp4//X/N48AFkaDDUJwT8kpj2Zyitp5g3e9aN0bwmkg1EQbLKNti1II
	 dQx31ZCzZcyuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9073CD68BE8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604383358.5529.5581102958930995384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf1af47f99b39af73172d9c4bd36cd7584dfdc9107eea3ee5dd81c6e3febff5
Date: Thu, 18 Dec 2025 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766043833
