Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50ED91FC7CB
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742283594; cv=none; b=P/KZMsRiH1HvoYm4kCj+Va/tXmVMlMH1i96KhkgxkCDVwcoS1C9tgWykoXOSoOES9mw+1vgR3mB/5j+aqI34JeLwiAC2DiWTrNYBx4oKdsMZiqc5j/wkc0H21tk1H0cEIHl6wkDJgnJiL8KN+Z8hKMKXkw925xQoh9OU+ovegAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742283594; c=relaxed/simple;
	bh=kCn0jC7twifG0XRt01it02CYCOO/q4RLGaIvDLR6pqQ=;
	h=To:Subject:From:Message-Id:Date; b=Sw6ZelvGmtTQl2rjxMx37WEX7eJdffiDL3/z0lY9RVPac+Bf5dSmR10W/aUK35Wh0shamwvgguXLYb8040taCDs67EjILbh7ubKy5wMYLraNRJ7BlH8tWM0WW3e6a79yq+Q0ioputl6VWMi6nJsywd2YgrOy8y4QwC4a5NbM4U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOUB8fzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOUB8fzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1FCC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742283593;
	bh=kCn0jC7twifG0XRt01it02CYCOO/q4RLGaIvDLR6pqQ=;
	h=To:Subject:From:Date:From;
	b=LOUB8fzfaZVf3pIjlRSSBQD6hs2YKlolTfy/O7JEtxm8xGsOPMOG94PnykahYdKV/
	 tfUjF5+uPtTKxgwt+0P+0hK48zo0mZp4UoYctipWUJpL/IXBgsS4lQiGozRF4CLsU+
	 FrumULy0jCaDSMyupVKDXc7UKN9BeshLhDqFEuV66DNLFMUCU1D0bcBRdcCoX4CRvO
	 aoLfYnqWtTggzwcOIZLBbb4S1W+r9C56gJvjaEUPFYCJ3Pt1mcPkXTp2y7EQaR+5Nh
	 xbMCCtQeWBaFkRR77obDukngD9MNStZDG9vphDBqv/WMbsesWtQLBArOOtzrH2XwqJ
	 K0m7FtQPG2hMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CA4C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174228359361.9637.15414394819294489557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7598cf946c61a836c616fb1d0912769cd8a6aa411229d9f6bcd31b697ff397a
Date: Tue, 18 Mar 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742283593
