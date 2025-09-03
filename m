Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213A94F5E0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756933194; cv=none; b=UM56Cn51oEmsSoqY9D66J1jxoPWSZ3ZikioqBWcvxDTrjWr19DFrFQ5luEw870Yl1zXUnTllbmi5GpkScjZ2+xasUXcCvjUCo4Dc2PaDdVis70X/zP8ktNKOtY4m2IQm45y7YLU2iNIGOUe9F7Ch8QcB5RDeISelBNExqhqdaJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756933194; c=relaxed/simple;
	bh=DjslK5mjsgP6HBp9RsNn0akByfd5VXDx9CEg/gPMPFo=;
	h=To:Subject:From:Message-Id:Date; b=ZVzVImPK6H5Ad0duEJd/TED+7SdgZloR7SrtNfc85lHKHRk7pNRYULXoiZshSi+WyQv0gvU0idbyqJqj+EUzTpjQglCldzR8dIHayb4cLc5CyLtmcwk/ardRJptCiBUrSZ43Zw0cxBDM2TRSIGclJpMDojCjmaRhCo7bKzQA8Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTnajjfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTnajjfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACBEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756933193;
	bh=DjslK5mjsgP6HBp9RsNn0akByfd5VXDx9CEg/gPMPFo=;
	h=To:Subject:From:Date:From;
	b=hTnajjfVVS26HdkKFcHI0l2HoXdNf/dutmzCLrTFkV2oP609ewoWE23CeDAG3NeZ3
	 nBaNOfLOj2RIty7PliOne7uhlBY2HBmIv+4Ki8iUqpk4MN/lgNA1GEm8zuzovw4En7
	 T7YhAnt0PpwTaO4URhMgxfzmvonRRw9mc6XeB8fdcMP6h+JOQap9GVm5nPsXrRMt+S
	 jyc/3qmuEW+iiY6BcI0q/LyDkO1PdkBvwEZxLxNs4gmm970N3RXMn3y5yVn9mKOyvp
	 MSZGfK2bgo4ntvXp6CqrTM9JxhxS4hWjd2taiEK1RK5/Zab06DunL4wQdHQDb1ZmIS
	 k9KxlP67S6SEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9384FCA1010
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693319359.28138.13225219108870207704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b39d38ab04d39a10ba22137677e9766e5670c744d756cd1acc43c4c2375df3
Date: Wed, 03 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756933193
