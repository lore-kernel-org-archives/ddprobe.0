Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F322777F3
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764876174; cv=none; b=Z3gnSoI70/VpSMjbVeDkJR1lmbJNlPrEsdjiOUDQWxm12ZG0vQYUPNayv3tFryDEWJ2hZ+MYWE1C7RkvB1nE1CIuQP0W2xgzIyIDWonzX/cLhYGEMfQp4XCJkY2unYGKURP4gTr3I4hLOuTNlszr1rEZr/8rKL960g9GZ1lIbP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764876174; c=relaxed/simple;
	bh=r+Au60wH3MWXdhI3tOlSwVhSVE3rGkvHCrLIwEMPdhc=;
	h=To:Subject:From:Message-Id:Date; b=u28zHUPNw4HT3JFz0DH7//w5sHhh7XDUh2j+1sLNZdok178/1WDWW/7z0CHYI2VfMs/aCLHUw5AFXjsLl9JFTutsujOTKBB21/v2F5Jw+tZFQcV9XVI+gfkC3+pRkB3FEDxzTu31tEZDc5lKr+mmW/w37NlASqvjSiFFLeq6xM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHpIHXqm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHpIHXqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F740C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764876173;
	bh=r+Au60wH3MWXdhI3tOlSwVhSVE3rGkvHCrLIwEMPdhc=;
	h=To:Subject:From:Date:From;
	b=hHpIHXqmszYwS9avImS35p8PvtblasmNZOw10XsQrxzUBQM7byg9Q36J4NTWEkipG
	 SWNhkRMlhf0X7RxiIpzrJ7QEBAhToCixUh3EA5aHy4m/bUz8DPSIwe5NhEGXKARWaq
	 Pw7+uaQTzWyhMCWRhvyUr7KKodld93/iJ9hoCDiF8LGmXPv00BOCG+iMJtn0hpeSjP
	 zOVMVF9ckMwGsQSJKNEXLyiLAKfyY+K30RSAtimKjOuuweUEO7sU3vzME1rmY4wH3d
	 7yysUBALmjeCepVsm88t0LEaLFZ/Wp0ndCYMmDSa3tCwMWi5dPwHxjFi75VqMiwW4c
	 /ei3YFVJaZeWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C6D29FB1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487617358.23005.11379263701995950447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc0949c1d96971a0b1b4e28f676a2fc0ea4af6ac78cbebe01cf6a9c197e6182d
Date: Thu, 04 Dec 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764876173
