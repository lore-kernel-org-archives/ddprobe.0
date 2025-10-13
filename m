Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B6CAD2C
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760314194; cv=none; b=SFyOjlZXO64y9j5zOdb484v8ru8QAHO7Cojdt+K/M1ARjlsmXnpjDA2GkjNNZKlLxydP5EEVOsbwx2JuiZv3Ej2CCEDPwcn/08fFSy9e4rg3uYHNOtjXpT3UXsXxP8O5R2gjQdDlqTGmsEvhXMlgPucDofjlOdGGzRJTedt65DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760314194; c=relaxed/simple;
	bh=kX7AR/XKW9as/Qz95efoir1xu7IBhdkX96/8HPqdhZ0=;
	h=To:Subject:From:Message-Id:Date; b=sGf678bwycJb22o3//QIvvGvmbUyElNbF0asdX87vOMhSVtj+HTJKuPO2Io17atlN/1MUOxC2mqv8RUOPI7S0GRvuyc/pLuaextnhjNn3xTmgfR1Z8yjrw1/yGjJ/7olIo+Kou2r8cFjP8ZhezNFHxHTk5l67H6xmikxmpCO5Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbqtxIOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbqtxIOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C04C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760314193;
	bh=kX7AR/XKW9as/Qz95efoir1xu7IBhdkX96/8HPqdhZ0=;
	h=To:Subject:From:Date:From;
	b=CbqtxIOsTMU2LXsVW9shgiJAmx+M1sepxlDzmO9UVCHCkgd4XXBbJnkCPg5WWjeCY
	 WKfdv6hbwri4gT5tc43br6TMDos0GUAkfsehy4eFenylfYg6DdZvGp+JVInKRvqEiW
	 FoHF8Ii6sCdgu/nTGlSGwIwvGvSz+2e1zXh6Mk8SgICR2v7OMLBLVEif5Ismb5YFB7
	 rEyM4Oz3MnBH3qBQzermQqQBO7DawlBcq5I6HcNW1W6MLGxbI+U94woCrmxKMZLwH7
	 VfQcl69ayQIW9w1fZ8zSe41C6rGTG+Ly6HxhHVdTHWpEKbIjYPfgSae5hevwR1XPCd
	 v+pPqNklzgl/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9020FCCD184
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176031419358.14465.2597752732137833170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b2ff83df5063d75632731bd84d79fa62b76f820549525e9fdde41a32b29b33e
Date: Mon, 13 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760314193
