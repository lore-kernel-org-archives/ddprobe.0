Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15971213E89
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753997994; cv=none; b=fN9TAcysJ8zblxYfYHKRguma1Md6uRnfZsr2KFu1u07bhNvWIUCyLduaQywlVL1H6TrV/YbdLJxlJwQmedoW3s337AiDQhqQaPQ8n3xfaEyZfN8DYAy1Q/+T6CAjSszf0/6fO8Ql8KW8Q/owObT4xcPZaU/R3pW9ni0LSs3vYME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753997994; c=relaxed/simple;
	bh=RJQlgLE4mp7DOKhzonYfeUGGNPfJ089CTlcTJPhIOIM=;
	h=To:Subject:From:Message-Id:Date; b=REHkDSWIbRUm8imJD+UlhvuVNhXf/p5ZQ8afbByB+8vnusxqJErSve+w177ypy+XcWJ+6JRwbvWeWymlHOk9sXczbs4PyJRSIvd64NDd9kSlDq3yHdGeYHIX/N3o2a3OWiF4EOjiVpKYe31R7soAt3t1mcoCAev6+FrlWLG9EPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crxuk52s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crxuk52s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A217FC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753997993;
	bh=RJQlgLE4mp7DOKhzonYfeUGGNPfJ089CTlcTJPhIOIM=;
	h=To:Subject:From:Date:From;
	b=crxuk52sEW0GBWQhQEeXI3Q9YLPvYrBCCz0HPNbNUegQLdT/hIe1SduylDk9mniUP
	 kjsa38mEOdy1as3KDLnu82e845FD7lR86PRHUJ0aTNtbZeMyHCKqDzVCtFsCq0revS
	 Pe1FdfVJ7Jry87Jt0AAk5tqERYJofHP/T/tWhPMiDUOFPzHQXqpN0ejHdrw21ZYt1r
	 +Z5VkAtTZdzXsoM4fByRyEq5/bQB6P5EuQ7eluZ1GZSlTh8scZLFktYiT2thBI90aO
	 tizTc3EMGp+80ukMBo5ixywrlCyUy2mRZzJuMJoujrkfTLXlcKA/d3XuKP9ATOCOuP
	 NOXsioMtCFxZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908F1C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399799358.5748.12505405764451911863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5175601bae74409ac9a4011ba3edbb42b3690e591cf7ff15dbda28955aec5a4
Date: Thu, 31 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753997993
