Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1B013A258
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791646834; cv=none; b=MQ2bWbGbnQw6a5mpGioe5WELRdcFdaAEid8IgR32vCIEbzNUElyo4hTpkUjXmhMzsZkVOMfmCuxwqubWwJPkL+lHGaS8z59nJTKy6tU0vt3eFz/hOWsKeew7QeY83sp/7difsCQRp50FGhZsc+nTWg2QBx2cQe6z8mNU1H1fFnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791646834; c=relaxed/simple;
	bh=2/nFXl6/FZpXx4Ikx68vprHlCLt1q6oxY3Oh+qZINkw=;
	h=To:Subject:From:Message-Id:Date; b=GTzk1txjpGrFObNzdUjKhvEQYXsYbDoaod6+bXfqBJ3dFJRawf03sdEyXuPO+YcOYom59IT5hq5LkKxeEw1jnjOTuR0MTtxEit/rFt9+i9DJDdtJj94dhHbWn/Omcf6cU+zhLWXP2r0kb5gwU9CQaohJ8T1AZaF5iQVKpjywG6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nbmai3zh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nbmai3zh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CA9C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791646833;
	bh=2/nFXl6/FZpXx4Ikx68vprHlCLt1q6oxY3Oh+qZINkw=;
	h=To:Subject:From:Date:From;
	b=Nbmai3zhrjwH/uI7qBJTKbBdzffT9/dhfGkXp1WVb5kXA51Tuo8XAolLt0fLZdkOu
	 u3uhjsjWnqvSKpopoaYegmiOp9wHSjuVuBtusVrjGqUDn59h7mOCRzTeTjA8fw/rK3
	 2YoFf3lfm69bZzGT1WER3motziVKNHdjo2cWdUaUK9V6Snu6C5630vmNcyghdAZd5G
	 A+f9lBDKhqFpYuAlrcW6C/mYLNp4hvG8WaMuR9J3ALLT+YjRHuuW4s8EDACWSVEtq0
	 s4Tyr7jQmvKeN6bv0ns5XWNKrzWKG2uRcA2KNh74+ycSRHeDSA44zgsHcUR2UaaVEE
	 K/CMfV64UE4Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1CCCA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164683368.32571.7677830044707906414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a066f2f00304456c67be28f4f0e271f1c08fedc59ec140301649b82c7ffa3484
Date: Sat, 10 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791646833
