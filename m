Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386D0313295
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763119194; cv=none; b=oVH4j9o0rGstuQCgt3kULHsni8GvM9Cxg8qmA+DqvKE9uX95BrlQ2MB8EQeNCSsLqBkHhDb+iXDvwmkBPkwgHnDWRQ5MOUAOmWJCIoMu/so0S6GTO9haUf9itlINB9kfNJ8I5i4wgAg/PXvYohbe9u+lNGQkb55KEAyvXhcBQOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763119194; c=relaxed/simple;
	bh=s4Xtt1k/EAzXja7p7zCQviXmZXLhgihsLGNHB5w1d0E=;
	h=To:Subject:From:Message-Id:Date; b=u0wqjUlPxtbIgGI3ZKUkenvvq4bUZQqF/u9oq7AmEuiONtibAi9kZ5Zt6RP6zgNfwQZGIl58W1JZOB9P/SzRzuDOg9l0Kk/g0SRQGwXUiX3jA9qDEF6Xyp6NyVm/fENkGW3z4gshcjBr6Cxoj0oAQpYbXXxKYCcMKkNMa6fBQew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSXsNxyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSXsNxyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E0FC113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763119193;
	bh=s4Xtt1k/EAzXja7p7zCQviXmZXLhgihsLGNHB5w1d0E=;
	h=To:Subject:From:Date:From;
	b=mSXsNxyVS6MDAnltuGT1AtwNc9ziI1w7D3VEn4lqsAkU4GgP2MXBN9dtfvU8n1gRy
	 c0XiUCzYYt9ErzPriLt2ank4nfilBCb58rLeM+rp5WkH+nfRPdbq9i5Gpce9lq2u0f
	 syUvWOnW5Fw0t/OL1jgYbsqKIljjx4sA1oMDvDbruYxuze2FDmTlVDRCT+6FDDIeVz
	 l9Jmw+lTBxC+x5v3huMdMlGYhV5LgkyvTnbGRv74UF1dI3UVfptkKsJ1F/CNBSLLou
	 vmRMa8jAWEZRJf9B0gQBerspF/fPsAiaI4qnB3EYyGER0FUEqja7pcRw4vJ+cpL2mk
	 8dIHrLJwhHpiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D9DCE7AEB
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311919360.11384.1855954040998794630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca5959811e3c29d40315ff9b7ca7c0afd636e1cbe2b939982574d9aa406dd05
Date: Fri, 14 Nov 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763119193
