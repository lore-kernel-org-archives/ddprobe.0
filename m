Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED164369A
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770183234; cv=none; b=dxHXiiAyjC8xQwUeNj9tDYeLgL6wLxXYmt+gR7K370TPwFCah4ZhTw5RqI5rjnI1Ap/ld8XkcBEawO9JbPRpSH+p+BzzEw+69HDGtWLTPuUlMJs1xri+O+hmqcyabEgD3HbNCBht/MceHojOw1RAy3yXHsB8yZ8Vcip7VC7TLyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770183234; c=relaxed/simple;
	bh=qyqBJRfjMUeow0VbpUtvPUZDNA038zIlDCAxFhELe6Q=;
	h=To:Subject:From:Message-Id:Date; b=Vnmj9thlyfAhYXZlHyg18Y0qAukx3yR95ihXPB1vNaWvUzBi89YhXziCd5Zqysj0aghKzzXGW+6+kWCVwK14MUeHosjXHJsje6VUGrTJP+oCe7237FpSZxpWMYz3Vkx/DbLidNs6ET6CFyb6ZhFENXGp+n3NBXd6tBC8lNg760I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISJBgZXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISJBgZXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C13C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770183233;
	bh=qyqBJRfjMUeow0VbpUtvPUZDNA038zIlDCAxFhELe6Q=;
	h=To:Subject:From:Date:From;
	b=ISJBgZXt6OIbiaTdp1n5+FEqUMazXp+gymq3EDavB3L/hJ4ZhrzBweLnqsTCp8ira
	 1iNuFpFeinXY3aj1tq5XBflDctS8Hh9PzTOTf6JrvUflQKGpG3TbdTplIsvEMDnt1l
	 ndgb0IlAnLAnvbfLioz1NC1fiKW1PXpqesYDIIlDxMajLY9p+f+2wwbeSfiZTyx90U
	 bm1vRPH8eD5NUlLrYEndm2p9OawGtNKN93WB5UTqrQKVAmn6vxBdSQeKSCXe0iSUBL
	 UQ/TUb48Vb9KEDFHcJ5iDBpOwG5xNTo1xST58DjBnt22gbc9k/9DhOXptq3/VoDdrQ
	 3tql9TxhembJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AA5E8B39A
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018323358.564.7686688341857599828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6deec453aa1e90e82030bda33cc7157442a32aca520e15c02eb52ea83ee45974
Date: Wed, 04 Feb 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770183233
