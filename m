Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2A34BE45D
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789063834; cv=none; b=ABZ7vhBWWur/kuXLjeErucTDcmJj65HLq/dhbLrXFQ4+Rox6Efa0673bBQ2OniWd3iGFmc7yy1BfRUwlP5fi0f4Ss5TUvEA4MZ/0X3D51LGM7jzCBOT/XMatp5siNx8wFpwYxQefS8lSjNl2qBxxTmf+jzrZA2EYNMdZN+C6exs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789063834; c=relaxed/simple;
	bh=+7SkFlThSb6+bqopOOOhxku5tVq2tpz0R4twvoCoWug=;
	h=To:Subject:From:Message-Id:Date; b=R0MaIOj+Bqt1UGCZofCG5cW+GN+yWCbTv+58Lrs4s7hKkPB8D149qLBYOhp8JiCzI+xPQhnnzKsvGE+6Qomf4vQkWXDRgsxdtVe7/ZK6yx8kaad3NBGDYE2g+AkUJVCP5vOpLGcGjKYF4b6xEFieKjem7PquYeeWuqoghM9u7Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCVO5g9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCVO5g9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3B3C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789063833;
	bh=+7SkFlThSb6+bqopOOOhxku5tVq2tpz0R4twvoCoWug=;
	h=To:Subject:From:Date:From;
	b=ZCVO5g9mLpzo+U5SgdmouV2igOsSnF5TmlChIErgae5nDnjqibip8uGGnpUbAACXT
	 YYJ2LJtE1NQsexiXpHquDD1Z5Ek2+HW2tDBExonZgkSAaD2XLG98ZnEEgRNrhridvq
	 UvjJ+Yt8n3WQUWmeOPkmO04CNSsQa2qTYkVjBXiInMm9ltAuFdTgzBRmodI+YoPHg1
	 6DAG7tk3tVHPY+SkBbWdgeq1OSOngyCHJCQTT7INMXRdooAoJsPQsocOZn6oAdsqTC
	 Z7Hn6b8kO3nVMKJnD+tzagqCKNm3tWd8iv4XiASuxoYrNO/Q9UxD/4Kgz7xAaJU/aZ
	 NJTMeqeqEs7ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B984FC79FBF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906383370.11646.12388136836447116178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f850289ac54f4d0c8fb198132a308f788c16fded75d0e9b3b72d47eca98963a9
Date: Thu, 10 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789063833
