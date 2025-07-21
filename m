Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B8D1ACED5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753075194; cv=none; b=EFnMqlb4ghMl+/P1kMN58Z7QvJbE1fqUuPFax4jG8wDgjSxo5QcVk2FxIF/A2bmGuaaNS9uMdF/Z0PJXbUJMR1iTYBKvNkilpsqAuXZmnPm1uGgrH92h3TA0nhKBm3YcLU2v3LXqLhuG5uqCE9qD+GFMot23Pz7z1yVhcGxxf34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753075194; c=relaxed/simple;
	bh=LiSrMMALdPB4fYIB+36RAslkxYeH4oscb1YXM+G3/OY=;
	h=To:Subject:From:Message-Id:Date; b=NQv+WAvt4qHcKUViJm/gxUyIqIdG3HDkc4Rixl1LZO/sZd9yjWf0C24U5zJkm7O6dol/Sp4YpflXSZulnVjfV9shKxrSKLMPgkpdD4G874iCDJpHdSai22j4jzxosGqGWV8+lDuqN0Ex1nlHpee7k9BkgpwPmfKzapVyll5ZFgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTPnOgad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTPnOgad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3469C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753075193;
	bh=LiSrMMALdPB4fYIB+36RAslkxYeH4oscb1YXM+G3/OY=;
	h=To:Subject:From:Date:From;
	b=aTPnOgadQck7UoGmv6RJEYJFOQQr6QLzUvS0XaoVUND8spPdaOief1C/Rlr98HIyP
	 MCwBgJeOOZLl95iNbeCEMeS1YE1YXhJkXdpczcz0XRNuXAaW8B5v+5Cw1vHK3vSX/p
	 Ntod+NDdfDKh9WB6IWYDnsW5N+V1Yk0YvAoXXzAxYAxP++UzKS8nkdtLnxxYypSXiu
	 SgLvlgbsd27xZJUJg4bo9LkmFvlhXhqY+JweV5smK4SBlygIrCKtjvXuTYnEztIOHc
	 e0MXp1RQX7j2AUPDsbggJbq4N8OXWEvakckSweg2RBZd3mgX07HWGNhUslLCr8Qheq
	 2TcxLbDd2mZ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD6C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307519358.5691.5054045899502937632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee515e50edb805a3b9c274fab926113a6800699f107ba9238a7c26539bda7dac
Date: Mon, 21 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753075193
