Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BF91DFE1
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 22:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741040934; cv=none; b=T7G+UXCpk+3w4BuamN/BId3gj9+HvrgzKqKN8Q8nZJjvfl/yXy4dDR4/7qm1Msave6fKknpzHzyoupXg5y30G/gvnFxd8ZZeIVzXbtSadv99JNCXlZVU1uu/iQCeImihlb/CEVCRnZJrBJZ9oNf39Y5qf00K8Aq8t0lMnKzBBrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741040934; c=relaxed/simple;
	bh=MOpNX3JfBP/5hztAVKhsV8opWXLMMkK8jGO/PCCIRgE=;
	h=To:Subject:From:Message-Id:Date; b=M7UwAR7VROMY0dRyM4Y8rpmoJR1OPoRMvbZ9bVDl5qclTfPzxcvdfwKHTXVWUWXQwN7lzkI3Elm3tzwRe8a7qtXTGT9VLPaU48IDVkaM905KNrudB4kkSieexyi19AKwjEOmFpnX6UzgieSyId7FA7wPEsG6XHcLZcydDZtxCGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulUroTbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulUroTbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAC9C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741040933;
	bh=MOpNX3JfBP/5hztAVKhsV8opWXLMMkK8jGO/PCCIRgE=;
	h=To:Subject:From:Date:From;
	b=ulUroTbewRzfq7FJSrjCOhrsWEHb+hBGqx94rsCHi3ghBlXCV9HM7CK5dcI+CTROI
	 lJ8E1GomsDQlynAYOd1JPd+GLHKiJYGtFyy5YR6rXXEpcSq5yp+IipE/0T0zl2ZxYy
	 9P/11zgOz9v9hPfAb3GrMZqfIzLktowai2LqM45zWiDGYmF76jY6gNpQV9a/AciKSu
	 dAOhlioNHPaQpw037Iw5oMNQ5o46Y5H6Bc60Aidn527unXEpKzHwEIuStcPrxgDbEL
	 z6gGrsQrCU1BF/G7GmWGk32ohE+xRSpCetVj4O1aS1DDKt+qj4vCr6swK2U1cadLTz
	 L6mtyk2FMH19A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A08C282C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 22:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174104093358.1121.11977098629935237745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c90e7adcaa8af6cf455b8b25c6ef01f214eb418e62e060d7aa93f894eff05d6
Date: Mon, 03 Mar 2025 22:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741040933
