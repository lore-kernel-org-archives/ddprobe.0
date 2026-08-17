Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D853ED10F
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787006434; cv=none; b=mAKjThgOa9MgYbFpdvNFFbbuSlaBowxSBSbSZgGP3VzcsKMJRxbjJAd6ixE9mFDdt0mFX8OwMlr6sRxxrQR/MGQYie80JVJ2l9VukrDeSI4A+sUigkryl3HcPTFhmg4rRET6sBLQSiyXePxv2iqrlEU8GwVo3TPyaASH/GFYGU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787006434; c=relaxed/simple;
	bh=G2SAOZnAtm8LVWHJCW1aiG/hg2N4EUuZDUx+22NzPcQ=;
	h=To:Subject:From:Message-Id:Date; b=orq05oSKFF4UtyMyC+vd57eQyG8DkBGoTI/9BPcafJrdTra8SDPlOrOmp2ToKDj4DIAuenyflklbHk1/bcgpfzbTJhtYTZIp40AnjtGXAc2/wmU0RhebEtiidT87JkftDhlPzarh4UjUUyhl5+BAGj6PhQqZXH7brDtXaQglhSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1XPa6Wy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1XPa6Wy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE4AC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787006433;
	bh=G2SAOZnAtm8LVWHJCW1aiG/hg2N4EUuZDUx+22NzPcQ=;
	h=To:Subject:From:Date:From;
	b=l1XPa6WyYbsvpy8DtycDNLtvAI8GkvTXQKs5Xepslwabu3Q1EYIwpNyMmHt1gFe4T
	 HZaQtVK4wsD+96OSFl3h87yJoBWUBAOIJOPMe7Hql8GIW6rSepIXvuO0ak3AfTwTbw
	 qCQuIZHsAEL67Gx0/DiawzNd3pkh1u363KAJ26J3GY+teWq0T53wYQQCillwXssdxa
	 oQ7M+Ns794A5FlI9syDjy69xNZhRdzIR5IEGqtk4fmDtt/KwdCBqQUsGUjyLH87iyo
	 oQQtYcUcfZWlhSPNHj/VDgGS9ykBDe5ndeCRT87mQjVycDJ/IpMg56k8j9GJFMSwvd
	 dSxMU3YhAQEdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A2DC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178700643374.21740.8395340427794379455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df9aea21107f9866e6589a7bd28864bf8f6b4b752519567ceb5822586a7f81d
Date: Mon, 17 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787006433
