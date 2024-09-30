Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B6740862
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727683554; cv=none; b=l88YFltq/MDg2ecionY58/2tNF70ss3KimkqXQ+F4nLOvlLKOLHCIsWRiBpm/4EfNMUEfwb9RGhw/WqVtIWex8E043D4rxtP3EmeFIRixuDHeB4qa8/bWPPUqIifKMwuBO0DYw8mS37bJYOOnyN8flxNSDDkOUIGvfrW8J2gPHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727683554; c=relaxed/simple;
	bh=mGcL7o0SwnYqTiWeymkF2CUjXwKW8gkaKB4TG4lMP0Q=;
	h=To:Subject:From:Message-Id:Date; b=qwGLDYxS7astI8WZIkeWf/XV2QGS4ZrOFztXjRrmwrujJISMZRr1CKiDxSMEbtptznoWol3quBLMDWcI7USvu30O8SfVPJ++5rJKu2QJuIFz9fxfDgati1HQjm9t8W7BwX2WFc3BAQhEQrSHyBYmCJBcH8F8PFSgAtDNg7D4Yic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaH0Y8Ra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaH0Y8Ra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C1CC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727683553;
	bh=mGcL7o0SwnYqTiWeymkF2CUjXwKW8gkaKB4TG4lMP0Q=;
	h=To:Subject:From:Date:From;
	b=MaH0Y8Raf+EL5xws3kokg7jTZW+OeJCQEm76G/09M+ClIiy0u49bvCxtDzp5fe3Z5
	 rrzuP6n+e6onm3/HzBSXwq+4GqikWPX7hS56mo8d8iYYHRKffj3H7eyFI1GdGIoZSV
	 Nzsen2PNvmATvMhmQH/VWn0WSW9rCQgqGa8poecXWWz48/t2SgtEnfMm4xspc+cf4D
	 3lCWHe3ViRnCStBn1t5yt5A4r1wxdrTX6V3t3yjJUAwA5h8GWhYd9aXmVAjMMyRd5I
	 UtO8nA4nWUYsftZlZMsEzO+OhURYcYjKFL1v0/FFTRa5QrjhcXjDrKHjPh97ZNVk2q
	 mGrb/vCbqk8hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EF9CF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172768355358.30896.12287682851221889310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed6d24129076a7935f5670f820aa1958f7ca0611a6987bb04fa83bccc011efad
Date: Mon, 30 Sep 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727683553
