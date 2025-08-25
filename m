Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F2E190664
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756113594; cv=none; b=RVmCZUQ0CMNyT1A5e2yKIjZJkxVVe7Qlny0mrAeunyWXQ/1uYPNHciRzBbeie/a8ze7ugdFMK9OjoZbUPSOMnTxhOtnZNXHME77cPgp6NMHdDEAMoO+qDDyyBbSw1PLcLlD3P0YIbEb73XHuCgC21eiAK5drFcc3eJMOjZnNUWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756113594; c=relaxed/simple;
	bh=4jAyrrjSVBsN4y1H+POy5ThiCrDCHclx6xjU8xrQQSw=;
	h=To:Subject:From:Message-Id:Date; b=cvuNQt4wZbJ9rjFBC3fAmVzgrESpHed6us+mZ/oGWgENi+eWH/RxXF5/3Bh/cAK9ZN1G9euuqDFSwgSpXQwTMOZHJiVb3Hk9iJwy3jv0SNMJ6RfeMJez6AbvP+NeY87X1WzEpPvJf8XE4HK99RqYLwgIwwCl8fvLL3W76Fvr2m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyDmtWcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyDmtWcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3151C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756113593;
	bh=4jAyrrjSVBsN4y1H+POy5ThiCrDCHclx6xjU8xrQQSw=;
	h=To:Subject:From:Date:From;
	b=AyDmtWcWx7AEI3vKTix/zQyVVehhzusexMwMMAhWHyvCg8FZGW7bF9fTcnDitC3RK
	 9146T2YjY/7lBJhmFCAoMkg9ojZE09/DAhA9w8nUbig8BDkZoLWhYRNP+wuZqyBgaT
	 cB72L0XQC51ePOPE1lSP56h5fh4k74YDfzpa5W5rLGwdsg7fUmcRX5opxL+mfqLhD2
	 eAn7sazyY2oSuWh+K3tJCfVB72QRql8/tixmH/yLXeY062vE0ggZYk2k5h0+EmjpKY
	 CAiiHdb+uTAwcxkwDQeqAIb7c+cIKrwSU5rYMXCw/Pf/1IxddIStQ7PpJSA3nD9Dkr
	 TRtkqGKevmiUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F389CA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175611359357.11370.3614956934075314840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c57f035d570ba0d7998974696587f623a6c5ba93c261f47de4b4fe54ea904313
Date: Mon, 25 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756113593
