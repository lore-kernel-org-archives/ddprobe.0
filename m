Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057BA3112C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769320434; cv=none; b=loYSH/0hSXRgCs8QRONfqq0lFekbo9Xr1ISvvyRQyNEQ9gLmxcf3k0xYKZFYXPIuEE9f1HGXDU33MYFR7orUe93PRniBCiiFVf5/eNDT+dpL7JMoXyYOT5HCog+c2LjBiVWM6lXv6F8ILeUrqAzK92cITT4nmq83me0gD6cg9zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769320434; c=relaxed/simple;
	bh=aWOqo+Ym4nLRH6JMg5H/RkcdgShhWFbVf+u9ZZMh6vE=;
	h=To:Subject:From:Message-Id:Date; b=BUFnE9HJ6IWWvbmxg2GKsrSv4O1TlWEaQEAt2HH1DtNdbMF7D8r6CkAqpu0NC3yrvb2Y6Or8FGImSvt/i8+lMM5NK8vosKsRBb7CRfITR9oz6XJUl75DieGE2IJ4r31fBKqE34ET8/84c3u3P791BoqRP0OrNJjiFqgXyRtEUeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9MYVSSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9MYVSSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3622C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769320433;
	bh=aWOqo+Ym4nLRH6JMg5H/RkcdgShhWFbVf+u9ZZMh6vE=;
	h=To:Subject:From:Date:From;
	b=k9MYVSSL5ffGn/pVZ5DLA0rZ38tEomRib/EAIa/5ey8ytNkGQAR0yGD42gWvPT9DW
	 iuv8M6eEbdCh8IRc4OxeKOk8M8mCNdIgaGFOywxpMUkYBYdIMn/yM9oCaH4POOHFEB
	 3jqsfmnpJ+ihizK7Pd9/hT5gmeWwhpo9HRTBl59iHuJO4nItYD8+TqXao5pcwVBWjH
	 mB63xnAgTdhgEiPtKwmHJMit6hfDjZkF+njKQcegT34cxTOrWBfg67N6QKCKM+EgVj
	 EPljzsJYKvGUsPPfobwJXoR1FbmK1E7ZvfY4QYzHInEe11ATRBK45mLlDiPeoUA4rD
	 Tzt8owUsPu0Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ABBE63C85
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176932043359.26511.8927179470495429212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef495aaacd3bd54edf6c02eff86c012f899bf9eeabc48d24ed81276696da68e0
Date: Sun, 25 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769320433
