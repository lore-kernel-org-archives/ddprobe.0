Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BEBE3A1E60
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766772834; cv=none; b=FbK1GgT2+yUsJk2Dzpg3uUEmG/1adA1JFEkoZ1B7hSloRR95dXTcWg7z4FHiKi9wj0IQ/TWqTcL4JIl4582H5nx8XuK5wo4p8XObFj+7RqGF/l7W/N4hxlO629xJ5frwo+wwqHYMGs71MaXn7fI8qZfvz7HYQqZsFySttJyEO6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766772834; c=relaxed/simple;
	bh=v92nE73qhHZiIh0MGuZfLYdAhNQ3VPUoVTSq9wGjj8Q=;
	h=To:Subject:From:Message-Id:Date; b=u99BozpYIwTzfqJY5IsknQZyc4mLU2NYRqus7A0A01q35dkjAmC8v1GBEyHRIAjk/tUJ0NOESG0hgbgteVlmgdv6rmAHCPOab/f5D3inc5DRmR2BP3vIqsSWtRuD/x273vv/ThGJd7nA0/D0Hp42Y48CeUsfHBowTQ3zedxpbKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1a2KGvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1a2KGvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDEAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766772833;
	bh=v92nE73qhHZiIh0MGuZfLYdAhNQ3VPUoVTSq9wGjj8Q=;
	h=To:Subject:From:Date:From;
	b=P1a2KGvXQ84W/HAN/R/gq+JFLYlH/elMPjWbfNcBORCNgogj3x+IM53l2SKmGw3L9
	 kk8RgeQBKyM1mZ+l0lqzm4TbTwKPOjzR9VZm7rrBYZcOSvh06RtsqoFWKs5e3QgWN2
	 YKScFDJkiDz/8grO27d0gU7Z6q0hPj9v9nyia1jMH0EOG+ybo4E+7RVyPPwwDw70C/
	 VZYJxttfn2f5Zhmw4DglatDY6rCGXhIaVkhcZaJ9T9spCY3qCRlC4ZQo3q+1CmdN7D
	 dQRpdvWaD6R3jmB3DhsFEehi1WDnZucgofDtgGexzA9b1owvEjQqKlnKkSK6eQJ8Ye
	 3jWuCq+4v0JGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904D1E8FDAC
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176677283358.3655.11617570582860183897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85344d4dac600cbc6ecab6d5908aa672a57da146abc921d136a961e016c4c6e
Date: Fri, 26 Dec 2025 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766772833
