Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6584D1870
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 21:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718485703; cv=none; b=SNrVExwL8PeLwN50W5I9tG/aM8J+2DGXwGnVXTMND1+Z9jg/wc53cCCD5P+rThiGTWdETSAEA+WJ3uaXzM5AXy3Nv5FAvUOKfu8STJw5XeCGb09DPvJlCWSpgUMM6aQ6gnb04qptPcU7d/TgtIkBYARBjVDVeR6iLLTxEIuGj/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718485703; c=relaxed/simple;
	bh=iTHnyFCqD2eVsPh0LGzr6yjdp7eAe7tAkthIvqpUB/A=;
	h=To:Subject:From:Message-Id:Date; b=AuncZLRVQ2gzgs/dYLoyN/yvnSNzjohpzeNVoQqA8XKuidSfw7pkenSHLw/a9bE9qcXVYok4BDJ2VFCK2GGidTe90FsCjXrxAY/454RR3pLENJDNl2NlZUmDJpoAb5LmW1IAfzbee9XLk9FwEPKzQfNdEo9ZyllCFB/js1v/nIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPK6s7e2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPK6s7e2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B9BC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 21:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718485702;
	bh=iTHnyFCqD2eVsPh0LGzr6yjdp7eAe7tAkthIvqpUB/A=;
	h=To:Subject:From:Date:From;
	b=TPK6s7e2WXgSoI8CWn8yzD+OqxAubJqxjfelsmoHXOIRbIRmznFYyT9x+bVC3izTO
	 OEFmOmE4t4I9OrAeB6Ln2NrDlQy4r/IkYdHg71/URPQ164QKn1kBwFt/QpdOfE362d
	 gCY/bLeoGAG5/Emh3hHjH4n06IbDsg998Ufck3k1LPeR50IfuaTGW7Y34JLRXTJV4C
	 hlWhXAsGYp50zYeO5WKW29jucMKeqyYxbmEvFSejIl/pySO9D2GWiBCYS/5v54DRN/
	 CZcvpEdGH0zW0N38kFgR63jr/YMB/DvYrWHtlFr0juEsqRulgysAFQa4Qw6dOIFfbZ
	 O/OGEsl8iGihQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA9AC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 21:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171848570277.31780.10548324198179776274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cc970bc076358f8f831fd490b469c4ebcec8b1d112370a7e4dd29ad4d9e7399
Date: Sat, 15 Jun 2024 21:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718485702
