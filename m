Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD89340D90
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758037194; cv=none; b=F0bslYQue6O7M1V34hENVm2iZFHuCEmAwdbTPL+gBLZZttSwqN5ueSnsbESWbW3ApQxJkkCK/kgJLpS9nKNsc+ASMdxoRfqsqSFrZK13RQ+wjLucj1bkCODqoWdJHaiTm9gA3YQCbfS6QPWntIUf0v1G/8vkCR4seKKa4O6sKkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758037194; c=relaxed/simple;
	bh=tr5khmdOZU5qQ0+Cynr4CDnTx4Or8OlQgtcfQ+pugpk=;
	h=To:Subject:From:Message-Id:Date; b=tXVywGDIfTo7UBRsv9T1/GN0v14wbipX5ssTe/K5uK032ojvR/xbqnAo4NaWe9oCFJw/RFXC8DPBxZwfCmlzkJR3/Ws4ewU8l5ZYC3q45zqklapCwUyZLYhNcAKGp//Ab9qIbcdkSdpSySlpVKEyx8f9aBpKz8BDpIUUxYLdhyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQZyXYuh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQZyXYuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD63C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758037193;
	bh=tr5khmdOZU5qQ0+Cynr4CDnTx4Or8OlQgtcfQ+pugpk=;
	h=To:Subject:From:Date:From;
	b=QQZyXYuhUZEfFZjE9X0AzmRPozMLID8qqNH+wmzJ82srtB9Tf53dlls152ejfcLbS
	 5K8Qf1BRYT/DDBTrnOkUGKeiPJK0TwTjV76ugcwRAiSTD8qf+VLiIlpFPZrN4jf0p4
	 SkOs+OjOIW223a+dKTqcB6KOG3pz44/NESOaQy9xK75vUGMyiDTq1h9QwYZra43Tgg
	 FLlSXFkeB+7cAkrky0OSGvh38/5meWw0bFrNanYoOT5jyMgjWo/Oq7lJFI+dNhZjLS
	 z8kEx7UZn96i9A95Y3F42MUYwKeeK0Ty71te5FkoUIlWoqwfAEO3/oNIBFum9Dp73D
	 F40tIS1CdC5yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E08CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175803719358.5114.9027385999213509592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6fc1b49651416b4c5d4324214a83d3c82902b7932959b1b7c490b7e0ecb173
Date: Tue, 16 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758037193
