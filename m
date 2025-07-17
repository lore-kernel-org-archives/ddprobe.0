Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221601E0E14
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752778794; cv=none; b=S1uPuBGgb4NKoEUaS9EB8RRCg8Eml4Ds0D1L/qCLCVHeJshBhOuLRZBa58BeOcJLQSSlkGdY/1GEl3Ef9Yrl+SCwCBHnXERi0JXOxc+grnVKmyY2JnSm1z/9PP131kHxVDn8n5QgfnbixWuCCU9cZIWBkZIvF+dX0HOqtUql3IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752778794; c=relaxed/simple;
	bh=2GxzoZopHYA6RlXhNTc5pVJtd2cL20ifHJxkOAFCAag=;
	h=To:Subject:From:Message-Id:Date; b=R+IP8CtVWmh656CMR2XaBQGeBhttIp46waMC1qE+J58070E9Rfk6/tV5d2c1BIab8gPJPsFzOjBwEEpzqOYKljMMJhcAmDNS+62uMZWt+ftT4/QbT8HqDM73Cv5XwdxjnLl1BtgAFILGs0qOaOWRzx87dQSltetq/KCXJ4DDz+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6OLjGGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6OLjGGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E44C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752778793;
	bh=2GxzoZopHYA6RlXhNTc5pVJtd2cL20ifHJxkOAFCAag=;
	h=To:Subject:From:Date:From;
	b=X6OLjGGqm52CsXbNq7syt6DLf/dQxAN5Vd1RZd5yh+1YKU6+62VaGADSXBFg2CKOH
	 a3qIX17DnCnD4f9JuccUQnl74p6Vkya/6dOqJCE+uoBE1frAhUePzrrHeNlTHxQyJD
	 1EUrA0YiIIM8fnbi+tCJuPTba7RHXDIgd9i7gjVyYK+XFeDbIyI5I8UI07JDwvDl1H
	 LGvXsdfXFdGK3piHUK562NF+SnbaS7bGFAI6bC0VC7igfb5hv/ctReRbD0a0EhAy4B
	 6sev5IH1HQwvxQXSRfbZvYYlA/T+6FLF80BZ6RZ8HHhBgKpYNyr0Es4dU1/Sh8H1Un
	 UtNwLDK8/T4Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0EAC83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277879357.15061.5620849809824850949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b44daa3e55e72a971f2b7da54b9eaffa93f732e3aa8d3efcb5e869e56d21e8
Date: Thu, 17 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752778793
