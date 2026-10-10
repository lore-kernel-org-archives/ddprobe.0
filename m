Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45ED534B1A6
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791634834; cv=none; b=rZc0KcVwYLxpU/IqFpjuHiLEMPRvAjxQyVp0azCvXChD8G60gaxewuKfdCA7WI6amBwx0ENjj6zEeBllmRGZABNyZss+OfuNmsfWUQsrH6ZbTS3HVOAFfrYGssAuz/Xa76Y4wLoR4LN67zj2clW7YFASf6IPfPGUr2Eg/h5DfGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791634834; c=relaxed/simple;
	bh=0d1oA6QXuUG6YgGy93T9U9cNvftsQP6sEMkIFNDno9M=;
	h=To:Subject:From:Message-Id:Date; b=UEsoL3u/seXfqGU3P2ejcdeQOjQHpiwsEGPE/+W6xjkUCsdhU3bMDG+IZO6ajfypild9RNnAG9IYufrDl5bCvL4s5L23zyvpaSGNYO4GvfHAewtQ7AzByD5J1jBTuJlVOabshoytAGZoLz1+2ET0/k+MOOf8sm1fnx7I9RFQ248=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKkEW7LS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKkEW7LS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BADE7C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791634833;
	bh=0d1oA6QXuUG6YgGy93T9U9cNvftsQP6sEMkIFNDno9M=;
	h=To:Subject:From:Date:From;
	b=KKkEW7LS337YwZbyUV+AopTINx0yd107VHSrv2VChOdxB/Z6I3xWXkrtBpR8xCc3z
	 GS+tBXS4e8OzUN5/4FxJBOXaAikeEEC6JkA1fOGLMizDBuzHZ6XHHYV3le3aq1Tcex
	 tr1NHkCE04iEaSZ+X+pbLixEJ0vDO0ROK7L/sxrAH9yMFIlVS2UFVF5qpYcz0koFr6
	 95so1vYhg1YmSNTFfq5WFymjKg+2i+M83rUZ5GC8IiW9cT3aHOehefqRPHgHD2btcZ
	 fS4wHbmEsk7OLpKrEDvdSFSSx4EepspwtqWhtdedTQ8XaRT9kbQw04t+7L6oPfg1Fc
	 k9PARsreb3RJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B85CA6004
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163483368.12084.16417192874378437828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ef9ea54df3c7b5ffffc8880c2d26c20405a4750e14d093b60fb9e8df761ec7
Date: Sat, 10 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791634833
