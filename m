Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FA92D0C7E
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762919994; cv=none; b=kU8ZHkmpAMRAGpB/0BKYN7LF2siA0RaEjUfpEA0EcwIBfGtJxelzHMyjaahXIiNdENa7vMvFrlRpu/4+VVFyH6r1/sTI3SBYh3E8eesQ6NN4NoazZbWwmUNDgJibqnYNi7lFbQPR8/Q+RxDgQsaO84u5bwsJ1AAHVhyAQQn1U+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762919994; c=relaxed/simple;
	bh=bLf6HeZhWsQexsJdSwGnR7NF1jijMDZ2psRy3FyLK/Y=;
	h=To:Subject:From:Message-Id:Date; b=ODMYiDzVNKO1j0XOi1bQUsWgfpPLmO0bQkauc/cp35r6De8Trd/IIUlvCaSYHw6qnbT/xP4PRs72m0HyOAnSM2Zjc7VDnt7XHa2YUtiFdqlTEYaNjUl7HKnzp5SALEXsHWcLsjoqQYzalECvYOK98//qHx42PlgzY/bMhxYC7aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOma+X/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOma+X/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF32C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762919993;
	bh=bLf6HeZhWsQexsJdSwGnR7NF1jijMDZ2psRy3FyLK/Y=;
	h=To:Subject:From:Date:From;
	b=eOma+X/QSxL0LPSxX63CWbAAw//MWZaUDmO8fCHzjY7BzzV4vFCFQ4CVcBq62NfAU
	 WHxrqxs1mkYNpKa2RRw6HQrlwSrpddjCrWpQElfLq11glxrkBMtRsZYPk+jWMy/xjh
	 zfrSuM9MC5wwHH7DJ13+UKWdZL54E0VMbv2xMBZVsYjKLlm/vauiBsOYW7klck4fZ2
	 XD/Buz4W8iiCrWQGrjw3XE8k1ClW6IfCH06q8tPlrGYJPdfm/apJoPkgNXJsWjvegV
	 tgvMEicep+uZHyuaFQEjFQZ0zvfgb9PA2nUjrlaEYOgrYuyDcq2nTNC7N85T5lsIMc
	 rCmKospdCyHHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8C2CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291999357.7205.7655744201238456656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1daea875e7875c9aeab03286759b55b861e445e0ebb57d67568e7b2a21bc21
Date: Wed, 12 Nov 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762919993
