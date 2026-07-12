Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438781A239A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783817314; cv=none; b=B07vScw40c8iGTE3o5PEHij/LK9Y/vQ+pxqQvE15LmeSqi6Xa8mGnwzWOM69iq7HV8ILmxmpFPopSyYUkz6ewstkFByd4XCI5aCzzrbdIaqQUnLWXdAiDebc42BIbCJdL0l60KXU+6fFg4g3X1aLf23xyeOO0eO4GQPS3qS/5Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783817314; c=relaxed/simple;
	bh=DXQ0QRE8NdHXdtARoAunqhSttjaee5ET9UFUFFZNuvY=;
	h=To:Subject:From:Message-Id:Date; b=ss5HedUNHL+4iiTAyTJXKtE/TLkZR8S2k0dQqmyAx0QOaoOth01W/8jiQJIW7502xxuu+YdsNT3BHa/kcSe2iGgVSfHZVgcHshut92NxwvVHRxpQzg6EIVUawn7XBtOCVoPnQmXaUHBm0ldfkmXAnvRzBD96H2ynszvFdCoRQJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2yH4Pbn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2yH4Pbn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABEDC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783817313;
	bh=DXQ0QRE8NdHXdtARoAunqhSttjaee5ET9UFUFFZNuvY=;
	h=To:Subject:From:Date:From;
	b=E2yH4PbnRF3Rnpte17DEMD+1q38gCQvEXm9Urb41RKZFT/UsZIKJoKZI0xvjy0u/y
	 FwAHH3qlqCRdGVHvK2uWwkiIaPt/iKQt6WUhXaV8rJ6VyYxsyfqAIal96b4FOI84u6
	 GxeKyHBFozsLLJY66+vi2clq87e0WZZGynpKnrIhQngCpT48q534eQUftlTUPDmXyR
	 4wKF+4yQG5jm7kwRdXwYwjcwnsSpDDsdNcHwaJmzG+c9Y/1+XWRlLvjlwwXX42bILx
	 qnh9Nu0oxs4B/H41OjsSrGlJU7Hxd0CvBcDk08zp/gtIxfOtxlYAZ7gaZcWffBrx1H
	 ZuvxgQ0wfb2ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A804CC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381731368.24044.13525733050495204686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3fa4a1e7af63b5bf1fdabbd5adeaacd7c1c5b60a71f1874edde603fd05ace1f
Date: Sun, 12 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783817313
