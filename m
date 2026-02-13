Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D5C29D26B
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771017894; cv=none; b=ohqopV8wI0u4cBpR6haueis14I9o34P+pAaYTLGFftH1bYXembNcogSBNQuOoKW35/sjEy1JtFhPj10ol6ZzGmcKBksBBhno4Qp965pZYq0PBkWtp51aDfiVZBXOcB2ajKpu5bHs0CAmTQ0nvAqylQl4zgEQDJQUntHnopLOeH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771017894; c=relaxed/simple;
	bh=VBsHuwVGTDVcK1Lm9yI2lzxgwPrYPfMnsxCii+JpdBk=;
	h=To:Subject:From:Message-Id:Date; b=QmlxbewiSZ/blNY1ifsdSfyXSA16NT94m6TIFDogW5NjuIGCqg4JClHJNowe83vhupokMRoeV66M9q7QjGhgr/5WbHbrqS7c4DPSy9AsAUuslXYcyTUaZ5lUyHzC66D17EkHpvd4Fg7XqHrcvWCc63uYvDPQZPDCldVNsT+tLXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGWfgpBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGWfgpBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15C3C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771017893;
	bh=VBsHuwVGTDVcK1Lm9yI2lzxgwPrYPfMnsxCii+JpdBk=;
	h=To:Subject:From:Date:From;
	b=bGWfgpBx6/LEwFU6G5WcbyiVTSGM+Y3ShKHjRzra6l++acD/1lLf3N+5vgDvMRLyH
	 P04IYEfWjg6h8uRHhOFWpUjr3B6DrwOtEZbSbaavYIJjBouW1PDzX3MLti/V99ZxYg
	 iTQCobrozQbLk71wjBxqWBrm3xKDfUM+Ghgc5Rz5/+eOrxe280gPM81xyUsWFneXUC
	 2lZQPjBfRVVRF9K55xsJIMEF72Mm3KUT4iMEumeJqKazPtewL5iI58nNFLiKQ/DlPh
	 8Ot/GWY4NC8gveVJBcLYiqlyxZWqQ2oJ8a8dkWQBVORRU0lpLGjhMR3o9GAAgsiJiA
	 8JbopA8pQeqWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D3AEF99DE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101789359.10318.12555257290344415802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7056147be4626643b045173f617b6d1bfddb57fe9de3b3ab9b0fc1afc7c2f29
Date: Fri, 13 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771017893
