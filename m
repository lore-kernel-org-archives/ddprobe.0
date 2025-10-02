Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E6B18FC80
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759392594; cv=none; b=Qsp7hHa0G5dHVO6hdTILfxAOzpPVqil8VjAUq/pijBMCi0ENCoG/Mtnct9pUwsFlz2yvnxkvh+/16BOoWtJpxqFFfh3UjflRCxwsztSj0r+mGaMilIu4c+64/ukbQoQ2h9vDPmet7HU2yQ7nCV0GmTcKyAOeAPS+6QR5+Ydtgr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759392594; c=relaxed/simple;
	bh=kwwWd4F6jD9JGoT0LL1Pq84K0cFCHKG9K8bTDzFYV3o=;
	h=To:Subject:From:Message-Id:Date; b=g6/jO/MipVjecmzskD57fZkmfwPXL4brH4vC7gCqPYetVxMEYx22bModHeseB7Knb7mssB6sYDbxKuErmvphqgYpRsatelNYcHO/vpp62/j1LLshQ0PVIpe7UevPqdPeexY2nQ+6TBYNZ8zkdhGaFlhV61wujMjINchpNkYRe6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkcdEa2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkcdEa2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A621FC4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759392593;
	bh=kwwWd4F6jD9JGoT0LL1Pq84K0cFCHKG9K8bTDzFYV3o=;
	h=To:Subject:From:Date:From;
	b=AkcdEa2MeeQxHmpCWjoN7LALjOhEuquGaAsozKJoDEjPVc6EqNSLTaus/Y/ZYq7UE
	 0kgi2FhAGTzQoZhs1eeXh/uCmuY5ehAOOtf8DbJWSaAHhnefdIo9qgi5jlpTRqItLv
	 YsadkPWOTN+b0AyLgjM7IV+9nFAgIemeNqBfuLHWiKGlVyn/rzuzxzDyQBAPcKqGgb
	 AoYiBailnndpnr47Gj06C4N5urHEn4H2ygXE+tJK0k3XFHFVF8EwfsHio4PzdPbo/6
	 CKjoxb+Wm782s0zvv77kjv7XER7pUaX+GuZyGqgpPwLT4XGKV2Q1XnzQEGdPOo5hwS
	 N1zxBHFIT6Avg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9433ECAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175939259358.9923.10279713351311444757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ae7eeb488dd10baa47b8ad7063c7bb7077b3ca3167a621bb9edd19e3131c7f
Date: Thu, 02 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759392593
