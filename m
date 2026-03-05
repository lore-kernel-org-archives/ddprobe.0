Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F303AE6E5
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772721893; cv=none; b=lK8N4R1vYDlVAadPZsYH/OBkn1xYFz+GSzda/yWbQZEMcX2wBoFroRud9xd/liMgOeDX5NSYoFGFSMCzTUM0wU0CsLSeYzPH3M0Td/fhDbmkqNE6V7Wxopx0hfp5MBG83Wd80oVYnbXc7Yt/CXpBE/OVGI6ERlrm6koRexdn0NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772721893; c=relaxed/simple;
	bh=0T6vaLyjAii/VhJfaflcO5VUB/a0JffC/y2Y61eDUAI=;
	h=To:Subject:From:Message-Id:Date; b=r0m411erjm41/Af4xiIIGfVm1ydmGMudQjdtQcHa2v61Dc7H7HIJTNZcjy30XOwnp8xzlHA1AcF+TRZGolAFuUsJL2lHUJnTfADIt9O3QINMPT/9602DN7TgkiuBLmmGZPyUvsu6S6Tk2H/HsxyY4C4dP+i6F7yXxvZXXf6DBzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2vYNl7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2vYNl7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB05AC2BC87
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772721893;
	bh=0T6vaLyjAii/VhJfaflcO5VUB/a0JffC/y2Y61eDUAI=;
	h=To:Subject:From:Date:From;
	b=C2vYNl7+aFlG+rg4uKJussDyYspmumv97W7/+hSh/UXheRhtZNZwhtOijppdDvWBf
	 mNYTm9Uhjv2dDt8QmhZ7GIqAheQQp72IYLkpweCpzO/jzAXnsSPchK7eCqzOJIRJJN
	 we819trMbTXEea9FBI+xEAkOMzD/yKUK0/e3rjuyE62jGsdIaKxTmcJecQ201lM5CR
	 pMzfphYWUH+okVwyD6soNJOQxxILDqq9DSj6h0xL8O+MmklwN37k5XBK01vXyxjLsk
	 5blL8LnQoeiu2jT5b26URQlc5rWmBucXHHg/sg3c9hddGRZtwG8l1oTs8+5XMwAwMk
	 DluuOS4pZklbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93322F33A78
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272189359.13118.3749255871428464589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab61ffade2e1664beb085086807ff746455ae477f0c1a643ede9dcc120c1ace
Date: Thu, 05 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772721893
