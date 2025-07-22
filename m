Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E42C1DDA32
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753206594; cv=none; b=d3Z77C4E8XWPC+zvtqWvSmzSP/9+v9fSKBdCWGocj5Zh5516YtprlIs/OJ0E9elLR8nhJEkdLOORbkUpmXu99b9fexvuhj9aRbmVgK/vXLFcNqNW7FufT+iJDdruuM3cbkm7xKwZK4D4F6AqAhc38MNRTChjNSa0WBnG4na1vKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753206594; c=relaxed/simple;
	bh=EZs+p3JSNdhXjPPUGcId15zHH3ILNTpOKQa10lIQcF8=;
	h=To:Subject:From:Message-Id:Date; b=RS0eF49CzyiTd43+4Svd9x6Ff+g76oGuvscgE1ZG0IQuQCDWfFTOhzxiQ8JC1U5GYtlkOoNfPlXW1szbsxAICtQ+2a5hzH89LfwhfUSKngljg7+DeN46fmgG7TXvZvWDbr+o++i6TAcqjZ8X8MLNvJl0BUbBCdbiFc0RUPfeThU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSdbkDa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSdbkDa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4187C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753206593;
	bh=EZs+p3JSNdhXjPPUGcId15zHH3ILNTpOKQa10lIQcF8=;
	h=To:Subject:From:Date:From;
	b=aSdbkDa/jh5wLStsFIROo3cAO0a2T+qpdNix1p9Bxgbg3E2f8tm4rY531/dF5haRe
	 OB5M4jLQkPl0cdTcVMcBC7FJe24cwFthXZGZA8O1/oExmb/nmMron+MV9eNL9FEFvu
	 6GVTnl+P17CAhf3yKadLS7rwFRfXSsqwMl6Oe6xC70VA8Tx3oJOPcZP+UihCAct7AF
	 R4QoyNWoefbRfAzsi7Lucj4Uq+Txlav1KcmQj89A5e4BzZv8yQkIBixYcUjsIjHuCG
	 CZBVqj1H+oPS5pf/Etev2wsW0zYvs6s074aLZCpR76HoPGV2NqjnWvAIS//r0VfbTl
	 omcI26NnfKD/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9001CC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175320659358.31574.14551258852236862163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 619c63c193980e54227c127141f3cb6c0461d183a7aa7a414e632a4fbce93fe7
Date: Tue, 22 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753206593
