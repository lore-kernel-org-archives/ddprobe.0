Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E814235055
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758471594; cv=none; b=Q6jkvwB/zgX9KLpMoMllfOsBPJL/pLPpUKauH60ENDblUO/uwZTlB7GiaLeRA15VTLocQs5dLhPie8cwWDBw5e/6DuFhJG8Aowiv/gMN8ytofh590Nait8U2mZs2jKNJkrjVfEhypOOEIYiv+DenXk/Jb3sgShGTDFrOcszhCLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758471594; c=relaxed/simple;
	bh=TaWZ3sb64G2UtgmLMqTPAUDvrMwYyFOtbSr8p9WSbC0=;
	h=To:Subject:From:Message-Id:Date; b=hIpNB3iMet2NvNyYSWM71zAF6SwZrdhCVfgrn9XX0QPADD76ft43nUufRyTvHzgwBsNpJc6eIMclqlJZCpn7tqMDsoUG0SxfErqfmNnb99HixXvY7eJ6oChCpEeLsyap8Dx+z8wrj8LJIbbMQYA95GwHQduKouEGTl/FZpU3Ex0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5wGIVXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5wGIVXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D470C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758471593;
	bh=TaWZ3sb64G2UtgmLMqTPAUDvrMwYyFOtbSr8p9WSbC0=;
	h=To:Subject:From:Date:From;
	b=Z5wGIVXgQTRSOl1frq7XdBggo6wSmeLhqcvcXK3t/ymJfcQ46NaHZkNxsoLyrhMvr
	 Jy1WYkZa5maCcBHsPy8vuZby5T3rnmf4gU89nQZi4lLSoZjw/r05n6HalJRfgpBP2b
	 NN2xuwOdjP+scX+7WZWEp5pV8B5zDSwR45MxJ6ydz5GMdpyOfMlKdc0fHwbK2dfTb2
	 ZmttzI6qH2SJKe8+89Lf6KpqIfUcFFmC665MUJH4SeRex29S7/SAyxKmLdKtW3Q5rS
	 XRLwiQPlhet7FLQTNc3xnIVzA8o+URyg6Nl+k2SZxsL7T5PfnDw4r+26QhenPknJdU
	 89sBuf/iV6CZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB2ECAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847159357.15517.16625502494642334631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f6e7f0066c2d29ef57a29f1e2797e043d13ba2a4e6eb20650fc9af1b6ab7c1
Date: Sun, 21 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758471593
