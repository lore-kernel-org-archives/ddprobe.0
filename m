Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 820361C2E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718413703; cv=none; b=TVIf56i+gjDr2cc1T/Xw/I5wD8XjZ92kLQ/G3DzqIFMKvkuv0IVBYlncG/X+JMAJrUtsKHPsQOnCiNnzNzUFQRTARNfw3ar/o06p8mlyCVDHaxc3JgfbPLt2OwdC5X0WtR9v6ZWMASvvufjOOcbl0Rfr/yf4Y/HNyET3s6iohVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718413703; c=relaxed/simple;
	bh=Nlg+jMuBIn2nI3bxpYOuzLSPaXW2IyTU0dDG65sNiVA=;
	h=To:Subject:From:Message-Id:Date; b=q142r5utgpRcwkMFT8r2kLjKJ0wZbsmf5MaBMFkLzaZ0Yw/pdurCoRWWLKdZPpZqHtxL1S1uNBYtA+H9JSDpUMeiyyRVoyZTmhLI/hEmlNN+Q84mjGr6Go5I12Ig4ydT+gabZh/UCoYo5dFTKXytlKKpnSwY79SSsai48bs34iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hxe1xHBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hxe1xHBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DF2DC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718413703;
	bh=Nlg+jMuBIn2nI3bxpYOuzLSPaXW2IyTU0dDG65sNiVA=;
	h=To:Subject:From:Date:From;
	b=Hxe1xHBV1AD16T51fEEbZSCYwK6QUm/ZwYQu9dv/cFJwM8cVY7HbnQS8em4Hm2jPk
	 XCmt+kCFGY6d+c/eGpLMvXGUM3uQrWb8pfgagJjqSddR/7Iog/ftNcsrZRxEkdXHkl
	 ogLJKARWS86DIcNi4D9KqlnMfnMJt/MfMnJeBpRN1FampzryE3AkpK9nI6xbvlAeAy
	 SBVL5mUO8Kz29JG85mCShIxuhlIoZIhyrkCQcLwXKo+WfmhvnXqDuRUw5cB7pQVgeI
	 sYMNasxNsqrsDI+gMDVlmGfGHIDedg2qy6qhgGR6Ln9tF9V6/qSK1usU3VknAGcb0b
	 1jrZ4bQmtK/Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0A21C27C6E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171841370287.13654.16071968061293815601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074cc9886216e1379ec4ebf4151a993d2d26b97668be539a60a356b042b92dea
Date: Sat, 15 Jun 2024 01:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718413702
