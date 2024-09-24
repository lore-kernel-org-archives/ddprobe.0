Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA012E419
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727198754; cv=none; b=Sb1EEqVNeyhQxcsCmFW7KrDxj3XTUStgE/6/+RApB7rh//BeUZFNpLd+Vj5gxIm4MwRNC3t1z5oh/TaXaL56CqVbnTHEIn8gNhDBLS9G+4+yun0NkR7aqQfVAg6ZkPjmhzkfz2olBJanmRb6fhfzCFezEs5NKLBKsaNHxAbzx6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727198754; c=relaxed/simple;
	bh=P3TrodF/gJ7cCoR83WgacFHbbAYg1QRweUKEj22O15E=;
	h=To:Subject:From:Message-Id:Date; b=FzHCOezdGRyoF3Rg8qwMdVPgGuvqNpSTXM+SpL8LAi7ANkWXLLE2MJvzhgz5Xn+ONN1LDBoF9T+YfDGassyHZlMtDn0BjMKhhCOwUF/nDX2UYV9Q0VgXC0+FMI0OXN9NErBTY0Zoirwvq3RM/0ixw9XCyC+xOKpHxCrhf4MQw1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqbR09/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqbR09/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7E2C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727198753;
	bh=P3TrodF/gJ7cCoR83WgacFHbbAYg1QRweUKEj22O15E=;
	h=To:Subject:From:Date:From;
	b=fqbR09/tPsGc0kav05HokKu3fklr5N0m7PASPvAjEt17uVdVIlwj0/hKuQIb36W2e
	 PVt3sabgPzKtgemdDs/EbNWCSpQ8Ky4/AcYu9WRWPt0jtTA2XPsxoYG4u42a87xpOT
	 9W/VcLm7kWZZQx72pJEYLjunkgx7OqkclQEmv5KagF65Udff4IHkYLg0mzzmb30Pjb
	 Z/5jejEmvh0X35cCnLqe9Qzmzq15DrceV0NdU+s/AMYfh8GBlgsRjekka0x+iZj/Xr
	 ohZqCLpKmM9wMniloayDb/Rv55qzrUTm4nLUojd4UGZy9UesYIXNUR68X8ch1zPODu
	 /+zAvJvz0BUBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC73CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172719875362.19162.15126444910430738663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9305becf491e92010eef0374148ba25ecb985e7deb442350a4ed3a0ebe45bb1
Date: Tue, 24 Sep 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727198753
