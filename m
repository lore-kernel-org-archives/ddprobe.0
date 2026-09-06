Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540893C2D
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788709234; cv=none; b=HNSMZvqtkg03sR7TZmrwMLrMrowJ7ISrkoMz0Tbkv8t1WFxYEfnnsp15KZcUDmfjU03CEJweWUoNJHHR/bVofsOnVA4GNSR/nPSIgTJoScBTkXbchRmgl5vCtE61vA/wZc6WCl0jRSTpEKtPueMP/2RNUSP5NUldY/Egk0aHvD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788709234; c=relaxed/simple;
	bh=cPQMbUgLK705N+ka5NEZ3KecHVzBSMKH1f/lXwLR1xU=;
	h=To:Subject:From:Message-Id:Date; b=mLO+BQQ0TL8A2p7ojrwGnqH5ansxwNPSpjbfWcXEkUm7oPgB3xO5d20OwzmdVi1C0kTXyoylEvrb1cpWfUygKZ2Mx+Kgr9Kzus9arfy+Vor+C+HY/tzcpMjP4x6ySNftcB3NBbxFkmHbicwfCUR9eL8TUJB/MzQ1X8vfu9KdLJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhPcci3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhPcci3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAA9C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788709233;
	bh=cPQMbUgLK705N+ka5NEZ3KecHVzBSMKH1f/lXwLR1xU=;
	h=To:Subject:From:Date:From;
	b=WhPcci3GdkBm3dhOhbcVoRXKDCoajZ73tNvzZFqyc4f9EV4A7p6/WIhANqQn/Zp0Q
	 VA3Sr+RKdhhC1+On/jsrR9Y72XhBQa3ib+tM0erCIfEisEplEQksJry92pRmMXhExa
	 JkhYWuQoMW9yjLkvThzl3CBTTOrawU2SS4pqEJ5BZzVQaEzHGo9SRA5kQxywXuwkUv
	 ihOJqkfnsBdfSbFoS8GnfSNOp+Y6Lvn3+AVhOWG76vyz/u6m+oc3qOB2wp6cjz+k8e
	 5ohd/YOh4R+tZpbIlUWzSQZM+JNYwtDNtTkttBaQpGsx7dbxjAyT9HHTKB/03H+eFf
	 WCKo5hDCxZvvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD32AC79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870923370.7032.70578881956408492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e8bc954697e15c23ce6e667287e53f6e531114d906b440cba159f4ba01dc96d
Date: Sun, 06 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788709233
