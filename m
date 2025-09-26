Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F00246799
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758863994; cv=none; b=n670RJJfEawtYZiwF+AxrUM2GADFT0gxU5vhlckiob+e2kXB86zvxAvC1p3Ve59lCTudZy3Ud9UMNZI84sIJ+4Zxqn+R50U+uoqZ0ZLzVe2o39iqj7XGg5d3rLJxI5fjEo6sRuouQhtAFgobW5aPDCSHWUwsTLCYfm0qAtQP9Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758863994; c=relaxed/simple;
	bh=ljxrpURNYAy6Idp0hRJslhEHHx2qq6rpWPubvTUzkxA=;
	h=To:Subject:From:Message-Id:Date; b=Vh4pzw3e14QQPeQ0xtgUhUGROu1o0ngGSFPMs2kHKUIFPLOiVP502oH8aTl0VijWpqLcoQwK8XI2GL+4EROSRG3d94YJPId43AYNvB4H34/UX9FyokqL+gWPopF298gKsoFGHtGCpM6vmXGSlrJi+nJqZXbSaMKo2EDl8tr/JbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAwMV8cC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAwMV8cC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF762C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758863993;
	bh=ljxrpURNYAy6Idp0hRJslhEHHx2qq6rpWPubvTUzkxA=;
	h=To:Subject:From:Date:From;
	b=YAwMV8cCavANkaWhN1P7aKTB/dD7aIszP+nrwWaK+q0r8WRq0UIzgiFhS0gnZeNe9
	 hmw63AsarNeiaQ4c8pCSfZDjOMQcT1IhZjAgvkfRqPQ4Mmna5vIYG9lUY0j6CGDXs1
	 puSKdyBDtZ1XHriOOwehuu1ylP4pH/DbhdJJ5LDA1bHX8T4d9zKBxMBWMCONop3m+v
	 202DGZz9APl42DhD0JEHs2P94b+cN+MYs+gxKBVLEPSHQjKkvm2O6+77Kc8yZ1VUJe
	 YaToz6oZ9TvtW3FPqWmdEAsk+FtCIzCWrl1AnYBgmylsEBMuIEuUWKJKzsMQoDhbyT
	 SEPJOT1Tciz6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D806CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886399363.17517.3663474979406312318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 170717935bee7811ac0e20240ccdf6ade89aad2643df086a146d23a841418609
Date: Fri, 26 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758863993
